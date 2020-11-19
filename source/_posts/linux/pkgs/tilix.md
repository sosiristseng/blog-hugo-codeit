---
title: "Tilix"
date: 2020-10-22T14:12:46+08:00
tags: ["shell", "tilix"]
categories: ["Linux", "Packages"]

---

[Tilix](https://gnunn1.github.io/tilix-web/) is an advanced GTK3 tiling terminal emulator.

<!--more-->

## 🔽Installation

Also setup `python-nautilus` for `Open tilix here` context menu, if Nautilus file manager is present.

### Ubuntu / PopOS

```bash
sudo apt install tilix
command -v nautilus && sudo apt install python-nautilus
```

### Manjaro / eOS

```bash
sudo pacman -S tilix
command -v nautilus && sudo pacman -S python-nautilus
```

## Set tilix as the default GUI terminal emulator

### Ubuntu / PopOS
```bash
sudo update-alternatives --config x-terminal-emulator
```

### Manjaro / eOS
Select in `Prefered applications`.
