---
title: Command line interface (CLI) tools
tags: ["command line", "linux"]
categories: ["Linux", "Packages"]
comment: false
date: 2020-12-14 17:50:04
---

Useful tools for command prompts in Linux.

<!--more-->

## Progress

Progress [measures](https://github.com/Xfennec/progress) the speed and progress of ongoing commands.

### Installation

In Ubuntu and derivatives

```bash
sudo apt install progress
```

In Arch and derivatives:

```bash
sudo pacman -S progress
```

### Usage

Just [launch](https://github.com/Xfennec/progress#what-can-i-do-with-it) `progress` in the terminal.

## Pipe view (pv)

[`pv`](https://linux.die.net/man/1/pv) shows transfer speed and /or progress through a Unix pipe.

### Installation

In Ubuntu and derivatives

```bash
sudo apt install pv
```

In Arch and derivatives

```bash
sudo pacman -S pv
```

### Usage

The usage of `pv` is similar to that of `cat`. For example,

```bash
cat file > other_file # no output with cat
pv file > other_file  # With progress
```

```bash
# Showing both compression progress and speed
pv file | gzip > file.gz

# Sandwich form, showing speed without progress
cat file | pv | gzip > file.gz
```
