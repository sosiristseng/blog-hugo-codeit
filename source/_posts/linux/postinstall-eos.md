---
title: "Postinstall for Endeavour OS"
date: 2020-10-23T15:25:08+08:00
tags: ["postinstall", "endeavour os", "package manager"]
categories: ["Linux"]
comments: true
---

Things to do after installing Endeavour OS.

<!--more-->

## Find fastest repository server

Click `select mirror` in the welcome APP and save the mirror list.

## Install kernel

Install `akm` kernel manager

```bash
sudo pacman -S akm
```

## Postinstall script

```bash
wget -qO- https://sosiristseng.github.io/code/postinstall/eos/postinstall.bash | bash
```

{% include_code postinstall/eos/postinstall.bash %}

Installed apps:

{% include_code postinstall/eos/pkgs.txt %}

## If using NVIDIA GPU

Nvidia DKMS (for all kernels) driver and CUDA runtime.

```bash
sudo pacman -S nvidia-dkms cuda cudnn
```

## Theme settings

### KDE

- Kvantum theme: Qogir Dark
- Global theme: Qogir Dark
- Plasma style: Qogir Dark
- Application style: kvantum
- GTK style: Qogir Dark
- Window decorations: Qogir Dark
- Colors: Qogir Dark
- Fonts
  - General: Roboto medium 10.5pts
  - Monospace: Hack Nerd Font 10.5pt
- Icons: Qogir Dark
- Cursors: Qogir Dark

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
