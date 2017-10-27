#!/usr/bin/env bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "This script must be run as root. Exiting..."
    exit 1
fi
