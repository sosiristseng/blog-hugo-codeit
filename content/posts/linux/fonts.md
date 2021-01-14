---
title: "Install Fonts"
date: 2020-10-22T16:18:15+08:00
tags: ["fonts", "linux"]
categories: ["Linux"]

---

Install custom fonts if not available from the repo.

<!--more-->

After you download the fonts.

## Per user

Copy the font files to  `~/.local/share/fonts`. Then, run `fc-cache` to rebuild the font cache.

```bash
fc-cache -fv
```

## System-wide

Copy the font files to  `/usr/share/fonts/`. Then, run `fc-cache` to rebuild the font cache.

```bash
sudo fc-cache -fv /usr/share/fonts/
```
