---
title: "Custom Fonts"
date: 2020-10-22T16:18:15+08:00
tags: ["fonts", "linux"]
categories: ["Linux"]

---

Install custom fonts if not available from the repo.

<!--more-->

## Download links

- [Nerd fonts](https://www.nerdfonts.com/), patched fonts with glyphs.
- [Cascadia-code](https://github.com/microsoft/cascadia-code). A fun, new monospaced font developed for Windows Terminal (and friends).
- [Google fonts](https://fonts.google.com/)
- [IBM plex](https://github.com/IBM/plex)
- [Gensen font](https://github.com/ButTaiwan/gensen-font)
- [Public Sans](https://github.com/uswds/public-sans)

## Install fonts

### Per user

Copy the font files to  `~/.local/share/fonts`. Then, run `fc-cache` to rebuild the font cache.

```bash
fc-cache -fv
```

### System-wide

Copy the font files to  `/usr/share/fonts/`. Then, run `fc-cache` to rebuild the font cache.

```bash
sudo fc-cache -fv /usr/share/fonts/
```
