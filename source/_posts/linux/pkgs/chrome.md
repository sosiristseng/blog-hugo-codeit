---
title: "Chrome and chromium"
date: 2020-10-22T14:42:21+08:00
tags: ["chrome", "chromium", "web"]
categories: ["Linux", "Packages"]

---

The most popular web browser.

<!--more-->

## 🔽Installation

### Ubuntu / PopOS

For Google Chrome browser

1. Either via [its website](https://www.google.com/chrome/), download and run the `deb` installer.

2. Or manual setup:

```bash
wget -qO- https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
```

For the (non-branded) Chromium browser

```bash
sudo apt install chromium-browser
```

⚠️ In Ubuntu, the [snap version](https://snapcraft.io/chromium) will be installed.

### Manjaro / eOS

The (non-branded) Chromium browser
```bash
sudo pacman -S chromium
```

[Google Chrome browser browser @ AUR](https://aur.archlinux.org/packages/google-chrome/)

```bash
yay -S google-chrome
```
