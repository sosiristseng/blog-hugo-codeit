# Timeshift


[Timeshift](https://github.com/teejee2008/timeshift), a system backup and restore manager using `rsync` or `btrfs` snapshots.

<!--more-->

### Install via `apt`

```bash
sudo apt install timeshift
```

### Install via `yay`

Install [timeshift@AUR](https://aur.archlinux.org/packages/timeshift/).

```bash
yay -S timeshift cronie
```

Then [enable](https://endeavouros.com/docs/applications/backup/timeshift/) `cronie` service for periodic snapshots in `rsync` mode.

```bash
systemctl enable --now cronie.service
```

