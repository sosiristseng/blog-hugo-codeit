# Pacman-based package management


[`pacman`](https://wiki.archlinux.org/index.php/Pacman) is a blazing-fast package manager for ArchLinux and derivatives (e.g. Manjaro, endeavour OS).

[`yay`](https://github.com/Jguer/yay) is a Pacman wrapper and AUR helper that installs regular / AUR packages, written in Go.

[`pikaur`](https://github.com/actionless/pikaur) is Python AUR helper with minimal dependencies, written in Python. It does not interrupt users asking questions.

<!--more-->

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

