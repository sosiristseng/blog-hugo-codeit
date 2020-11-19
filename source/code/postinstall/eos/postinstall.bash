#!/usr/bin/env bash
# Post install script for endeavour OS

set -euxo pipefail

REPO=https://sosiristseng.github.io/code/postinstall/eos

# Customize makepkg.conf for multithreaded compression
cp /etc/makepkg.conf ~/.makepkg.conf
wget -q "${REPO}"/makepkg.patch
patch -u ~/.makepkg.conf -i makepkg.patch

# Setup ibus
wget -qO- "${REPO}"/ibus.xprofile >> ~/.xprofile

# Setup environment variables
wget -qO- "${REPO}"/profile.bash >> ~/.profile

# Download package list
wget -q "${REPO}"/pkgs.txt

# Setting up yay
mkdir -p ~/.config/yay
yay --save --answerclean All --answerdiff None --answeredit None --answerupgrade None --cleanafter --batchinstall --sudoloop

# First phase system setup with services
yay -S --noconfirm --needed teamviewer docker timeshift cronie
sudo systemctl enable --now cronie.service
sudo systemctl enable --now fstrim.timer
sudo systemctl enable --now teamviewerd
sudo systemctl enable --now docker.service
sudo systemctl disable org.cups.cupsd.service || echo "CUPS not installed!"
sudo systemctl enable --now org.cups.cupsd.socket || echo "CUPS not installed!"

# Install the rest
# Check pkgs.txt before running the line below
sed 's/#.*$//' pkgs.txt | xargs yay -S --noconfirm --needed
