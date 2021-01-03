---
title: Burn installation ISO into usb disks
tags: []
categories: ["Linux"]
comments: false
mathjax: false
date: 2020-12-12 00:47:04
---

Tools to make Linux installation media from ISO files. They may or may not work on Windows ISOs.

<!-- more -->

## Ventoy

My most recommended, [Ventoy](https://www.ventoy.net/) is an open source tool to create bootable USB drive for ISO files.

After the USB disk is formatted by Ventoy, you can just drag and drop the ISO files. Ventoy will load the ISO file in its boot menu.

And you can also copy other files (e.g. documents / scripts) into the USB disk. Ventoy will ignore them and you can use them in a normal fashion.

## Rufus

[Rufus download](https://rufus.ie/en_IE.html). Runs on Windows systems and works on Linux / Windows ISOs.

## Etcher

[Etcher](https://www.balena.io/etcher/) flashes OS images to SD cards & USB drives, safely and easily.

Runs corss-platform and works on Linux ISOs.

## Suse image writer

[Suse image writer](https://en.opensuse.org/SDB:Live_USB_stick#Install_ImageWriter_for_openSUSE).

Available in some Linux distribution (e.g. Manjaro, Garuda Linux)

## Gnome disks

Select the USE disk, click on the 3-dot menu, select `Restore disk image`, and then select the ISO file.
