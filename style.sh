#!/bin/bash

set -xeuf -o pipefail

MODE=${1:-''}

for file_path in `find . -type f -name "*.hs"`; do
    if [[ ! $file_path =~ ".stack" && ! $file_path =~ "Setup.hs" ]]; then
        if [[ $MODE = 'check' ]]; then
            brittany --check-mode $file_path --config-file brittany.yaml
        else
            brittany --write-mode=inplace $file_path --config-file brittany.yaml
        fi
    fi
done
