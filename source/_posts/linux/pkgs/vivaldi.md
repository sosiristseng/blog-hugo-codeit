---
title: "Vivaldi"
date: 2020-10-22T14:35:13+08:00
tags: ["vivaldi", "web"]
categories: ["Linux", "Packages"]

---

A web browser focused on customizability. [@Vivaldi](https://vivaldi.com/)

<!--more-->

## 🔽Installation

### Ubuntu / PopOS

1. Go to [the website](https://vivaldi.com/), download and run the `deb` installer.
2. Setup repo manually
```bash
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
echo "deb https://repo.vivaldi.com/archive/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list

sudo apt update && sudo apt install vivaldi-stable
```

### Manjaro / Arch / eOS

```bash
sudo pacman -S vivaldi vivaldi-ffmpeg-codecs
```
