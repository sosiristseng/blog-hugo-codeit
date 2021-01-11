---
title: Input methods
tags: ["input method"]
categories: ["Linux", "Packages"]
comments: false
date: 2021-01-03 16:21:53
---

Installing input method engines.

See [ibus@GitHub](https://github.com/ibus/ibus) and [fcitx5@ArchWiki](https://wiki.archlinux.org/index.php/Fcitx5).

<!--more-->

## ibus

### Install via `apt`

For Ubuntu and PopOS.

```bash
sudo apt install ibus ibus-chewing
```

### Install via `pacman`

For Manjaro, endeavour OS and Garuda Linux.

```bash
sudo pacman -S ibus ibus-chewing
```

If ibus does not load at boot, attach the following lines to `~/.xprofile`.

```bash
# ~/.xprofile
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
ibus-daemon -drx
```

### Change icon color in the system tray

Use `dconf`. [@Arch Linux Wiki](https://wiki.archlinux.org/index.php/IBus#Systray_language_icon_color)

```bash
gsettings set org.freedesktop.ibus.panel xkb-icon-rgba ${COLOR}
```

## fcitx

Version 4 of fcitx is in maintaince mode, to install the new version 5 fcitx.

Install `fcitx` 5 in Manjaro / enOS / Garuda

```bash
sudo pacman -S fcitx5-im fcitx5-chewing fcitx5-material-color
```

Attach the following lines to `~/.xprofile` if fcitx is not activated at boot.

```bash
export INPUT_METHOD=fcitx5
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=\@im=fcitx5
```
