---
title: "Asus USB Wifi"
subtitle: ""
date: 2021-01-31T23:05:53+08:00
author: ""
authorLink: ""
description: ""

tags: ["linux", "wifi", "driver", "manjaro"]
categories: ["Linux"]

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

Driver for ASUS USB N10 Nano (B1).

<!--more-->

The wifi chip is Realtek 8188EU[^1] and it works on Linux 5.9, but not Linux 5.10 or later.

## Manjaro

To install the DKMS driver[^2], kernel header files and `dkms` are required:

```bash
sudo pacman -S $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-headers"}' ORS=' ')
```

Install the driver from [AUR](https://aur.archlinux.org/packages/8188eu-dkms)

```bash
paru -S 8188eu-dkms
```

Post-installation setup:

```bash
echo 'blacklist 8188eu' | sudo tee /etc/modprobe.d/8188eu-blacklist.conf
sudo depmod -a
sudo mkinitcpio -P

sudo reboot
```

[^1]: From info depot: <http://en.techinfodepot.shoutwiki.com/wiki/ASUS_USB-N10_Nano_rev_B1>
[^2]: Install DKMS driver in Manjaro <https://archived.forum.manjaro.org/t/wifi-adapter-still-not-work-rtl8188eus/124449/2>
