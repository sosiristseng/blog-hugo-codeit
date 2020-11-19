---
title: "Timeshift"
date: 2020-10-22T14:30:09+08:00
tags: ["timeshift", "cronie", "backup"]
categories: ["Linux", "Packages"]

---

[Timeshift](https://github.com/teejee2008/timeshift), a system backup and restore manager using rsync or btrfs snapshots.

<!--more-->

## 🔽Installation

### Ubuntu/PoPOS
```bash
sudo apt install timeshift
```

### Manjaro
```bash
sudo pacman -S timeshift
```

### Arch / eOS:

Install [timeshift@AUR](https://aur.archlinux.org/packages/timeshift/).

```bash
yay -S timeshift cronie
```

Then [enable](https://endeavouros.com/docs/applications/backup/timeshift/) `cronie` service for periodic snapshots in `rsync` mode.

```bash
systemctl enable --now cronie.service
```
