---
title: "Pipe view (pv)"
date: 2020-10-22T14:06:38+08:00
tags: ["pv", "pipe", "bash", "zsh"]
categories: ["Linux", "Packages"]

---

Shows transfer speed and /or progress through a Unix pipe.

[pv@Manpage](https://linux.die.net/man/1/pv)

<!--more-->

## 🔽Installation

### Ubuntu / PopOS

```bash
sudo apt install pv
```

### Manjaro / eOS

```bash
sudo pacman -S pv
```

## Usage

`pv` acts like `cat`.

```bash
cat file > other_file # no output with cat
pv file > other_file  # With progress
```

```bash
# Show compression progress
pv file | gzip > file.gz

# Sandwich form, showing speed only, without progress
cat file | pv | gzip > file.gz
```
