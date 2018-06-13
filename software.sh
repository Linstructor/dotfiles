#!/bin/bash
sudo add-apt-repository ppa:papirus/papirus

sudo apt install wget

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

mkdir "temp_folder"
cd temp_folder
wget -O mailspring.deb https://updates.getmailspring.com/download?platform=linuxDeb
wget -O discord.deb https://discordapp.com/api/download?platform=linux&format=deb
wget -O slack.deb https://downloads.slack-edge.com/linux_releases/slack-desktop-3.2.1-amd64.deb
wget -O vscode.deb https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable
sudo dpkg -i -R *.deb

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install spotify-client
sudo apt-get install papirus-icon-theme
sudo apt install gimp
sudo apt install chromium-browser
sudo apt install openjdk-11-jdk
sudo apt-get install docker-ce

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

cd ~
echo 'export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> .bashrc

command -v nvm
nvm install-latest-npm
nvm install node

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo apt install steam