# Ibus


[ibus](https://github.com/ibus/ibus), the input method framework using DBUS.[^1]

<!--more-->

## Installation

### `apt`

For Ubuntu and PopOS.

```bash
sudo apt install ibus ibus-chewing
```

### `pacman`

For Manjaro, endeavour OS and Garuda Linux.

```bash
sudo pacman -S ibus ibus-chewing
```

## Troubleshoot

If ibus does not load at boot, attach the following lines to `~/.xprofile`.

```bash
# ~/.xprofile
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
ibus-daemon -drx
```

## Change icon color in the system tray

[Use `dconf`](https://wiki.archlinux.org/index.php/IBus#Systray_language_icon_color).

```bash
gsettings set org.freedesktop.ibus.panel xkb-icon-rgba ${COLOR}
```


[^1]: https://wiki.archlinux.org/index.php/IBus

