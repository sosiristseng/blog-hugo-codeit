---
title: "Zsh and friends"
date: 2020-10-22T13:54:40+08:00
tags: ["zim", "zsh", "shell"]
categories: ["Linux", "Packages"]

---

Zsh is a more powerful shell script than bash with its plugin ecosystem, and is the default for new MacOS and Gnome desktop.

[`zim`](https://github.com/zimfw/zimfw) is a zsh plugin framework noted for its loaing speed, about 30x faster than the most popular [`oh-my-zsh`](https://ohmyz.sh/).

<!--more-->

## Installing zsh

You'll need `zsh` for `zim` to work.

### ubuntu / PopOS
```bash
sudo apt install zsh
```

### Manjaro / eOS
```bash
sudo pacman -S zsh
```

## Install zim

```bash
wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```

## Powerlevel10k prompt

From [powerlevel10k@GitHub](https://github.com/romkatv/powerlevel10k#zim), replace `zmodule steeef` with `zmodule romkatv/powerlevel10k` in `~/.zimrc` and then run `zimfw install` in zsh.

Restart zsh to go through Powerlevel10k's interactive setup.

You may want [powerline fonts](https://github.com/romkatv/powerlevel10k#manual) for best font rendering.

## nvm

Add this line in `~/.zimrc` for [zsh-nvm module](https://github.com/lukechilds/zsh-nvm) and then run `zimfw install` in zsh.

```bash
zmodule lukechilds/zsh-nvm
```

### Lazy loading

To save loading time of zsh (about 70x), you can enable lazy loading of nvm scripts, triggered only by entering commands such as `npm`, `nvm`, `node`.

Add this line before loading zmodules in `~/.zshrc`:

```bash
export NVM_LAZY_LOAD=true
```
