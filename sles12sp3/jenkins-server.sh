#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/docker-host.sh

docker-compose -f $DIR/../common/docker-compose/jenkins/docker-compose.yaml
