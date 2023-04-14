#!/bin/bash

# Update apt-get package lists
sudo apt-get update

# Install zsh
sudo apt-get -y install zsh

# Set zsh as default shell
chsh -s $(which zsh)  # which - Returns the path of the zsh binary || chsh - Changes your default shell to a specified one (-s), which is Zsh.

# Install oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Install powerline fonts

#install java jre:
sudo apt install default-jre

#check java version:
java --version

#install java jdk:
sudo apt install default-jdk


# Install Google Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get -y install google-chrome-stable

# Install Visual Studio Code
sudo snap install --classic code

# Install MySQL server
sudo apt-get -y install mysql-server

# Install MySQL Workbench
sudo apt-get -y install mysql-workbench

# Install Beekeeper Studio
sudo snap install beekeeper-studio

# Install Postman
sudo snap install postman

# Install Zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i zoom_amd64.deb
sudo apt-get install -f

# Install scrcpy
sudo apt-get -y install scrcpy

# Install Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.21.0-amd64.deb
sudo dpkg -i slack-desktop-4.21.0-amd64.deb
sudo apt-get install -f

# Install Todo
sudo snap install todoist

# Install GitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
sudo apt-get install -f

# Install Git
sudo apt-get -y install git

# Install BleachBit
sudo apt-get -y install bleachbit

# Install Android Studio
sudo snap install android-studio --classic

# Install IntelliJ IDEA
sudo snap install intellij-idea-community --classic

# Install Netbeans
# wget https://github.com/codelerity/netbeans-installers/releases/download/v16-build1/apache-netbeans_16-1_amd64.deb 
# sudo dpkg -i apache-netbeans_*_amd64.deb

# Install Sublime Text
sudo snap install sublime-text --classic

# Install Kazam
sudo apt-get -y install kazam

# Install Discord
sudo snap install discord

# Install VLC media player
sudo apt-get install vlc

# Clean up
sudo apt-get autoremove
sudo apt-get clean

