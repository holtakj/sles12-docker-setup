#!/usr/bin/env bash

. ../common/enforce_root.sh

echo "Preparing environment for SLES12 SP3 Docker machine..."

echo "Adding repositories..."

zypper addrepo -fc http://download.opensuse.org/repositories/openSUSE:/Backports:/SLE-12/standard/openSUSE:Backports:SLE-12.repo
zypper addrepo -fc http://download.opensuse.org/repositories/openSUSE:/Backports:/SLE-12-SP1/standard/openSUSE:Backports:SLE-12-SP1.repo
zypper addrepo -fc http://download.opensuse.org/repositories/openSUSE:/Backports:/SLE-12-SP2/standard/openSUSE:Backports:SLE-12-SP2.repo
zypper addrepo -fc http://download.opensuse.org/repositories/openSUSE:/Backports:/SLE-12-SP3/standard/openSUSE:Backports:SLE-12-SP3.repo


echo "Please answer with 'a' to trust all repos..."
sleep 3

zypper refresh

zypper install ansible






