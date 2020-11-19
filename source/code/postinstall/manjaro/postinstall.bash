#!/usr/bin/env bash
# Bootstrapping script for Manjaro workstation

set -euxo pipefail

REPO="REPO=https://sosiristseng.github.io/code/postinstall/manjaro"

# Setup ibus
wget -qO- "${REPO}"/ibus.xprofile >> ~/.xprofile

# Download package list
wget -q "${REPO}"/pkg-kde.txt

# Find best mirror and update the system
sudo pacman-mirrors -f && sudo pacman -Syyu --noconfirm

# Detects NVIDIA hardware
if lspci | grep -q NVIDIA
then
sudo mhwd -a pci nonfree 0300
echo "cuda cudnn nvidia-container-toolkit" >> manjaro.txt
fi
fi
# Customize makepkg.conf for multithreading package compression
cat /etc/makepkg.conf | sed 's+tar\.xz+tar\.zst+g' | sed 's+zstd+zstdmt+g' | sed 's+gzip+pigz+g' > ~/.makepkg.conf

# Setting AUR helper yay and pikaur
sudo pacman -S --noconfirm --needed yay pigz lzop zstd base-devel python-pip
yay --save --answerclean All --answerdiff None --answeredit None --answerupgrade None --cleanafter --batchinstall --sudoloop
yay -S --needed --noconfirm pikaur

# First phase system setup with sudo
sudo locale-gen zh_TW.UTF-8
sudo pikaur -S --noconfirm --needed teamviewer docker
sudo systemctl enable --now fstrim.timer
sudo systemctl enable --now teamviewerd
sudo systemctl enable --now docker.service

# Install the rest
sed 's/#.*$//' pkg-kde.txt | xargs sudo pikaur -S --noconfirm --needed
