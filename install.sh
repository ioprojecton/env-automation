#!/bin/bash -e
if [ "$(whoami)" != "root" ]; then
    echo "Must run as root"

    exit 1
fi

OS=$(cat /etc/os-release | grep ID_LIKE | cut -d '=' -f 2)

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

ansible-playbook ansible/main.yml "$@"