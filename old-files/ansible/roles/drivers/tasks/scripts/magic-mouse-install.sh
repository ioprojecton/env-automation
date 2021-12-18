#!/usr/bin/env bash
REPO_PATH="/tmp/Linux-Magic-Trackpad-2-Driver"

git clone https://github.com/rohitpid/Linux-Magic-Trackpad-2-Driver.git "$REPO_PATH"

chmod u+x "${REPO_PATH}/scripts/install.sh"
sudo "${REPO_PATH}/scripts/install.sh"
# cd Linux-Magic-Trackpad-2-Driver/scripts
# chmod u+x install.sh
# sudo ./install.sh