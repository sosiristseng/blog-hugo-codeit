---
title: "Tilix"
subtitle: ""
date: 2021-01-28T17:49:09+08:00
author: ""
authorLink: ""
description: ""

tags: ["command line", "tilix"]
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
comment: false
---

[Tilix](https://gnunn1.github.io/tilix-web/) is an advanced GTK3 tiling terminal emulator.

<!--more-->

## Installation

Also installes `python-nautilus` for `Open tilix here` context menu in the Nautilus file manager.

```bash
# For Ubuntu or PopOS
[[ -x $(command -v apt) ]] && sudo apt install tilix && [[ -x $(command -v nautilus) ]] && sudo apt install python-nautilus
# For Arch and derivatives
[[ -x $(command -v pacman) ]] && sudo pacman -S tilix && [[ -x $(command -v nautilus) ]] && sudo pacman -S python-nautilus
```

## Set tilix as the default GUI terminal emulator

For Ubuntu or PopOS:

```bash
sudo update-alternatives --config x-terminal-emulator
```

For Arch and derivatives (enOS, Garuda, Manjaro).

Select in `Prefered applications`.
