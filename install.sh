#!/usr/bin/env bash

if [[ ! -d "${PREFIX}/tmp" ]]; then
    command mkdir -p "${PREFIX}/tmp"
fi

if [[ -d "${PREFIX}/tmp/rubytask" ]]; then
    command rm -rf "${PREFIX}/tmp/rubytask"
fi

if [[ -d "${PREFIX}/opt/rubytask" ]]; then
    command rm -rf "${PREFIX}/opt/rubytask"
fi

if [[ -x "${PREFIX}/bin/rubytask" ]]; then
    command rm -f "${PREFIX}/bin/rubytask"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Rubytask' \
    "${PREFIX}/tmp/rubytask"

cd "${PREFIX}/tmp/rubytask" || exit 1
command chmod +x -R "install.sh"
command bash "install.sh"
cd