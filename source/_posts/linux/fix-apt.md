---
title: "Fix apt package manager"
date: 2020-10-21T17:25:27+08:00
tags: ["apt"]
categories: ["Linux"]
comments: false
---

Try these commands to fix borked apt package registry. [From System76 docs](https://support.system76.com/articles/package-manager-pop/)

<!--more-->

```bash
sudo apt clean
sudo apt update -m
sudo dpkg --configure -a
sudo apt install -f
sudo apt dist-upgrade
sudo apt autoremove --purge
```
