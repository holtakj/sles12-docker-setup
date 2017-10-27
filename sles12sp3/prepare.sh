#!/usr/bin/env bash

. ../common/enforce_root.sh

echo "Preparing environment for SLES12 SP3 Docker machine..."

echo "Adding repositories..."
echo "Answer with 'a' to trust the repos"
zypper addrepo -fc http://download.opensuse.org/repositories/openSUSE:/Backports:/SLE-12/standard/openSUSE:Backports:SLE-12.repo
zypper addrepo -fc http://download.opensuse.org/repositories/openSUSE:/Backports:/SLE-12-SP1/standard/openSUSE:Backports:SLE-12-SP1.repo
zypper addrepo -fc http://download.opensuse.org/repositories/openSUSE:/Backports:/SLE-12-SP2/standard/openSUSE:Backports:SLE-12-SP2.repo
zypper addrepo -fc http://download.opensuse.org/repositories/openSUSE:/Backports:/SLE-12-SP3/standard/openSUSE:Backports:SLE-12-SP3.repo
zypper refresh



