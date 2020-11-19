---
title: "Brave browser"
date: 2020-10-22T14:46:09+08:00
tags: ["brave", "web"]
categories: ["Linux", "Packages"]

---

A web browser focused on speed and privacy.

[@Brave](https://brave.com/)

<!--more-->

## 🔽Installation

### Ubuntu / PopOS

```bash
sudo apt install apt-transport-https curl

wget -qO- https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo tee /etc/apt/trusted.gpg.d/brave-core.asc

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update && sudo apt install brave-browser
```

### Endeavour OS

The non-binary version had issues with sync. Use the precompiled binary instead.

[brave@AUR](https://aur.archlinux.org/packages/brave-bin/)

```bash
yay -S brave-bin
```

### Manjaro

```bash
sudo pacman -S brave
```


