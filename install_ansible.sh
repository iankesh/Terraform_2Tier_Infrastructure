#!/bin/sh
sudo apt-get -y update
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get install -y ansible
ansible --version
