---
title: Command line interface (CLI) tools
tags: ["shell", "command line", "linux"]
categories: ["Linux", "Packages"]
comment: false
date: 2020-12-14 17:50:04
---

Useful things for command prompts in Linux.

<!--more-->

## Progress

See the speed and progress of ongoing commands. [progress@Github](https://github.com/Xfennec/progress)

### Installation via `apt`

For Ubuntu or PopOS

```bash
sudo apt install progress
```

### Install via `pacman`

For Arch and derivatives (enOS, Garuda, Manjaro).

```bash
sudo pacman -S progress
```

### Usage

Launch `progress` in the terminal. [progress@Github](https://github.com/Xfennec/progress#what-can-i-do-with-it)


## Pipe view (pv)

Shows transfer speed and /or progress through a Unix pipe. [pv@Manpage](https://linux.die.net/man/1/pv)

### Installation via `apt`

For Ubuntu or PopOS

```bash
sudo apt install pv
```

### Install via `pacman`

For Arch and derivatives (enOS, Garuda, Manjaro).

```bash
sudo pacman -S pv
```

### Usage

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
