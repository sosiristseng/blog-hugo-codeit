---
title: Command line interfact (CLI) tools
tags: ["bash", "zsh", "shell", "cli", "system monitor", "terminal"]
categories: ["Linux", "Packages"]
comments: false
mathjax: false
date: 2020-12-14 17:50:04
---

Tools for command prompts in bash as well as zsh.

<!-- more -->

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

[🚀 Starship](https://starship.rs/) is an enhancement prompt for many shells, powered by Rust.

#### Installation

{% tabs Starship %}
<!-- tab Generic -->

Install the standalone binary

```bash
sudo -v && curl -fsSL https://starship.rs/install.sh | bash
```

<!-- endtab -->

<!-- tab enOS -->

```bash
yay -S starship-bin # or just "starship" if you don't mind compiling the Rust code
```

<!-- endtab -->
{% endtabs %}

#### Usage

Append this line in your shell's `*.rc` files and restart your shell to load starship.

You'll need [nerd fonts](https://www.nerdfonts.com/font-downloads) for optimal font rendering.

{% tabs StarshipShell %}
<!-- tab bash -->

```bash "~/.bashrc"
eval "$(starship init bash)"
```

<!-- endtab -->

<!-- tab zsh -->

```bash ~/.zshrc
eval "$(starship init zsh)"
```
<!-- endtab -->
{% endtabs %}


## Text-based System monitors

### Bottom

A resource monitor written in Rust. [bottom@github](https://github.com/clementtsang/bottom)

To install bottom, either via the [binary release page](https://github.com/ClementTsang/bottom/releases) or via [AUR](https://aur.archlinux.org/packages/bottom/)

```bash
yay -S bottom
```

The command is called `btm`.

### Bpytop

Resource monitor that shows usage and stats for processor, memory, disks, network and processes. Written in Python. See [bpytop@github](https://github.com/aristocratos/bpytop).

To install, follow the instruction below. Execute `bpytop` in the terminal after this.

{% tabs Bpytop %}
<!-- tab Ubuntu or PopOS -->

Via [Azlux's repository](http://packages.azlux.fr/)

```bash
echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
sudo apt update && sudo apt install bpytop
```

<!-- endtab -->

<!-- tab enOS -->

Via [AUR](https://aur.archlinux.org/packages/bpytop/)

```bash
yay -S bpytop
```

<!-- endtab -->

<!-- tab pip -->

```bash
pip install bpytop --upgrade --user
```

<!-- endtab -->

<!-- tab snap -->

```bash
sudo snap install bpytop
sudo snap connect bpytop:mount-observe
sudo snap connect bpytop:network-control
sudo snap connect bpytop:hardware-observe
sudo snap connect bpytop:system-observe
sudo snap connect bpytop:process-control
sudo snap connect bpytop:physical-memory-observe
```

<!-- endtab -->
{% endtabs %}

### Glances

[Glances](https://nicolargo.github.io/glances/) is an cross-platform advance system monitor for usage monitoring for CPU, RAM, Network, GPU, etc.

Launch `glances` in the terminal after installation.

To insall:

{% tabs Glances %}
<!-- tab Ubuntu or PopOS -->

```bash
curl -L https://bit.ly/glances | /bin/bash

# if curl is not available
wget -O- https://bit.ly/glances | /bin/bash
```

<!-- endtab -->

<!-- tab enOS -->

```bash
sudo pacman -S glances
```

<!-- endtab -->

<!-- tab pip -->

```bash
pip install glances --upgrade --user
```

If you want to monitor nvdia GPUs

```bash
pip install glances[gpu] --upgrade --user
```

<!-- endtab -->
{% endtabs %}


## CLI tools

### Progress

See the speed and progress of ongoing commands. [progress@Github](https://github.com/Xfennec/progress)

#### Installation

{% tabs Progress %}
<!-- tab Ubuntu or PopOS -->

```bash
sudo apt install progress
```

<!-- endtab -->

<!-- tab enOS -->

```bash
sudo pacman -S progress
```

<!-- endtab -->

{% endtabs %}

#### Usage

Launch `progress` in the terminal. [progress@Github](https://github.com/Xfennec/progress#what-can-i-do-with-it)


### Pipe view (pv)

Shows transfer speed and /or progress through a Unix pipe. [pv@Manpage](https://linux.die.net/man/1/pv)

#### Installation

{% tabs Progress %}
<!-- tab Ubuntu or PopOS -->

```bash
sudo apt install pv
```

<!-- endtab -->

<!-- tab enOS -->

```bash
sudo pacman -S pv
```

<!-- endtab -->

{% endtabs %}

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

{% tabs Tilix %}
<!-- tab Ubuntu or PopOS -->

Also setup `python-nautilus` for `Open tilix here` context menu, if Nautilus file manager is present.

```bash
sudo apt install tilix
command -v nautilus && sudo apt install python-nautilus
```

<!-- endtab -->

<!-- tab enOS -->

Also setup `python-nautilus` for `Open tilix here` context menu, if Nautilus file manager is present.

```bash
sudo pacman -S tilix
command -v nautilus && sudo pacman -S python-nautilus
```

<!-- endtab -->
{% endtabs %}

#### Set tilix as the default GUI terminal emulator

{% tabs TilixDefault %}
<!-- tab Ubuntu or PopOS -->

```bash
sudo update-alternatives --config x-terminal-emulator
```

<!-- endtab -->

<!-- tab enOS -->

Select in `Prefered applications`.

<!-- endtab -->
{% endtabs %}
