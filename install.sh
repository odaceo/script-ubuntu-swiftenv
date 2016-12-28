#!/bin/bash

# Init variables
Version="3.0.2"

# Update your local package index
sudo apt-get update

# Install prerequesites
sudo apt-get -y install make clang openssl libpython-dev libicu-dev libcurl4-openssl-dev libssl-dev

# Create the directory
mkdir ~/.swiftenv

# Clone swiftenv
git clone https://github.com/kylef/swiftenv.git ~/.swiftenv

# Configure the user environment
echo 'export SWIFTENV_ROOT="$HOME/.swiftenv"'   | tee -a ~/.bash_profile
echo 'export PATH="$SWIFTENV_ROOT/bin:$PATH"'   | tee -a ~/.bash_profile
echo 'eval "$(swiftenv init -)"'                | tee -a ~/.bash_profile

# Init the user environment
source ~/.bash_profile

# Install Swift
swiftenv install ${Version}
