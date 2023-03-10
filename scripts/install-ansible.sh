#!/usr/bin/env bash

# Install Ansible PPA.
apt update && apt upgrade --yes
apt install --yes curl git software-properties-common
add-apt-repository ppa:ansible/ansible

# Install Ansible.
apt update
apt install --yes ansible ansible-lint python3-pip
