#!/usr/bin/env bash

echo "Installing GIT" &&
zypper -n install git-core &&

echo "Checking out the repository from Github ..." &&
git clone https://holtakj@github.com/holtakj/sles12-docker-setup.git sles12-docker-setup.git &&
cd sles12-docker-setup.git &&
git config user.name  "Juraj Holtak" &&
git config user.email "juraj.holtak@gmail.com" &&
cd .. &&

echo "Done."