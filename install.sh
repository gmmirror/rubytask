#!/usr/bin/env bash

[[ -d "${PREFIX}/tmp/rubytask" ]] && {
    command rm -rf "${PREFIX}/tmp/rubytask"
}

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Rubytask' \
    "${PREFIX}/tmp/rubytask"

cd "${PREFIX}/tmp/rubytask" || exit 1
command chmod +x -R "install.sh"
command bash "install.sh"
cd

exit 0