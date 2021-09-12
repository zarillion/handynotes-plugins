#!/bin/bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

unset VERBOSE

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
  run-linter            Run the \`luacheck\` program on all sources.
  run-tests             Run all unit tests defined in the tests/ dir.
  run-formatter         Run the \`lua-format\` program on all sources.
  check-formatter       Run \`lua-format --check\` on all sources.

If no sub-command is given, a full suite of linting, tests and format
checking is executed on the project.

EOF
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
    for file in `find core/ plugins/ tests/test_* -name *.lua`; do
        lua-format "$file" ${VERBOSE:-} --in-place
    done
}

function check-formatter() {
    function _lua_files () {
        find core/ plugins/ tests/test_* -name *.lua
    }

    if [[ -n ${VERBOSE:-} ]]; then
        lua-format $(_lua_files) --verbose --check
    else
        # mimic the dotted unit-test output
        set +o errexit
        declare -i count=0
        for file in $(_lua_files); do
            lua-format "$file" --check > /dev/null
            lua_format_exit=$?
            if [ $lua_format_exit == 0 ]; then
                echo -n "."
            else
                echo -e "\nFormatting required: $file\n"
                exit $lua_format_exit
            fi
            count=$(( count + 1 ))
            if [ $(( count % 100 )) == 0 ]; then echo; fi
        done
        echo -e "\nChecked $count files, no formatting issues found.\n"
        set -o errexit
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
