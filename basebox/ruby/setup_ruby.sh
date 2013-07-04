#!/bin/bash

RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
/etc/profile.d/rbenv.sh

show() {
  echo -e "\n\e[1;32m>>> $1\e[00m"
}

install_essentials () {
  show "Install essential packages needed to install ruby and for the system"
  # for adding ppa
  # eg. apt-add-repository -y ppa:brightbox/ruby-ng-experimental
  apt-get -yq install python-software-properties
  apt-get -y update
  
  ## install essentials for installing ruby
  # https://github.com/sstephenson/ruby-build/wiki
  apt-get -yq install build-essential libssl-dev zlib1g-dev libreadline-dev

  # git is always needed
  apt-get -yq install git

  # needed for rbenv install
  apt-get -yq install curl
}

install_rbenv () {
  show "Install rbenv"
  
  ## install rbenv
  git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv

  ## install ruby-build
  mkdir /usr/local/rbenv/plugins
  git clone https://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build  
}
