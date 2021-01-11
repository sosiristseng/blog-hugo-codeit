---
title: "Telegram"
date: 2020-10-27T15:39:44+08:00
tags: ["telegram"]
categories: ["Linux", "Packages"]
comments: false
---

[Telegram](https://telegram.org/) is a cloud-based cross-platform instant messaging service with optional end-to-end encryption. Account creation requires a phone number. (From [ArchWiki](https://wiki.archlinux.org/index.php/Telegram))

<!--more-->

## Installation

### Standalone binary

[Download](https://desktop.telegram.org/) and run the standalone binary.

### Install via `apt`

```bash
sudo add-apt-repository -yu ppa:atareao/telegram
sudo apt install telegram
```

### Install via `pacman`

```bash
sudo pacman -S telegram-desktop
```

### Install via `snap`

```bash
sudo snap install telegram-desktop
```
