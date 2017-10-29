#!/usr/bin/env bash

. ../common/enforce_root.sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ansible-playbook $DIR/../common/ansible/install_docker.yaml
