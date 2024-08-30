#!/bin/bash -e
[ $UID != 0 ] || { echo "Must run as root"; exit 1; }

OS=$(< "/etc/os-release")
OS=${OS#*ID_LIKE=}
OS=${OS%%$'\n'*}

case "$OS" in
    arch)
        yes | pacman -S ansible
        ;;
    debian)
        yes | apt install ansible
        ;;
    *)
        echo "We only support debian and arch based distribution"
        exit 1
esac

ansible-galaxy install -r ./ansible/requirements.yml
ansible-playbook ansible/main.yml "$@"

# Alert that the script is complete
if command -v terminal-notifier &>/dev/null; then
    notify-send "Local environment setup complete." "The automated installation of your system is complete." -i face-smirk
fi
