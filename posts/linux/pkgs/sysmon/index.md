# System monitors


Monitoring system resources and usage.

<!--more-->

## Bottom

[Bottom](https://github.com/clementtsang/bottom), a resource monitor written in Rust.

To install bottom, either via the [binary release page](https://github.com/ClementTsang/bottom/releases) or via [AUR](https://aur.archlinux.org/packages/bottom/)

```bash
paru -S bottom
```

Execute `btm` to start.

## Bpytop

[Bpytop](https://github.com/aristocratos/bpytop), a resource monitor that shows usage and stats for processor, memory, disks, network and processes. Written in Python.

After installation, run `bpytop` in the terminal.

### Install via apt

For Debain, Ubuntu, or PopOS

Via [Azlux's repository](http://packages.azlux.fr/)

```bash
echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
sudo apt update && sudo apt install bpytop
```

### Install via AUR

Arch and derivatives (enOS, Garuda, Manjaro) can install `bpytop` [via AUR](https://aur.archlinux.org/packages/bpytop/).

```bash
paru -S bpytop
```

### Install via pip

```bash
pip install bpytop --upgrade --user
```

### Install via snap

```bash
sudo snap install bpytop
sudo snap connect bpytop:mount-observe
sudo snap connect bpytop:network-control
sudo snap connect bpytop:hardware-observe
sudo snap connect bpytop:system-observe
sudo snap connect bpytop:process-control
sudo snap connect bpytop:physical-memory-observe
```

## Glances

[Glances](https://nicolargo.github.io/glances/) is an cross-platform advance system monitor for usage monitoring for CPU, RAM, Network, GPU, etc.

Launch `glances` in the terminal after installation.

### Official installation scripts

Some distrobution might not support it.

```bash
[[ -x $(command -v curl) ]] && curl -L https://bit.ly/glances | bash

# if curl is not available
[[ -x $(command -v wget) ]] && wget -O- https://bit.ly/glances | bash
```

### Install via pacman

For Arch and derivatives (enOS, Garuda, Manjaro).

```bash
sudo pacman -S glances
```

### Install via pip

```bash
pip install glances --upgrade --user
```

If you also want to monitor nvdia GPUs:

```bash
pip install glances[gpu] --upgrade --user
```

