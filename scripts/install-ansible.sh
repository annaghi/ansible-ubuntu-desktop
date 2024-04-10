#!/usr/bin/env bash

apt update && apt upgrade --yes
apt install --yes curl git software-properties-common python3-pip

pip3 install ansible ansible-lint
