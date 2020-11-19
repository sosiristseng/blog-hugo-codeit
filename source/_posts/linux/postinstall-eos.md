---
title: "Postinstall for Endeavour OS"
date: 2020-10-23T15:25:08+08:00
tags: ["eos", "postinstall", "endeavour os"]
categories: ["Linux"]
comments: true
---

Things to do after installing Endeavour OS.

<!--more-->

## Repo setup

Click `select mirror` in the welcome APP and save the mirror list.

## Postinstall script

```bash
wget -qO- https://sosiristseng.github.io/postinstall/eos/postinstall.bash | bash
```

Content of `postinstall.bash`

```bash
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

```

## Theme settings

### KDE

- Kvantum theme: Materia
- Global theme: Materia
- Plasma style: Materia
- Application style: kvantum
- GTK style: Materia-compact
- Window decorations: Materia
- Colors: Materia Light
- Fonts
  - General: Roboto medium 10.5pts
  - Monospace: Hack Nerd Font 10.5pt
- Icons: papirus
- Cursors: Adwaita

## Optional packages not in the list

Use `sudo pikaur -S <pkgname>`

- [PyCharm](https://www.jetbrains.com/pycharm/): `pycharm-community-jre`
- [Anydesk](https://anydesk.com/en/downloads/linux): `anydesk-bin`
- Java runtime: `jre-openjdk`
- Flatpak: `flatpak`
- Snap: `snapd`
- Google drive client: `google-drive-ocamlfuse-opam`
- Onedrive client: `onedrive-abraunegg`
- FreeFileSync: `freefilesync-bin`
- Bottom: `bottom-bin`
- Tilix: `tilix`, `python-nautilus` (for Nautilus file manager integration)
- CUDA (for nvidia GPUs): `cuda`, `cudnn`

### VirtualBox

From [VirtualBox@eos](https://endeavouros.com/docs/applications/how-to-install-virtualbox/)

Install the packages
```bash
sudo pikaur -S virtualbox virtualbox-guest-iso net-tools virtualbox-ext-oracle
```

And the add your username to the `vbox` group.
```bash
sudo gpasswd -a username vboxusers
```
