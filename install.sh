#!/bin/bash -e

function install-env-automation {
    # install node.js 
    sudo apt install nodejs
    # install the project node dependencies
    npm install
    # run the project
    npm start
}


if [ "$(whoami)" != "root" ]; then
    echo "Must run as root"

    exit 1
fi

OS=$(cat /etc/os-release | grep ID_LIKE | cut -d '=' -f 2)

case "$OS" in
   debian)
        yes | apt install ansible
        ;;
    *)
        echo "We only support debian and arch based distribution"
        exit 1
esac

install-env-automation

# Alert that the script is complete
if command -v terminal-notifier 1>/dev/null 2>&1; then
    notify-send "Local environment setup complete." "The automated installation of your system is complete." -i face-smirk
f