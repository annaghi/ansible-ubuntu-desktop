#!/usr/bin/env bash

# Install Ansible PPA.
apt update && apt upgrade --yes
apt install --yes curl git software-properties-common python3-pip

# Install Ansible.
pip3 install ansible ansible-lint
