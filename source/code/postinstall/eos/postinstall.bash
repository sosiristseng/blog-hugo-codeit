#!/usr/bin/env bash
# Post install script for endeavour OS

set -euxo pipefail

REPO=https://sosiristseng.github.io/postinstall/eos

# Customize makepkg.conf for multithreaded compression
cp /etc/makepkg.conf ~/.makepkg.conf
wget -q "${REPO}"/makepkg.patch
patch -u ~/.makepkg.conf -i makepkg.patch

# Setup ibus
wget -qO- "${REPO}"/ibus.xprofile >> ~/.xprofile

# Setup environment variables
wget -qO- "${REPO}"/profile.bash >> ~/.profile

# Setting AUR helper pikaur
sudo pikaur -S --noconfirm --needed pigz lzop zstd base-devel python-pip
git clone https://github.com/actionless/pikaur.git
sudo python3 ./pikaur/pikaur.py -S pikaur --noconfirm --needed
rm -rf pikaur

# Download package list
wget -q "${REPO}"/pkgs.txt

# First phase system setup with services
sudo pikaur -S --noconfirm --needed teamviewer docker timeshift cronie
sudo systemctl enable --now cronie.service
sudo systemctl enable --now fstrim.timer
sudo systemctl enable --now teamviewerd
sudo systemctl enable --now docker.service
sudo systemctl disable org.cups.cupsd.service || echo "CUPS not installed!"
sudo systemctl enable --now org.cups.cupsd.socket || echo "CUPS not installed!"

# Install the rest
# Check pkgs.txt before running the line below
sed 's/#.*$//' pkgs.txt | xargs sudo pikaur -S --noconfirm --needed
