#!/usr/bin/env bash
# Ubuntu (20.04) post-install
set -euxo pipefail

REPO="https://sosiristseng.github.io/code/postinstall/ubuntu"


# Setup NCHC mirror
sudo -v
sudo sed -i 's/us.archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
sudo sed -i 's/tw.archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
sudo sed -i 's/security.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
sudo apt update && sudo apt install -y apt-transport-https ca-certificates curl git gnupg-agent software-properties-common python3-pip

# Run this line if you need Wind and games
# sudo dpkg --add-architecture i386

# Google chrome
wget -qO- https://dl.google.com/linux/linux_signing_key.pub | sudo tee /etc/apt/trusted.gpg.d/google-chrome.asc > /dev/null
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list > /dev/null

# Vivaldi
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo tee /etc/apt/trusted.gpg.d/vivaldi.asc > /dev/null
echo "deb https://repo.vivaldi.com/archive/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list > /dev/null

# Brave
wget -qO- https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo tee /etc/apt/trusted.gpg.d/brave-browser-release.asc > /dev/null
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null

# Anydesk
wget -qO- https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo tee /etc/apt/trusted.gpg.d/anydesk.asc > /dev/null
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list > /dev/null

# docker (Only supports LTS version)
wget -qO- https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/trusted.gpg.d/docker.asc > /dev/null
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Zotero
wget -qO- https://github.com/retorquere/zotero-deb/releases/download/apt-get/install.sh | sudo bash > /dev/null

# Typora
wget -qO - https://typora.io/linux/public-key.asc | sudo tee /etc/apt/trusted.gpg.d/typora.asc > /dev/null
echo 'deb https://typora.io/linux ./' | sudo tee /etc/apt/sources.list.d/typora.list > /dev/null

# Xanmod linux kernel
wget -qO- https://dl.xanmod.org/gpg.key | sudo tee /etc/apt/trusted.gpg.d/xanmod.asc > /dev/null
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list > /dev/null

sudo add-apt-repository -yu ppa:appimagelauncher-team/stable  # AppImageLauncher
sudo add-apt-repository -yu ppa:git-core/ppa              # Git stable releases
sudo add-apt-repository -yu ppa:alessandro-strada/ppa     # Google drive client
sudo add-apt-repository -yu ppa:papirus/papirus           # Papirus icon theme
sudo add-apt-repository -yu ppa:yann1ck/onedrive          # OneDrive client
# sudo add-apt-repository -yu ppa:graphics-drivers/ppa      # Nvidia Proprietary Driver
sudo add-apt-repository -yu ppa:atareao/telegram          # Telegram

# Set up apt-fast
sudo add-apt-repository -y ppa:apt-fast/stable
echo debconf apt-fast/maxdownloads string 16 | sudo debconf-set-selections
echo debconf apt-fast/dlflag boolean true | sudo debconf-set-selections
echo debconf apt-fast/aptmanager string apt-get | sudo debconf-set-selections

sudo apt update
sudo apt install -y apt-fast
sudo apt-fast full-upgrade -y

# Downoad and install deb
wget -qO /tmp/teamviewer.deb "https://download.teamviewer.com/download/linux/teamviewer_amd64.deb"

sudo apt-fast install -y /tmp/*.deb

# Snap packages
sudo snap install gitkraken --classic
sudo snap install code --classic

wget -qO- https://sosiristseng.github.io/code/postinstall/ubuntu/ubuntu.txt | sed 's/#.*$//' | xargs sudo apt-fast install -y

[[ -x "$(command -v pip3)" ]] && pip3 install -U --user glances bpytop jill youtube-dl
