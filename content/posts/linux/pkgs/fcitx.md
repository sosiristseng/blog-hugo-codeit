---
title: "Fcitx 5"
subtitle: ""
date: 2021-01-12T18:08:26+08:00
author: ""
authorLink: ""
description: ""

tags: ["input method"]
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

Fcitx[^1] is a lightweight input method framework aimed at providing environment independent language support for Linux. The development effort is mainly on the new version 5[^2].

<!--more-->

## Installation

Install `fcitx` 5 in Manjaro / enOS / Garuda

```bash
sudo pacman -S fcitx5-im fcitx5-chewing fcitx5-material-color
```

## Troubleshoot

Attach the following lines to `~/.xprofile` if fcitx5 is not activated automatically.

```bash
export INPUT_METHOD=fcitx5
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=\@im=fcitx5
```

[^1]: https://wiki.archlinux.org/index.php/Fcitx
[^2]: https://wiki.archlinux.org/index.php/Fcitx5
