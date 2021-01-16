---
title: "Web browsers installation and tips"
date: 2020-10-22T14:42:21+08:00
tags: ["web"]
categories: ["Linux", "Packages"]
comment: true
---

How to install web browsers.

<!--more-->

## Google Chrome

### Install via `apt`

1. Either via [its website](https://www.google.com/chrome/), download and run the `deb` installer.
2. Or manual setup:

```bash
wget -qO- https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update && sudo install google-chrome-stable
```

### Install via `yay`

[Google Chrome browser browser @ AUR](https://aur.archlinux.org/packages/google-chrome/)

```bash
yay -S google-chrome
```

## Chromium

### Install via `apt`

```bash
sudo apt install chromium-browser
```

⚠️ In Ubuntu, the [snap version](https://snapcraft.io/chromium) will be installed.

### Install via `yay`

```bash
sudo pacman -S chromium
```

## Firefox Beta

In case you want to install [next generation of firefox](https://www.mozilla.org/zh-TW/firefox/channel/desktop/)

### Install via `apt`

Via [firefox-next PPA](https://launchpad.net/~mozillateam/+archive/ubuntu/firefox-next).

```bash
sudo add-apt-repository ppa:mozillateam/firefox-next -yu
sudo apt-get update && sudo apt-get install firefox -y
```

### Install via `yay`

Via [firefox beta@AUR](https://aur.archlinux.org/packages/firefox-beta-bin/)

```bash
yay -S firefox-beta-bin
```

## Brave

[Brave](https://brave.com/), a web browser focused on speed and privacy.

### Install via `apt`

```bash
sudo apt install apt-transport-https curl

wget -qO- https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo tee /etc/apt/trusted.gpg.d/brave-core.asc

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update && sudo apt install brave-browser
```

### Install via `yay`

The non-binary version may has issues with sync. Please use the precompiled binary version.

[brave@AUR](https://aur.archlinux.org/packages/brave-bin/)

```bash
yay -S brave-bin
```
## Vivaldi

### Install via `apt`

1. Go to [the website](https://vivaldi.com/), download and run the `deb` installer.
2. Or setup its repo manually
```bash
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
echo "deb https://repo.vivaldi.com/archive/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list

sudo apt update && sudo apt install vivaldi-stable
```

### Install via `yay`

```bash
sudo pacman -S vivaldi vivaldi-ffmpeg-codecs
```
