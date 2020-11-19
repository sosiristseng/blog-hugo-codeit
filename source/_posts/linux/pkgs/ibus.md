---
title: "Ibus"
date: 2020-10-22T15:42:41+08:00
tags: ["ibus", "input method"]
categories: ["Linux", "Packages"]

---

An input method engine. See [ibus@GitHub](https://github.com/ibus/ibus)

<!--more-->

## 🔽Installation

### Ubuntu / PoPOS

```bash
sudo apt install ibus ibus-chewing
```

### Manjaro / eOS

```bash
sudo pacman -S ibus ibus-chewing
```

## 🛠️Troubleshoot

If ibus does not load at boot, attach the following lines to `~/.xprofile`.

```bash
# ~/.xprofile
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
ibus-daemon -drx
```

## Change icon color in the system tray

Set in `dconf`. From [Arch Linux Wiki](https://wiki.archlinux.org/index.php/IBus#Systray_language_icon_color)

```bash
gsettings set org.freedesktop.ibus.panel xkb-icon-rgba ${COLOR}
```
