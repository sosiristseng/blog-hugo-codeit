---
title: "Fcitx 5"
date: 2020-10-30T17:18:27+08:00
tags: ["fcitx5", "input method"]
categories: ["Linux", "Packages"]

---

An new generation of input method engine. Also see [fcitx5@ArchWiki](https://wiki.archlinux.org/index.php/Fcitx5).

<!--more-->

## 🔽Installation

In Manjaro / eOS

```bash
sudo pacman -S fcitx5-im fcitx5-chewing fcitx5-material-color
```

And then add these lines to `~/.pam_environment`.

```
INPUT_METHOD  DEFAULT=fcitx5
GTK_IM_MODULE DEFAULT=fcitx5
QT_IM_MODULE  DEFAULT=fcitx5
XMODIFIERS    DEFAULT=\@im=fcitx5
```

## 🛠️Troubleshoot

If fcitx5 does not load automatically after reboot, run the following command:

```
cp /usr/share/applications/org.fcitx.Fcitx5.desktop ~/.config/autostart/
```

