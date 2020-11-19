---
title: "Telegram"
date: 2020-10-27T15:39:44+08:00
tags: ["telegram"]
categories: ["Linux", "Packages"]
comments: false
---

[Telegram](https://telegram.org/) is a cloud-based cross-platform instant messaging service with optional end-to-end encryption. Account creation requires a phone number. (From [ArchWiki](https://wiki.archlinux.org/index.php/Telegram))

<!--more-->

## 🔽Installation

### Standalone binary

[Download here](https://desktop.telegram.org/) and run standalone binary.

### Ubuntu / PopOS

```bash
sudo add-apt-repository -yu ppa:atareao/telegram
sudo apt install telegram
```

### Arch / Manjaro / eOS

```bash
sudo pacman -S telegram-desktop
```

### snap

Requires `snapd`.

```bash
sudo snap install telegram-desktop
```
