#!/usr/bin/env bash

pushd "$(dirname "$0")/../.scripts" > /dev/null || exit ; source all.sh ; print_script_header "$0" "$@" ; popd > /dev/null || exit

create_docker_network_and_add_to_trusted scell-nginx-network
