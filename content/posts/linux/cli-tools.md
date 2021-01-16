---
title: Command line interfact (CLI) tools
tags: ["shell", "command line", "system monitor", "terminal", "linux"]
categories: ["Linux", "Packages"]
comment: false
date: 2020-12-14 17:50:04
---

Tools for command prompts in bash as well as zsh.

<!--more-->

## Command prompt

### Bashit

[Bash-it](https://github.com/Bash-it/bash-it) is the community's collection of useful bash scripts, inspired by the `oh-my-zsh` project.

It provides autocompletion, themes, aliases, custom functions, etc for bash prompt.


```bash
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

bash ~/.bash_it/install.sh
```

### zsh improved framework (zimfw)

[`zim`](https://github.com/zimfw/zimfw) is a zsh plugin framework noted for its loaing speed, about 30x faster than the most popular [`oh-my-zsh`](https://ohmyz.sh/).

You'll need `zsh` for `zim(fw)` to work.

```bash
wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```

#### Powerlevel10k prompt

From [powerlevel10k@GitHub](https://github.com/romkatv/powerlevel10k#zim), replace `zmodule steeef` with `zmodule romkatv/powerlevel10k` in `~/.zimrc` and then run `zimfw install` in zsh.

Restart zsh to go through Powerlevel10k's interactive setup.

You might need [powerline fonts](https://github.com/romkatv/powerlevel10k#manual) for the best font rendering.

#### Node version manager (nvm)

Add this line in `~/.zimrc` for [zsh-nvm module](https://github.com/lukechilds/zsh-nvm) and then run `zimfw install` in zsh.

```bash
zmodule lukechilds/zsh-nvm
```

To save loading time of zsh (about 70x), you can enable lazy loading of nvm scripts, triggered only by entering commands such as `npm`, `nvm`, `node`.

Add this line before loading zmodules in `~/.zshrc`:

```bash
export NVM_LAZY_LOAD=true
```

### Starship

[🚀 Starship](https://starship.rs/) is an enhancement for command prompt in a multitude of shells, powered by Rust.

#### Generic installation

Install the standalone binary

```bash
sudo -v && curl -fsSL https://starship.rs/install.sh | bash
```


#### Installation using `yay`

For Arch and derivatives (enOS, Garuda, Manjaro)

```bash
yay -S starship-bin # or just "starship" if you don't mind compiling the Rust code
```

#### Usage

Append this line in your shell's `*.rc` files and restart your shell to load starship.

`~/.bashrc`
```bash
# ~/.bashrc
eval "$(starship init bash)"
```

`~/.zshrc`
```bash
# ~/.zshrc
eval "$(starship init zsh)"
```

You may need [nerd fonts](https://www.nerdfonts.com/font-downloads) the special characters in the prompt.

## Text-based System monitors

### Bottom

[Bottom](https://github.com/clementtsang/bottom), a resource monitor written in Rust.

To install bottom, either via the [binary release page](https://github.com/ClementTsang/bottom/releases) or via [AUR](https://aur.archlinux.org/packages/bottom/)

```bash
yay -S bottom
```

The command is called `btm`.

### Bpytop

[Bpytop](https://github.com/aristocratos/bpytop), a resource monitor that shows usage and stats for processor, memory, disks, network and processes. Written in Python.

#### Install via `apt`

For Debain, Ubuntu, or PopOS

Via [Azlux's repository](http://packages.azlux.fr/)

```bash
echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
sudo apt update && sudo apt install bpytop
```

#### Install via `yay`

Arch and derivatives (enOS, Garuda, Manjaro) can install `bpytop` [via AUR](https://aur.archlinux.org/packages/bpytop/).

```bash
yay -S bpytop
```

#### Install via `pip`

```bash
pip install bpytop --upgrade --user
```

#### Install via `snap`

```bash
sudo snap install bpytop
sudo snap connect bpytop:mount-observe
sudo snap connect bpytop:network-control
sudo snap connect bpytop:hardware-observe
sudo snap connect bpytop:system-observe
sudo snap connect bpytop:process-control
sudo snap connect bpytop:physical-memory-observe
```

Usage: run `bpytop` in the terminal.

### Glances

[Glances](https://nicolargo.github.io/glances/) is an cross-platform advance system monitor for usage monitoring for CPU, RAM, Network, GPU, etc.

Launch `glances` in the terminal after installation.

#### Official installation scripts

Some distrobution might not support it.

```bash
[[ -x $(command -v curl) ]] && curl -L https://bit.ly/glances | bash

# if curl is not available
[[ -x $(command -v wget) ]] && wget -O- https://bit.ly/glances | bash
```

#### Install via `pacman`

For Arch and derivatives (enOS, Garuda, Manjaro).

```bash
sudo pacman -S glances
```

#### Install via `pip`

```bash
pip install glances --upgrade --user
```

If you also want to monitor nvdia GPUs:

```bash
pip install glances[gpu] --upgrade --user
```

## CLI tools

### Progress

See the speed and progress of ongoing commands. [progress@Github](https://github.com/Xfennec/progress)

#### Installation via `apt`

For Ubuntu or PopOS

```bash
sudo apt install progress
```

#### Install via `pacman`

For Arch and derivatives (enOS, Garuda, Manjaro).

```bash
sudo pacman -S progress
```

#### Usage

Launch `progress` in the terminal. [progress@Github](https://github.com/Xfennec/progress#what-can-i-do-with-it)


### Pipe view (pv)

Shows transfer speed and /or progress through a Unix pipe. [pv@Manpage](https://linux.die.net/man/1/pv)

#### Installation via `apt`

For Ubuntu or PopOS

```bash
sudo apt install pv
```

#### Install via `pacman`

For Arch and derivatives (enOS, Garuda, Manjaro).

```bash
sudo pacman -S pv
```

#### Usage

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

## Terminal program

### Tilix

[Tilix](https://gnunn1.github.io/tilix-web/) is an advanced GTK3 tiling terminal emulator.

#### Installation

Also the script below detects nautilus file manager, to setup `python-nautilus` for `Open tilix here` context menu.

#### Installation via `apt`

For Ubuntu or PopOS

```bash
sudo apt install tilix
[[ -x $(command -v nautilus) ]] && sudo apt install python-nautilus
```

#### Install via `pacman`

For Arch and derivatives (enOS, Garuda, Manjaro).

Also setup `python-nautilus` for `Open tilix here` context menu, if Nautilus file manager is present.

```bash
sudo pacman -S tilix
command -v nautilus && sudo pacman -S python-nautilus
```

#### Set tilix as the default GUI terminal emulator

For Ubuntu or PopOS:

```bash
sudo update-alternatives --config x-terminal-emulator
```

For Arch and derivatives (enOS, Garuda, Manjaro).

Select in `Prefered applications`.
