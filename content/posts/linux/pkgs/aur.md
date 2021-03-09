---
title: "Pacman and the Arch User Repository (AUR)"
subtitle: "AUR helpers: yay, paru, pikaur"
date: 2021-01-28T16:33:45+08:00
author: ""
authorLink: ""
description: ""

tags: ["AUR", "linux", "pacman"]
categories: ["Linux", "Packages"]

hiddenFromHomePage: false
hiddenFromSearch: false

featuredImage: ""
featuredImagePreview: ""

toc:
  enable: true
math:
  enable: false
lightgallery: false
comment: false
---

The [Arch User Repository (AUR)](https://aur.archlinux.org) hosts `PKGBUILD`s (instructions to download and build a package) contributed by the community. Similar to Ubuntu PPAs, but on steriod.

<!--more-->

## Installing AUR helpers

While you could clone the `PKGBUILD` files and run `makepkg -si ` manually, [AUR helpers](https://wiki.archlinux.org/index.php/AUR_helpers) automate these process for you, giving a similar experience for installing regular packages in `pacman`.

### pikaur

[`pikaur`](https://github.com/actionless/pikaur) reviews PKGBUILDs all in once and asks all questions before installing/building. You can just run `sudo pikaur -S <AUR pkg>` just like `sudo pacman -S <regular pkg>`, by using systemd dynamic users to spawn pkgbuild processes.

You can install `pikaur` by another AUR helper

```bash
paru -S pikaur
```

or manually,

```bash
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri
```

### paru

[`paru`](https://github.com/Morganamilo/paru) (written in Rust) is an AUR helper based on [`yay`](https://github.com/Jguer/yay) (written in Go). And the author said the development effort will be focused on `paru` instead of `yay`. See [this screen record](https://asciinema.org/a/sEh1ZpZZUgXUsgqKxuDdhpdEE) for some `paru` actions. You can install `paru` by another AUR helper:

```bash
paru -S paru-bin # If you don't want to compile the Rust code
# paru -S paru
```

Or manually,

```bash
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

Also see `/etc/paru.conf` for `paru` options.

### yay

Despite superseded by `paru`, `yay` is directly avialable through Manjaro / eOS's official repo:

```bash
sudo pacman -S yay
```

As of the time of writing, `yay` was [unable to save settings](https://github.com/Jguer/yay/issues/1352) if the config folder does not exist. And here is the workaround.

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

## Usage of AUR helpers

### Perform a full system upgrade

```bash
# The same as paru -Syu
paru
```

```bash
# The same as paru -Syu
sudo pikaur -Syu
```

### Query a package

With an installation selection menu for both regular and AUR packages.

```bash
paru ${PKG}
```

```bash
pikaur ${PKG}
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
paru  # Full upgrade the system first
paru -S --needed - < pkgs.txt
```

## Compilation options for AUR packages

To customize compilation options, a good starting point is to copy from the system-wide config file:

```bash
cp /etc/makepkg.conf ~/.makepkg.conf
```

to you own `~/.makepkg.conf` [makepkg@ArchWiki](https://wiki.archlinux.org/index.php/Makepkg). However,  `PKGBUILD` settings still have higher priority.

### CPU target for building optimized binaries

`~/.makepkg.conf`

```txt
CFLAGS="-march=native -O2 -pipe -fstack-protector-strong -fno-plt"
CXXFLAGS="${CFLAGS}"
RUSTFLAGS="-C opt-level=2 -C target-cpu=native"
```

### Parallel compilation

```txt ~/.makepkg.conf
MAKEFLAGS="-j$(nproc)"
```

### Compressing packages

`~/.makepkg.conf`

```txt
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


