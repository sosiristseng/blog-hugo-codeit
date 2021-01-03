---
title: "Postinstall for Garuda Linux"
tags: ["postinstall", "garuda linux", "package manager"]
categories: ["Linux"]
comments: true
mathjax: false
date: 2020-12-18 17:42:57
---

Things to do after installing Garuda Linux. (KDE dragonized version)

<!-- more -->

## Fastest mirrors

Run `reflector simple` in the Welcome APP.

Take a look at the `chaotic-mirrorlist` and make sure the US server is at the top.

```bash
kate /etc/pacman.d/chaotic-mirrorlist
```

After setting up mirror lists, do a full system upgrade

```bash
sudo pacman -Syyu
```

## Install the APPs I use

Thanks to [Chaotic AUR](https://lonewolf.pedrohlc.com/chaotic-aur/) repository, I could install almost all the goodies I need without using AUR.


```bash
wget -qO- https://sosiristseng.github.io/code/postinstall/eos/postinstall.bash | bash
```

{% include_code postinstall/garuda/postinstall.bash %}

Installed apps:

{% include_code postinstall/garuda/pkgs.txt %}


## For NVIDIA GPUs

Nvidia DKMS (for all kernels) driver and CUDA runtime.

```bash
sudo pacman -S cuda cudnn
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
- Google drive client: `google-drive-ocamlfuse-opam`
- Onedrive client: `onedrive-abraunegg`
- FreeFileSync: `freefilesync-bin`
- Bottom: `bottom-bin`
