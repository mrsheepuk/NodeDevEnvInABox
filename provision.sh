#!/usr/bin/env bash

# Add ansible repository
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y git ansible

if [ $? -ne 0 ]; then
  echo "Failed to install ansible, halting provision."
  exit 1
fi

sudo ansible-playbook -i /vagrant/ansible/devservers /vagrant/ansible/devserver.yml

if [ $? -ne 0 ]; then
  echo "Ansible play failed, halting provision."
  exit 1
fi
