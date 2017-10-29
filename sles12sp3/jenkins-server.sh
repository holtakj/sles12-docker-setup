#!/usr/bin/env bash

. ../common/enforce_root.sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/docker-host.sh &&

ansible-playbook $DIR/../common/ansible/jenkins_server.yaml &&

/usr/local/bin/docker-compose -f $DIR/../common/docker-compose/jenkins/docker-compose.yaml up &&
