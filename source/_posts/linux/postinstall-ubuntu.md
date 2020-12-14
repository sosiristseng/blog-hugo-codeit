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

```bash
wget -q https://sosiristseng.github.io/code/postinstall/ubuntu/postinstall.bash

# Check before running the script
bash postinstall.bash
```

{% include_code postinstall/ubuntu/postinstall.bash %}

Installed apps:

{% include_code postinstall/ubuntu/pkgs.txt %}

## Nvidia GPU

Nvidia CUDA 11 runtime and compatible GPU driver[^cuda]

{% include_code postinstall/ubuntu/cuda.bash %}

[^cuda]: [CUDA Toolkit 11.1 Update 1 Downloads](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=2004&target_type=debnetwork)

## AMD GPU setup

AMD Mesa Driver Install[^ChrisTitus]

{% include_code postinstall/ubuntu/amd-mesa.bash %}

[^ChrisTitus]: [The Ultimate Linux Gaming Guide](https://christitus.com/ultimate-linux-gaming-guide/) by Chris Titus

## Extensions for gnome shell

From the [gnome shell website](https://extensions.gnome.org/) + browser addon

- [User themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Sound Input & Output Device Chooser](https://extensions.gnome.org/extension/906/sound-output-device-chooser/)
- [Screenshot Tool](https://extensions.gnome.org/extension/1112/screenshot-tool/)
- [Dash to panel](https://extensions.gnome.org/extension/1160/dash-to-panel/) for a Win-8sque experience
- [Material shell](https://extensions.gnome.org/extension/3357/material-shell/) for tiling windows experience

## Download binaries if needed

- [Telegram](https://telegram.org/)
- [MarkText (AppImage)](https://github.com/marktext/marktext)
- [Libreoffice (AppImage)](https://www.libreoffice.org/download/appimage/)
- [FreeFileSync](https://freefilesync.org/)
- [Starship](https://starship.rs/)
- [Hugo](https://github.com/gohugoio/hugo/releases/)
- [Pandoc](https://github.com/jgm/pandoc/releases/)
- [Virtualbox](https://www.virtualbox.org/)
