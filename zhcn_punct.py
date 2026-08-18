#!/usr/bin/env python3
"""zhCN 半角标点检查/修复工具 (handynotes-plugins)

扫描所有 zhCN.lua,报告/修复:
  1. 中文语境相邻的半角标点 ( ) , : !  ->  全角 （） ， ： ！
  2. 全角标点后/前跟空格  ->  删空格

规则:
  - 数字/枚举语境 (7,000 / 17:30) 天然不命中:正则只查 CJK 相邻
  - 只处理 zhCN,zhTW 不动
  - 读写保持 CRLF 和 UTF-8 无 BOM (CI check-formatter 不接受 BOM)

用法:
  python zhcn_punct.py scan    # 只报告
  python zhcn_punct.py fix     # 自动修复

注意:全角标点用 \\uXXXX 转义构造 —— 直接写全角字符会被编辑器
(Write/NFKC 规范化)静默转成半角,替换变成 no-op。
"""

import io
import re
import sys
import glob

FW = {'(': '（', ')': '）', ',': '，', ':': '：', '!': '！'}
CJK = '[一-鿿]'
# 半角标点相邻 CJK;`(?<![a-z_])` 排除 {key:中文} token 内的冒号(语法,必须保留)
HALF = CJK + r'[(,:\x21]|(?<![a-z_])[(,:\x21]' + CJK
# 全角标点+空格 模式
SPACE_AFTER = ['（ ', ' ）', ' （', '） ', '： ', '， ', '！ ']

def files():
    return sorted(glob.glob('plugins/*/localization/zhCN.lua') +
                  glob.glob('core/localization/zhCN.lua'))

def scan(text):
    """返回 [(行号, 类型, 片段), ...]"""
    issues = []
    for i, ln in enumerate(text.splitlines(), 1):
        for m in re.finditer(HALF, ln):
            issues.append((i, 'halfwidth', m.group(0)))
        for pat in SPACE_AFTER:
            if pat in ln:
                issues.append((i, 'space', pat))
    return issues

def fix(text):
    """修复全角标点,返回 (新文本, 替换次数)。保持 CRLF 由调用方 newline='' 保证。"""
    n = 0
    def sub(m):
        nonlocal n
        n += 1
        return FW[m.group(0)]
    text = re.sub(HALF, sub, text)
    for pat in SPACE_AFTER:
        n += text.count(pat)
        text = text.replace(pat, pat.strip())
    return text, n

def main():
    mode = sys.argv[1] if len(sys.argv) > 1 else 'scan'
    total = 0
    for rel in files():
        with io.open(rel, 'r', encoding='utf-8', newline='') as f:
            text = f.read()
        issues = scan(text)
        if issues:
            print('%s: %d issues' % (rel, len(issues)))
            for line, typ, frag in issues[:10]:
                print('  L%d [%s] %r' % (line, typ, frag))
        if mode == 'fix' and issues:
            new, n = fix(text)
            with io.open(rel, 'w', encoding='utf-8', newline='') as f:
                f.write(new)
            print('  fixed %d replacements' % n)
            total += n
    print('done (fixes: %d)' % total)

if __name__ == '__main__':
    main()
