---
title: "Bpytop"
date: 2020-10-22T14:20:43+08:00
tags: ["system monitor", "bpytop"]
categories: ["Linux", "Packages"]

---

Resource monitor that shows usage and stats for processor, memory, disks, network and processes.

[bpytop@github](https://github.com/aristocratos/bpytop)

<!--more-->

## 🔽Installation


### Ubuntu / PopOS

Via `apt`[^apt] @ [Azlux's repository](http://packages.azlux.fr/)

```bash
echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
sudo apt update
```

### Manjaro / endeavour OS

- Via [AUR](https://aur.archlinux.org/packages/bpytop/)[^pacman]
```bash
yay -S bpytop
```

### Via `pip`
```bash
pip install bpytop --upgrade --user
```

### Via snap

```bash
sudo snap install bpytop
sudo snap connect bpytop:mount-observe
sudo snap connect bpytop:network-control
sudo snap connect bpytop:hardware-observe
sudo snap connect bpytop:system-observe
sudo snap connect bpytop:process-control
sudo snap connect bpytop:physical-memory-observe
```
## Usage

Enter `bpytop` in the terminal.
