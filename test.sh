#!/bin/sh

# install pip
apt-get -qq update
apt-get -y install python-dev python-pip

cd /vagrant
python --version

# taken from .travis.yml
pwd
pip install ansible
ansible-galaxy install stevetjoa.python-common,1.01 --roles-path=.
ansible-playbook -i hosts --connection=local test.yml
python test.py
ipython --version
