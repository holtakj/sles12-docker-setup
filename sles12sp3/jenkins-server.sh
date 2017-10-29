#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

DIR/docker-host.sh
ansible-playbook -v $DIR/ansible/docker-host.yaml