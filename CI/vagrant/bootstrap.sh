#!/usr/bin/env bash

apt-get update

# install python (https://gist.github.com/jbergantine/8742830)
apt-get install python-dev python-pip -q -y

# install latest stable ansible
pip install ansible

if [ -e "absolute-test" ]; then
    cd absolute-test/
    git pull
else
    git clone https://github.com/benlush/absolute-test.git
    cd absolute-test/
fi

ansible-playbook CI/playbooks/setup.yml --tags "install,configure"
