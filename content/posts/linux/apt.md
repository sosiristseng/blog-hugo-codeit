---
title: "Apt package manager"
date: 2020-11-16T17:18:03+08:00
tags: ["linux"]
categories: ["Linux"]
comment: false
---

Things about the `apt` package manager used by Ubuntu and friends (e.g. PopOS).

> Sorry Debian, I know very little about you.

<!--more-->

## apt vs apt-get

From
- [apt@itsfoss](https://itsfoss.com/apt-vs-apt-get-difference/)
- [apt commands@isfoss](https://itsfoss.com/apt-command-guide/)

`apt` command is more tailored towards interactive use and includes commonly-used commands from `apt-get` and `apt-cache`. And it comes with a nice progress bar.

`apt-get` is geared towards scripting use due to its stable interface

## apt-fast for faster downloads

[`apt-fast`](https://github.com/ilikenwf/apt-fast) is shellscript wrapper for `apt-get` and `aptitude` that can drastically improve `apt` download times by downloading packages in parallel, with multiple connections per package.

### Interaction-free Installation

```bash
# Set up apt-fast
sudo add-apt-repository -y ppa:apt-fast/stable
echo debconf apt-fast/maxdownloads string 16 | sudo debconf-set-selections
echo debconf apt-fast/dlflag boolean true | sudo debconf-set-selections
echo debconf apt-fast/aptmanager string apt-get | sudo debconf-set-selections
sudo apt update && sudo apt install apt-fast -y
```

### Usage of apt-fast

From the [original post](http://www.mattparnell.com/projects/apt-fast-and-axel-roughly-26x-faster-apt-get-installations-and-upgrades.html):

It's a drop-in replacement of `apt-get`. e.g. `sudo apt-fast update`, `sudo apt-fast dist-upgrade`

Should your download stall for any number of reasons, you'll need to do an `apt-fast clean`.

## Synaptic the GUI package manager

`apt-xapian-index` offers quick filter search box in `synaptic` [@UbuntuHandBook](http://ubuntuhandbook.org/index.php/2019/01/enable-quick-filter-search-box-synaptic-package-manager/)

```bash
sudo apt install synaptic apt-xapian-index
```

## Deprecation of `apt-key` command

> Use of apt-key is deprecated @ [Debian manpage](https://manpages.debian.org/testing/apt/apt-key.8.en.html)

One may receive a `apt-key add is deprecated` message from Ubuntu newer than 20.10 when adding keys of custom repos.

It is recommended to add keys directly into `/etc/apt/trusted.gpg.d/`.
- `.asc` for text public keys
- `.gpg` for binary public keys

For example,

Instaed of

```bash
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
```

Do this

```bash
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo tee /etc/apt/trusted.gpg.d/vivaldi.asc
```

## Fix apt package manager

Try these commands to fix borked apt package registry. Taken from [System76 docs](https://support.system76.com/articles/package-manager-pop/).

```bash
sudo apt clean
sudo apt update -m
sudo dpkg --configure -a
sudo apt install -f
sudo apt dist-upgrade
sudo apt autoremove --purge
```
