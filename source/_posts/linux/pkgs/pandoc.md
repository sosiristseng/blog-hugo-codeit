---
title: "Pandoc"
date: 2020-10-22T16:12:42+08:00
tags: ["pandoc", "markdown"]
categories: ["Linux", "Packages"]

---

[Pandoc](https://pandoc.org/), a universal document converter.

<!--more-->

## 🔽Installation

### Ubuntu / PopOS

```bash
sudo apt install pandoc
```

Or download and install the [lateset release on GitHub](https://github.com/jgm/pandoc/releases/).

### Manjaro / eOS

```bash
sudo pacman -S pandoc pandoc-citeproc pandoc-crossref
```

Or you can install standalone binary build of [pandoc@AUR](https://aur.archlinux.org/packages/pandoc-bin/) without Haskell dependencies.

```bash
yay -S pandoc-bin
```
