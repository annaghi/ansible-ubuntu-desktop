#!/usr/bin/env bash

# Install Ansible PPA.
apt --yes update && apt-get --yes upgrade
apt --yes install curl git software-properties-common
add-apt-repository ppa:ansible/ansible

# Install Ansible.
apt --yes update
apt --yes install ansible ansible-lint python3-pip
