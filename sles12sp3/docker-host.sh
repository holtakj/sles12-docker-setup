#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ansible-playbook $DIR/../common/ansible/install_docker.yaml
