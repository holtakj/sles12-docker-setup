#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. $DIR/../common/enforce_root.sh

ansible-playbook $DIR/../common/ansible/dind.yaml

/usr/local/bin/docker-compose -f $DIR/../common/docker-compose/dind/docker-compose.yaml up