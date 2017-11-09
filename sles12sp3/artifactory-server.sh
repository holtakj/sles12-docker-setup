#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. $DIR/../common/enforce_root.sh

ansible-playbook -v $DIR/../common/ansible/artifactory_server.yaml &&

/usr/local/bin/docker-compose -f $DIR/../common/docker-compose/artifactory/docker-compose.yaml up