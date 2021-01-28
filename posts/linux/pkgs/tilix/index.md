# Tilix


[Tilix](https://gnunn1.github.io/tilix-web/) is an advanced GTK3 tiling terminal emulator.

<!--more-->

## Installation via `apt`

For Ubuntu or PopOS

```bash
sudo apt install tilix
[[ -x $(command -v nautilus) ]] && sudo apt install python-nautilus
```

## Install via `pacman`

For Arch and derivatives (enOS, Garuda, Manjaro).

Also setup `python-nautilus` for `Open tilix here` context menu, if Nautilus file manager is present.

```bash
sudo pacman -S tilix
command -v nautilus && sudo pacman -S python-nautilus
```

## Set tilix as the default GUI terminal emulator

For Ubuntu or PopOS:

```bash
sudo update-alternatives --config x-terminal-emulator
```

For Arch and derivatives (enOS, Garuda, Manjaro).

Select in `Prefered applications`.

