---
title: "Postinstall for Endeavour OS"
date: 2020-10-23T15:25:08+08:00
tags: ["eos", "postinstall", "endeavour os"]
categories: ["Linux"]
comments: true
---

Things to do after installing Endeavour OS.

<!--more-->

## Find fastest repository server

Click `select mirror` in the welcome APP and save the mirror list.

## Chaotic AUR

[Chaotic AUR](https://lonewolf.pedrohlc.com/chaotic-aur/) is a server building many poppular [AUR](https://aur.archlinux.org/) packages.

Checkout their [analytics](https://lonewolf.pedrohlc.com/chaotic-aur/analytics.html) for the list of hosted packages.

[Garuda Linux](https://garudalinux.org/) (A heavily customized Arch-based Linux distribution) also hosts its packages there.

Add the GPG keys first

```bash
sudo pacman-key --keyserver hkp://keyserver.ubuntu.com -r 3056513887B78AEB 8A9E14A07010F7E3
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman-key --lsign-key 8A9E14A07010F7E3
```

And then append these lines to `/etc/pacman.conf` (Sourced from <https://builds.garudalinux.org/repos/chaotic-aur/mirrorlist>)

{% include_code https://builds.garudalinux.org/repos/chaotic-aur/mirrorlist %}

And update the mirro list

```bash
sudo pacman -Syyu
```

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
