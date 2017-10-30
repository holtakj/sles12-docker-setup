#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. $DIR/../common/enforce_root.sh

zypper addrepo -fc http://download.opensuse.org/repositories/Virtualization:/containers/SLE_12_SP3/Virtualization:containers.repo &&
echo "Please answer with 'a' to trust all repos..." &&
sleep 3

zypper refresh &&

ansible-playbook $DIR/../common/ansible/install_docker.yaml
