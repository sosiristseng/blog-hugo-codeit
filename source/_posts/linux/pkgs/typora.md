---
title: "Typora"
date: 2020-10-22T15:59:53+08:00
tags: ["typora", "markdown"]
categories: ["Linux", "Packages"]
comments: false
---

A full-featured what-you-see-is-what-you-get Markdown editor.  [@Typora](https://typora.io/)

<!--more-->

## 🔽Installation

### Ubuntu / PoPOS

Add repo manually

```bash
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
echo 'deb https://typora.io/linux ./' | sudo tee /etc/apt/sources.list.d/typora.list
sudo apt update && sudo apt install typora
```

### Manjaro / eOS

[typora@AUR](https://aur.archlinux.org/packages/typora/)

```bash
yay -S typora
```
