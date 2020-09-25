#!/bin/bash

sudo apt update

sudo apt install wget
sudo apt install curl
sudo apt install snapd

# Git Setup
git config --global user.name "Eesha Shetty"
git config --global user.email eeshashetty24@gmail.com

# Anaconda
wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
bash ./Anaconda3-2020.02-Linux-x86_64.sh

# Vim
sudo apt-get install vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Install Wine
sudo apt install wine

# OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc
source ~/.zshrc

# Setup Brave
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

# Docker Setup
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# VSCode
sudo snap install --classic code

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update

sudo apt-get install sublime-text

# Snap Apps
sudo snap install discord
sudo snap install spotify
sudo snap install --classic heroku

# Node
sudo apt install npm
sudo apt install nodejs
npm install nodemon -g

# Setup Regolith
sudo add-apt-repository ppa:regolith-linux/release
sudo apt install regolith-desktop
