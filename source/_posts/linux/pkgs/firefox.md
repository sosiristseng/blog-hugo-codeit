---
title: "Firefox"
date: 2020-10-22T14:49:04+08:00
tags: ["webrender", "web", "firefox"]
categories: ["Linux", "Packages"]

---

Installed guide was omitted since firefox is included in most Linux distributions.

<!--more-->

## Enable Webrender

[@OMGUbuntu](https://www.omgubuntu.co.uk/2020/07/firefox-enable-webrender-linux).

May improve performance of Firefox by offloading some of the rendering work to the GPU. (*Not working* on NVIDIA ones)

1. Open `about:config`
2. Search for `gfx.webrender.all`
3. Set the value to `True` to enable WebRender (or `False` to disable it)
