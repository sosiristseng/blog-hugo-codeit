---
title: "Ubuntu Postinstall"
date: 2020-10-21T17:26:59+08:00
tags: ["ubuntu", "postinstall"]
categories: ["Linux"]
comments: true
---

Things to do after installing Ubuntu 20.04.

<!--more-->

## Install traditional Chinese in language support

Default locale for Ubuntu for traditional Chinese (Taipei) is `lzh_TW` rather than `zh_TW`.

Install the locale and then set locale to `zh_TW` solve the problem.

## Post install script

{% include_code postinstall/ubuntu/postinstall.bash %}

Installed apps:

{% include_code postinstall/ubuntu/pkgs.txt %}


## Download binaries

(If needed)

- [Telegram](https://telegram.org/)
- [MarkText (AppImage)](https://github.com/marktext/marktext)
- [Libreoffice (AppImage)](https://www.libreoffice.org/download/appimage/)
- [FreeFileSync](https://freefilesync.org/)
- [Starship](https://starship.rs/)
- [Hugo](https://github.com/gohugoio/hugo/releases/)
- [Pandoc](https://github.com/jgm/pandoc/releases/)
- [Virtualbox](https://www.virtualbox.org/)
