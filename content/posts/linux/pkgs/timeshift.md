---
title: "Timeshift"
date: 2020-10-22T14:30:09+08:00
tags: ["backup", "timeshift"]
categories: ["Linux", "Packages"]
comment: true
---

[Timeshift](https://github.com/teejee2008/timeshift), a system backup and restore manager using `rsync` or `btrfs` snapshots.

<!--more-->

### Install via apt

```bash
sudo apt install timeshift
```

### Install via AUR

Install [timeshift@AUR](https://aur.archlinux.org/packages/timeshift/).

```bash
paru -S timeshift cronie
```

Then [enable](https://endeavouros.com/docs/applications/backup/timeshift/) `cronie` service for periodic snapshots in `rsync` mode.

```bash
systemctl enable --now cronie.service
```
