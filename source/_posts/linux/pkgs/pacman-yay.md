---
title: "Pacman-based package management"
date: 2020-10-22T10:47:42+08:00
tags: ["package manager", "endeavour os"]
categories: ["Linux", "Packages"]
---

[`pacman`](https://wiki.archlinux.org/index.php/Pacman) is a blazing-fast package manager for ArchLinux and derivatives (e.g. Manjaro, endeavour OS).

[`yay`](https://github.com/Jguer/yay) is a Pacman wrapper and AUR helper that installs regular / AUR packages, written in Go.

[`pikaur`](https://github.com/actionless/pikaur) is Python AUR helper with minimal dependencies, written in Python. It does not interrupt users asking questions.

<!--more-->

## Chaotic AUR

[Chaotic AUR](https://lonewolf.pedrohlc.com/chaotic-aur/) is a autobuild service for most popular [AUR](https://aur.archlinux.org/) packages.

Checkout their [analytics](https://lonewolf.pedrohlc.com/chaotic-aur/analytics.html) for the list of hosted packages.

e.g. [Garuda Linux](https://garudalinux.org/) (A gamer-centric heavy customized Arch-based distribution) hosts its packages there.

To add the repository, add the GPG keys

```bash
sudo pacman-key --keyserver hkp://keyserver.ubuntu.com -r 3056513887B78AEB 8A9E14A07010F7E3
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman-key --lsign-key 8A9E14A07010F7E3
```

Adn append these lines to `/etc/pacman.conf`

(Sourced from <https://builds.garudalinux.org/repos/chaotic-aur/mirrorlist>)

{% include_code https://builds.garudalinux.org/repos/chaotic-aur/mirrorlist %}

## Installation of AUR helpers

`yay` is available through Manjaro / eOS's official repo:

```bash
sudo pacman -S yay
```

`pikaur` is available through [AUR](https://aur.archlinux.org/packages/pikaur/).

```bash
yay -S pikaur
```

## Usage of AUR helpers

### Perform a full system upgrade

```bash
# The same as yay -Syu
yay
```

```bash
# The same as yay -Syu
sudo pikaur -Syu
```

### Query a package

With an installation selection menu for both regular and AUR packages.

```bash
yay ${PKG}
```

```bash
pikaur ${PKG}
```

### Permanent settings for yay

`yay` is unable to save settings if the config folder does not exist. From this [Github issue](https://github.com/Jguer/yay/issues/1352).

```bash
mkdir -p ~/.config/yay  # Workaround, only need to run this line once
```

The usage is `yay --save <options>`, for example:

```bash
yay --answerclean All --answerdiff None --answerupgrade None --cleanafter --batchinstall --combinedupgrade --sudoloop --save
```

- `--cleanafter`: clean untracked files after build.
- `--combinedupgrade`: resolve dependency and then install both the repo and the AUR packages in one go.
- `--sudoloop`: Loop sudo calls in the background to prevent sudo from timing out during long builds.
- `--batchinstall`: Build all AUR packages and install them at once.

### Configuration for pikaur

The default is good enought byu if you want to customize see this [GitHub README](https://github.com/actionless/pikaur#configuration).


## Getting the dependency tree of a package

Use [pactree](https://www.archlinux.org/pacman/pactree.8.html), for example:

```bash
pactree pikaur -d 1  # -d = --depth
```

Gets
```
pikaur
├─pyalpm
└─git
```

## Generating a list of packages

For non-AUR, explicitly installed, packages:

```bash
pacman -Qnqe > pkgs.txt
```

For AUR packages:

```bash
pacman -Qqem > aurpkgs.txt
```

For all explicitly installed packages

```bash
pacman -Qqe > allpkgs.txt
```

## Install packages from a list

```bash
yay  # Full upgrade the system first
yay -S --needed - < pkgs.txt
```

## Compilation options for AUR packages

You can store your settings in `~/.makepkg.conf` [makepkg@ArchWiki](https://wiki.archlinux.org/index.php/Makepkg)

A good starting point is to copy from the system config file:

```bash
cp /etc/makepkg.conf ~/.makepkg.conf
```

Packages with its own settings (`PKGBUILD`) will override your custom ones.

### CPU target for building optimized binaries

```txt ~/.makepkg.conf
CFLAGS="-march=native -O2 -pipe -fstack-protector-strong -fno-plt"
CXXFLAGS="${CFLAGS}"
RUSTFLAGS="-C opt-level=2 -C target-cpu=native"
```

### Parallel compilation

```txt ~/.makepkg.conf
MAKEFLAGS="-j$(nproc)"
```

### Compressing packages

```txt ~/.makepkg.conf
# multiple cores on compression of xz archives
COMPRESSXZ=(xz -c -z - --threads=0)

# multiple cores on compression of zstd archives
COMPRESSZST=(zstd -c -z -q - --threads=0)

# multiple cores on compression of gz archives (requires pigz package)
COMPRESSGZ=(pigz -c -f -n)
```

And you can choose the preferred method for package compression

e.g.
```bash
PKGEXT='.pkg.tar.zst'
```

Or turn off compression completely (fastest)
x
```bash
PKGEXT='.pkg.tar'
```
