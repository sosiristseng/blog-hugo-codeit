#!/usr/bin/env bash
# Post install script for Garuda Linux

set -euxo pipefail

REPO=https://sosiristseng.github.io/code/postinstall/garuda

# Setup ibus
wget -qO- "${REPO}"/ibus.xprofile >> ~/.xprofile

# Setup environment variables
wget -qO- "${REPO}"/profile.bash >> ~/.profile

# Download package list
wget -q "${REPO}"/pkgs.txt

# Set up powerpill

sudo pacman -S --noconfirm --needed powerpill

# Install the rest
# Check pkgs.txt before running the line below
sed 's/#.*$//' pkgs.txt | xargs sudo powerpill -S --noconfirm --needed

# Setting up yay
mkdir -p ~/.config/yay
yay --save --answerclean All --answerdiff None --answeredit None --answerupgrade None --cleanafter --batchinstall --sudoloop

# Customize makepkg.conf for multithreaded compression
cp /etc/makepkg.conf ~/.makepkg.conf
wget -q "${REPO}"/makepkg.patch
patch -u ~/.makepkg.conf -i makepkg.patch
