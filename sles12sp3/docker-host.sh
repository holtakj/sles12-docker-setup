#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ansible-playbook $DIR/ansible/docker-host.yaml
