#!/bin/bash

# Copyright Odaceo 2016
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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
