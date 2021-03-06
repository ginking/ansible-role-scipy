#!/bin/sh

# install pip
apt-get -qq update
apt-get -y install python-dev python-pip

cd /vagrant
python --version

# taken from .travis.yml
pwd
/usr/local/bin/pip install ansible
ansible-galaxy install stevetjoa.python-common --roles-path=.
ansible-playbook -i hosts --connection=local test.yml
python print_version.py
