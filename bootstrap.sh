#!/bin/bash

set -e

USER_NAME=${1:-lomin}
REPO_NAME=${2:-sagwassi}
HOSTS=${3:-hosts}
SITE=${4:-site}
SAGWASSI_DIR="$HOME/.sagwassi"

# Download and install Command Line Tools
if [[ ! -x /usr/bin/gcc ]]; then
    echo "Info   | Install   | xcode"
    xcode-select --install
fi

# Download and install Homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
    echo "Info   | Install   | homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Modify the PATH
export PATH=/usr/local/bin:$PATH

# Download and install git
if [[ ! -x /usr/local/bin/git ]]; then
    echo "Info   | Install   | git"
    brew install git
fi

# Download and install python
if [[ ! -x /usr/local/bin/python ]]; then
    echo "Info   | Install   | python"
    brew install python --framework --with-brewed-openssl
fi

# Download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]; then
    brew install ansible
fi

# Clone down the Ansible repo
if [[ ! -d $SAGWASSI_DIR ]]; then
    git clone https://github.com/$USER_NAME/$REPO_NAME.git $SAGWASSI_DIR
fi

# Provision the box
ansible-playbook --ask-sudo-pass -i $SAGWASSI_DIR/hosts $SAGWASSI_DIR/$SITE.yml

# Link the casks.
~/.bin/link-casks
