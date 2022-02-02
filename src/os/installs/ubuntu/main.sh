#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
upgrade

./build-essentials.sh

./git.sh
curl -L https://git.io/n-install | bash
./browsers.sh
./compression_tools.sh
./image_tools.sh
./misc.sh
./misc_tools.sh
./../npm.sh
./tmux.sh
./../vim.sh

./cleanup.sh
