#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/common/enforce_root.sh

ACTDIR=`pwd`

echo "Updating..."
cd $DIR
git pull
cd $ACTDIR