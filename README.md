# Ubuntu Desktop Ansible Playbook

This playbook installs and configures most of the software I use on Ubuntu.

## Installation & Configuration

### Manual steps

- Install Ubuntu from a flashdrive compliting the setup wizard (creating a local user account with a password).
- Update APT cache and upgrade the packages:

```sh
sudo apt update
sudo apt upgrade --yes
```

- Install NVIDIA drivers:

```sh
sudo ubuntu-drivers install
```

- Copy SSH keys with proper permissions:

```sh
chmod 600 <id>_rsa
chmod 600 <id>_rsa.pub
```

### Automated steps

#### Requirements

- Ansible
- clone of this repository

```sh
sudo apt --yes update && apt-get --yes upgrade
sudo apt --yes install curl git software-properties-common
sudo add-apt-repository ppa:ansible/ansible

sudo apt --yes update
sudo apt --yes install ansible python3-pip
```

Clone this repository:

```sh
git clone git@github.com:annaghi/ansible-ubuntu-desktop.git
```

#### Run Ansible playbook

Go to the root of the cloned repository, and run the command. Enter your user account password when prompted for the `BECOME` password:

```sh
ansible-playbook main.playbook.yml --ask-become-pass
ansible-playbook main.playbook.yml --ask-become-pass --tags zsh,nvm
```

Finally, reboot your system.

## Development

### Requirements

- Ansible
- Ansible Lint
- Vagrant
- VirtualBox
- clone of this repository

Install the requirements by running these commands:

```sh
sudo apt --yes update && apt-get --yes upgrade
sudo apt --yes install curl git software-properties-common
sudo add-apt-repository ppa:ansible/ansible

sudo apt --yes update
sudo apt --yes install ansible ansible-lint python3-pip
```

Clone this repository:

```sh
git clone git@github.com:annaghi/ansible-ubuntu-desktop.git
```

Now you can use Ansible in order to install Vagrant and VirtualBox by running this command in the root of this repository:

```sh
ansible-playbook dev.playbook.yml --ask-become-pass
```

### Start, provision, ssh, and destroy virtual machine

```sh
vagrant up          # Start VM, and generates .vagrant directory
vagrant provision   # Re-run playbook
vagrant ssh-config  # Print SSH config
vagrant ssh         # SSH into the VM
vagrant destroy     # Remove VM for good
```
