#!/bin/bash

set -xeuf -o pipefail

# Install Haskell stack
if ! type "stack" > /dev/null; then
    curl -sSL https://get.haskellstack.org/ | sh
else
    echo 'stack already installed'
fi

# Install code formatter
stack install brittany-0.13.1.0
