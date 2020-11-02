#!/bin/bash

set -e

luacheck core plugins tests/test_*.lua -q
(cd tests && lua test_class.lua)
(cd tests && lua test_locales.lua)