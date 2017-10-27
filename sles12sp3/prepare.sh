#!/usr/bin/env bash

. ../common/enforce_root.sh

echo "Preparing environment for SLES12 SP3 Docker machine..."

echo "Adding repositories..."

#zypper addrepo -fc http://download.opensuse.org/repositories/openSUSE:/Backports:/SLE-12/standard/openSUSE:Backports:SLE-12.repo
#zypper addrepo -fc http://download.opensuse.org/repositories/openSUSE:/Backports:/SLE-12-SP1/standard/openSUSE:Backports:SLE-12-SP1.repo
#zypper addrepo -fc http://download.opensuse.org/repositories/openSUSE:/Backports:/SLE-12-SP2/standard/openSUSE:Backports:SLE-12-SP2.repo
#zypper addrepo -fc http://download.opensuse.org/repositories/openSUSE:/Backports:/SLE-12-SP3/standard/openSUSE:Backports:SLE-12-SP3.repo
#zypper addrepo http://download.opensuse.org/repositories/devel:languages:python/SLE_12_SP3/devel:languages:python.repo

zypper addrepo -fc http://download.opensuse.org/repositories/Virtualization:/containers/openSUSE_Leap_42.1/Virtualization:containers.repo

echo "Please answer with 'a' to trust all repos..."
sleep 3

zypper refresh

echo "SUSE zypper tool sucks and thats why its going to present you with a nice conflict."
echo "Do not be scared and take first resolution possible and proceed with the install."
sleep 5

zypper install ansible

echo  -n "Installed ";
ansible-playbook --version



