---
title: "Markdown editors"
date: 2020-10-22T16:04:38+08:00
tags: ["markdown"]
categories: ["Linux", "Packages"]
comments: true
---

What you see is what you get Markdown editors.

<!--more-->

## Marktext

[Marktext](https://marktext.app/), a full-featured open-source what-you-see-is-what-you-get Markdown editor.

### Install AppImage

Download the [AppImage](https://marktext.app/) and run it

### Install via `yay`

[marktext-bin@AUR](https://aur.archlinux.org/packages/marktext-bin/)

```bash
yay -S marktext-bin
```

## Typora

[Typora](https://typora.io/), a full-featured what-you-see-is-what-you-get Markdown editor.

### Install via `apt`

For Ubuntu and Pop OS.

```bash
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
echo 'deb https://typora.io/linux ./' | sudo tee /etc/apt/sources.list.d/typora.list
sudo apt update && sudo apt install typora
```

### Install via `yay`

[typora@AUR](https://aur.archlinux.org/packages/typora/)

```bash
yay -S typora
```

You may want to also [install pandoc](https://pandoc.org/installing.html) to export `md` to `docx`.
