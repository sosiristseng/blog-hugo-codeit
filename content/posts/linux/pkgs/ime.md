---
title: "Fcitx and Ibus"
subtitle: ""
date: 2021-01-12T18:08:26+08:00
author: ""
authorLink: ""
description: ""

tags: ["input method", "ibus", "fcitx"]
categories: ["Linux", "Packages"]

hiddenFromHomePage: false
hiddenFromSearch: false

featuredImage: ""
featuredImagePreview: ""

toc:
  enable: true
math:
  enable: false
lightgallery: false
---

[Fcitx](https://wiki.archlinux.org/index.php/Fcitx) is a lightweight input method framework aimed at providing environment independent language support for Linux. The development effort is mainly on the new [version 5](https://wiki.archlinux.org/index.php/Fcitx5).

[ibus](https://github.com/ibus/ibus) is an input method framework using DBUS.

<!--more-->

## Fcitx (version 5)

### Installation

Install latest `fcitx` in Arch and derivatives

```bash
sudo pacman -S fcitx5-im fcitx5-chewing fcitx5-material-color
```

### Troubleshooting

If fcitx5 does not load at boot, attach the following lines to `~/.xprofile`.

```bash
export INPUT_METHOD=fcitx5
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=\@im=fcitx5
```

## ibus

Install ibus with the chewing traditional Chinese input method.

```bash
# For Ubuntu and derivatives
[[ -x $(command -v apt) ]] && sudo apt install ibus ibus-chewing

# For Arch and derivatives
[[ -x $(command -v pacman) ]] && sudo pacman -S ibus ibus-chewing
```

### Troubleshooting

If `ibus` does not load at boot, attach the following lines to `~/.xprofile`.

```bash
# ~/.xprofile
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
ibus-daemon -drx
```

### Change icon color in the system tray

Use [`dconf`](https://wiki.archlinux.org/index.php/IBus#Systray_language_icon_color).

```bash
gsettings set org.freedesktop.ibus.panel xkb-icon-rgba ${COLOR}
```