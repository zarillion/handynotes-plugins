#!/bin/bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

unset VERBOSE

# Special column limit to use for localization files
export LOCALE_COLUMN_LIMIT=1000

# Place ~/.luarocks/bin in the $PATH in case the luarocks installation is local
export PATH="$HOME/.luarocks/bin:$PATH"

function usage() {
    echo "usage: ${0##*/} [-h/--help] [-v/--verbose] [command]"
}

function print_help() {
    usage
    cat <<EOF
Lint, test, and format all Lua files in the repository.

Optional parameters:
  -v, --verbose         Pass verbose options to underlying commands.
  -h, --help            Print this help.

Sub-commands:
  release PLUGIN        Tag HEAD as a new release for the given expansion.
  run-linter            Run the \`luacheck\` program on all sources.
  run-tests             Run all unit tests defined in the tests/ dir.
  run-formatter         Run the \`lua-format\` program on all sources.
  check-formatter       Run \`lua-format --check\` on all sources.

If no sub-command is given, a full suite of linting, tests and format
checking is executed on the project.

EOF
}

function _lua_files () {
    local type=${1:-all}
    local files=($(find core/ plugins/ tests/test_* -name *.lua))
    if [[ $type == 'locale' ]]; then
        printf '%s\n' "${files[@]}" | grep localization
    elif [[ $type == 'code' ]]; then
        printf '%s\n' "${files[@]}" | grep -v localization
    else
        printf '%s\n' "${files[@]}"
    fi
}

function release () {
    if [[ -z ${1:-} ]]; then
        echo "Plugin directory required (i.e. plugins/09_Shadowlands)"
        exit 1
    fi

    local plugin=$(basename ${1:-})

    if [[ ! -d plugins/${plugin} ]]; then
        echo "Plugin not found: ${plugin}"
        exit 1
    fi

    local toc=$(find plugins/${plugin} -name *.toc)
    local title=$(grep Title ${toc} | cut -d ' ' -f 4-)
    local version=$(grep Version ${toc} | awk '{ print $3 }')
    local tag="${plugin}-v${version}"

    git tag -a ${tag} -m "${title} release ${version}"
    git push origin refs/tags/${tag}
}

function run-linter() {
    local quiet=$(if [ -z "${VERBOSE:-}" ]; then echo -n "-q"; fi)
    luacheck core plugins tests/test_*.lua ${quiet}
}

function run-tests() {
    (cd tests && lua test_class.lua ${VERBOSE:-})
    (cd tests && lua test_locales.lua ${VERBOSE:-})
}

function run-formatter() {
    lua-format $(_lua_files code) ${VERBOSE:-} --in-place
    lua-format $(_lua_files locale) ${VERBOSE:-} --in-place --column-limit=${LOCALE_COLUMN_LIMIT}
}

function check-formatter() {
    declare -a code=($(_lua_files code))
    declare -a locales=($(_lua_files locale))
    declare -a files=(${code[@]} ${locales[@]})
    declare -a errors=()

    set +o errexit
    if [[ -n ${VERBOSE:-} ]]; then
        errors=($(lua-format ${code[@]} --verbose --check))
        errors+=($(lua-format ${locales[@]} --verbose --check --column-limit=${LOCALE_COLUMN_LIMIT}))
    else
        # mimic the dotted unit-test output
        declare -i count=0
        for file in ${files[@]}; do
            local column_limit=$(if [[ $file =~ .*localization.* ]]; then echo -n "--column-limit=${LOCALE_COLUMN_LIMIT}"; fi)
            lua-format "$file" --check $column_limit > /dev/null
            lua_format_exit=$?
            if [ $lua_format_exit == 0 ]; then
                echo -n "."
            else
                echo -n "f"
                errors+=($file)
            fi
            count=$(( count + 1 ))
            if [ $(( count % 60 )) == 0 ]; then echo; fi
        done
        echo
    fi
    set -o errexit

    if [[ ${#errors[@]} == 0 ]]; then
        echo -e "\nChecked ${#files[@]} files, no formatting issues found.\n"
    else
        echo -e "\nChecked ${#files[@]} files, ${#errors[@]} formatting issues found:"
        for file in ${errors[@]}; do
            echo -e "  \033[1;31m$file\033[0m"
        done
        echo
        exit 1
    fi
}

function main() {
    echo -e "\n[\033[1;34mluacheck\033[0m] :: Running linter ...\n"
    run-linter
    echo -e "\n[\033[1;34mluaunit\033[0m] :: Running unit tests ...\n"
    run-tests
    echo -e "\n[\033[1;34mlua-format\033[0m] :: Running formatter ...\n"
    check-formatter
}

while [[ "${1:-}" = -* ]]
do
    case "$1" in
        -v|--verbose) VERBOSE=-v;;
        -h|--help) print_help; exit 0;;
        --) shift; break;;
        -*) usage; echo "Invalid option: $1"; exit 1;;
        *) break;;
    esac
    shift
done

if [[ $# -gt 0 ]]; then
    command="${1}"
    shift 1
    if [[ "$(type -t "${command}" 2>/dev/null)" == "function" ]]; then
        "${command}" $@
    else
        usage
        echo "Unknown command: ${command} $@"
    fi
else
    main
fi
