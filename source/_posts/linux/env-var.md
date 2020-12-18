---
title: Environment variables
tags: ["linux", "shell", "windows"]
categories: ["Linux"]
comments: false
mathjax: false
date: 2020-12-18 16:33:50
---

Setup of environment variables for bash, zsh, fish, as well as Windows.

See [env. variables](https://wiki.archlinux.org/index.php/environment_variables) on Arch Wiki for details.

<!-- more -->

## Globally

`/etc/profile` is sourced by all POSIX sh-compatible shells upon login.

## Bash

- `~/.profile` or `~/.bash_profile` for login bash shells.
- `~/.bashrc` for every bash instance.

## Zsh

- `~/.zshenv` for environment variables in zsh.
- `~/.zprofile` for login zsh shells.
- `~/.zshrc` for every zsh instance.

`PATH` variable is tied to a `path` array.

⚠️ zsh [does not read](https://superuser.com/questions/187639/zsh-not-hitting-profile) `~/.profile` by default due to syntax difference. You can do this instead in `~/.zprofile`

```bash
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
```

## PAM module

`~/.pam_environment` only supports `KEY=VALUE`, `KEY DEFAULT=VALUE`, `${HOME}`, `${SHELL}`.

⚠️ Reading ~/.pam_environment [is deprecated](https://github.com/linux-pam/linux-pam/commit/ecd526743a27157c5210b0ce9867c43a2fa27784).

## systemd

`~/.config/environment.d/*.conf` files are read by systemd in the WayLand session.

## Graphical environment

- `~/.xinitrc` is sourced by `startx`.
- `~/.xprofile` is sourced by display managers (e.g. GDM, SDDM)

## Windows

Source:

- [Wikipedia](https://docs.microsoft.com/zh-tw/windows-server/administration/windows-commands/setx)
- Microsoft docs for [set](https://docs.microsoft.com/zh-tw/windows-server/administration/windows-commands/set_1) and [setx](https://docs.microsoft.com/zh-tw/windows-server/administration/windows-commands/setx)

### Shell variables (`set`)

They will vanish once the shell is closed.

```powershell
set x=123
echo %x%  # You need to wrap the var between % to show the value
```

### User variables

They will be persistent.

- Set `Environment Variables` in the `Advanced` system settings GUI in control panel.
- `setx`. See `setx /?` for the complete options
