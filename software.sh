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

sudo apt-get update
sudo apt-get install spotify-client
sudo apt-get install papirus-icon-theme
sudo apt install gimp
sudo apt install chromium-browser