---
title: "Firefox"
date: 2020-10-22T14:49:04+08:00
tags: ["webrender", "web", "firefox"]
categories: ["Linux", "Packages"]

---

Installed guide was omitted since firefox is included in most Linux distributions.

<!--more-->

## Enable Webrender

May improve performance[^wrender] by offloading some of the rendering work to the GPU.

1. Open `about:config`
2. Search for `gfx.webrender.all`
3. Set the value to `True` to enable WebRender (or `False` to disable it)

[^wrender]: [Improve Firefox Performance on Linux by Turning WebRender On @ OMGUbuntu](https://www.omgubuntu.co.uk/2020/07/firefox-enable-webrender-linux)

## Firefox beta

The [next generation of firefox](https://www.mozilla.org/zh-TW/firefox/channel/desktop/) may have some new desired features / improvements.

{% tabs OS %}

<!-- tab Ubuntu or PopOS -->

Via [firefox-next PPA](https://launchpad.net/~mozillateam/+archive/ubuntu/firefox-next).

```bash
sudo add-apt-repository ppa:mozillateam/firefox-next -yu
sudo apt-get update && sudo apt-get install firefox -y
```

<!-- endtab -->

<!-- tab Manjaro or eOS -->

Via [firefox beta@AUR](https://aur.archlinux.org/packages/firefox-beta-bin/)

```bash
yay -S firefox-beta-bin
```

<!-- endtab -->

{% endtabs %}
