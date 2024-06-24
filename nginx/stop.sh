#!/usr/bin/env bash

pushd "$(dirname "$0")/../.scripts" > /dev/null || exit 255; source all.sh ; print_script_header "$0" "$@" ; popd > /dev/null || exit 255
pushd "$(dirname "$0")" > /dev/null || exit 255

docker-compose down

rc="$?"
popd || exit 255
exit ${rc}