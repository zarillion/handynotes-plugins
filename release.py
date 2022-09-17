from argparse import ArgumentParser, RawDescriptionHelpFormatter
from collections import namedtuple
from html2bbcode.parser import HTML2BBCode
from markdown import markdown
from os import path
from subprocess import run
from textwrap import dedent
from zipfile import ZipFile, ZIP_DEFLATED
import json
import os
import re
import requests
import shutil
import sys

DESCRIPTION = """
Create a HandyNotes plugin .zip file suitable for release.

Examples:

    python release.py 09_Shadowlands-v1.alpha1
    python release.py 09_Shadowlands-v1.alpha2
    python release.py 09_Shadowlands-v1.beta1
    python release.py 09_Shadowlands-v1
"""

CURSEFORGE_API = 'https://wow.curseforge.com/api'
CURSEFORGE_PROJECTS = {
    'HandyNotes_WorldOfWarcraft': 413932,
    'HandyNotes_BurningCrusade': 413928,
    'HandyNotes_WrathOfTheLichKing': 413927,
    'HandyNotes_Cataclysm': 413926,
    'HandyNotes_MistsOfPandaria': 413925,
    'HandyNotes_WarlordsOfDraenor': 413924,
    'HandyNotes_Legion': 413923,
    'HandyNotes_BattleForAzeroth': 413922,
    'HandyNotes_Shadowlands': 363739,
    'HandyNotes_Dragonflight': 605372
}

# curl -H "x-api-token: <token>" https://api.wowinterface.com/addons/list.json
WOWI_API = 'https://api.wowinterface.com/addons'
WOWI_PROJECTS = {
    'HandyNotes_BattleForAzeroth': 25829,
    'HandyNotes_Shadowlands': 25828,
    'HandyNotes_Dragonflight': 26409
}

GITHUB_API = 'https://api.github.com/repos/zarillion/handynotes-plugins'
GITHUB_UAPI = 'https://uploads.github.com/repos/zarillion/handynotes-plugins'

# -----------------------------------------------------------------------------

eprint = lambda *args: print(*args, file=sys.stderr)
Plugin = namedtuple('Plugin', ['name', 'version', 'tag', 'dir'])

def get_plugin(tag):
    name, version = tag.split('-')
    dir = path.join('plugins', name)
    if not path.exists(dir):
        eprint(f'Plugin does not exist: {dir}')
        sys.exit(1)
    return Plugin(f'HandyNotes_{name[3:]}', version, tag, dir)

def get_changelog(plugin, bbcode=False, full=False):
    with open(path.join(plugin.dir, 'CHANGELOG.md')) as f:
        if full:
            changelog = f.read()
        elif match := re.match(r'^# v\d+\s+(.+?)# v\d+', f.read(), re.M|re.S):
            changelog = match.group(1).strip() + '\n'
        else:
            changelog = 'No changelog entries for this release.\n'

    if bbcode:
        changelog = markdown(changelog) # to html
        changelog = HTML2BBCode('bbcode.ini').feed(changelog) # to bbcode

    return changelog

def get_wow_version(plugin):
    with open(path.join(plugin.dir, f'{plugin.name}.toc')) as f:
        inum = re.search(r'## Interface: (\d+)', f.read(), re.M).group(1)
        inum = f'0{inum}' if len(inum) == 5 else inum
    return '.'.join(map(str, map(int, [inum[i:i+2] for i in range(0, len(inum), 2)])))

# -----------------------------------------------------------------------------

def copy(src, dst):
    print(f'Copying {src} => {dst}')
    if not path.exists(path.dirname(dst)):
        os.mkdir(path.dirname(dst))
    worker = shutil.copytree if path.isdir(src) else shutil.copy2
    worker(src, dst)

def zip_write(zf, src, dst):
    print(f'Archiving: {src} => {dst}')
    zf.write(src, dst)
    if path.isdir(src):
        for item in sorted(os.listdir(src)):
            zip_write(zf, path.join(src, item), path.join(dst, item))

def create_release_zip(plugin):
    target_dir = path.join('release', plugin.name)
    target_zip = f'{target_dir}-{plugin.version}.zip'

    shutil.rmtree(target_dir, ignore_errors=True)
    os.makedirs(target_dir, exist_ok=True)

    copy('core', path.join(target_dir, 'core'))
    copy('libs', path.join(target_dir, 'libs'))
    copy('embeds.xml', path.join(target_dir, 'embeds.xml'))

    with open('templates.xml') as f1, open(path.join(target_dir, 'templates.xml'), 'w') as f2:
        f2.write(f1.read().format(addon=plugin.name))

    for item in os.listdir(plugin.dir):
        if item in ['images', 'CHANGELOG.md', 'README.md']: continue
        copy(path.join(plugin.dir, item), path.join(target_dir, item))

    with ZipFile(target_zip, 'w', ZIP_DEFLATED) as zf:
        zip_write(zf, target_dir, path.basename(target_dir))

    print(f'Created: {path.abspath(target_zip)}')
    return target_zip

# -----------------------------------------------------------------------------

def get_cf_version_id(plugin, token):
    wow_version = get_wow_version(plugin)
    versions = requests.get(f'{CURSEFORGE_API}/game/versions?token={token}').json()
    for version in versions:
        # gameVersionTypeID = 517 (retail), gameVersionTypeID = 67408 (classic)
        if version['gameVersionTypeID'] == 517 and version['name'] == wow_version:
            return version['id']

    raise ValueError(f'Unknown interface version: {wow_version}')

def POST(*args, **kw):
    response = requests.post(*args, **kw)
    if not response.ok:
        if 'json' in response.headers.get('Content-Type'):
            print(response.status_code, response.json())
        else:
            print(response.status_code, response.text)
        sys.exit(1)
    return response

def upload_to_curseforge(plugin, zip, token):
    print('Uploading to CurseForge ... ')
    project_id = CURSEFORGE_PROJECTS[plugin.name]
    url = f'{CURSEFORGE_API}/projects/{project_id}/upload-file'
    POST(url, headers={ 'X-Api-Token': token }, files={
        'metadata': (None, json.dumps({
            'changelog': get_changelog(plugin, full=True),
            'changelogType': 'markdown',
            'displayName': plugin.version,
            'gameVersions': [get_cf_version_id(plugin, token)],
            'releaseType': 'alpha' if 'alpha' in plugin.version else ('beta' if 'beta' in plugin.version else 'release'),
            'relations': {
                'projects': [{ 'slug': 'handynotes', 'type': 'requiredDependency' }]
            }
        })),
        'file': open(zip, 'rb')
    }) # resp.json() == {'id': \d+}

def upload_to_wowinterface(plugin, zip, token):
    print('Uploading to WoWInterface ...')
    POST(f'{WOWI_API}/update', headers={ 'x-api-token': token }, files={
        'id': (None, WOWI_PROJECTS[plugin.name]),
        'version': (None, plugin.version),
        'changelog': (None, get_changelog(plugin, bbcode=True, full=True)),
        'compatible': (None, get_wow_version(plugin)),
        'updatefile': open(zip, 'rb')
    })

def upload_as_github_release(plugin, zip, token):
    print('Uploading as GitHub release ...')
    auth = ('zarillion', token)
    headers = { 'Accept': 'application/vnd.github.v3+json' }
    resp = POST(f'{GITHUB_API}/releases', auth=auth, headers=headers, json={
        'tag_name': plugin.tag,
        'name': f'{plugin.name[11:]} {plugin.version}',
        'body': get_changelog(plugin),
        'prerelease': 'alpha' in plugin.version or 'beta' in plugin.version
    })

    with open(zip, 'rb') as f:
        url = f"{GITHUB_UAPI}/releases/{resp.json()['id']}/assets"
        headers = { 'Accept': 'application/vnd.github.v3+json', 'Content-Type': 'application/zip' }
        POST(url, auth=auth, headers=headers, data=f, params={'name': path.basename(zip)})

# -----------------------------------------------------------------------------

def current_tag():
    return run('git describe --tags HEAD', check=True, shell=True,
        capture_output=True, text=True).stdout.strip()

def release_tag(tag):
    if not re.fullmatch(r'\d\d_[a-zA-Z]+-v\d+(\.(alpha|beta)\d+)?', tag):
        raise ValueError(tag)
    return tag

def main():
    parser = ArgumentParser(description=DESCRIPTION, formatter_class=RawDescriptionHelpFormatter)
    parser.add_argument('tag', type=release_tag, help='The plugin tag to release')
    parser.add_argument('--curse-token', required=True, help='CurseForge API token')
    parser.add_argument('--wowi-token', required=True, help='WoWInterface API token')
    parser.add_argument('--github-token', required=True, help='GitHub API token')
    args = parser.parse_args()

    if args.tag != current_tag():
        eprint(f'Tag not present on HEAD: {args.tag}')
        sys.exit(1)

    plugin = get_plugin(args.tag)
    zip = create_release_zip(plugin)
    upload_to_curseforge(plugin, zip, args.curse_token)
    upload_to_wowinterface(plugin, zip, args.wowi_token)
    upload_as_github_release(plugin, zip, args.github_token)
    print(f'Released: {plugin.name}-{plugin.version}')

if __name__ == '__main__':
    main()