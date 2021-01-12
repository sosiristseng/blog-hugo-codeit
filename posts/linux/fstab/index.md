# Mounting drives at boot in Linux


How to set entries in `/etc/fstab`.

<!--more-->

## Source

[@ArchWiki:fstab](https://wiki.archlinux.org/index.php/Fstab)

## Editing `/etc/fstab`

```bash
sudo nano /etc/fstab
```

Or if you have Plasma desktop and want a GUI editor

```bash
kate /etc/fstab
```

You'll need to provide sudo password upon saving the file.

## Apply `fstab` settings

```bash
sudo mount -a
```

## Check mounted location

`findmnt --target dir`

e.g.

```bash
findmnt --target /tmp
```

## Mount NAS drive at boot

[@ArchWiki](https://wiki.archlinux.org/index.php/Samba#Automatic_mounting) and [@UbuntuManPage](https://manpages.ubuntu.com/manpages/focal/man8/mount.cifs.8.html).

Add the entry in `/etc/fstab` like this.

```txt /etc/fstab
//192.168.50.70/OneDrive\040Business\040(xxxxxxxxx@ntu.edu.tw) /home/username/onedrive cifs uid=sosiristseng,credentials=/root/.cred,iocharset=utf8 0 0
```

💡
- The end of sharename (`//192...`) **should not** leave a trailing `/`
- Spaces in sharename should be replaced by `\040`.
- The local folder you want to mount on (`.../onedrive`) should be empty.
- If `uid` is not set, it defaults to `root`. It could cause some issure for normal users.
- `/root/.cred` for storing username and password instaed of setting `username=<username>,password=<password>` in the options.


```txt  /root/.cred
username=sosiristseng
password=xxxxxx
```

Then set permission to root only

```bash
sudo chmod 600 /root/.cred
```

💡
- `sudo mount -a` to apply changes to `/etc/fstab`.
- You may need to [enable](https://wiki.archlinux.org/index.php/Enable) `systemd-networkd-wait-online.service` or `NetworkManager-wait-online.service` for network drives.

## tmpfs

`tmpfs` is a non-persistent (cleared after reboot) temporay filesystem resides in RAM, especially suitable for `/tmp` or I/O intensive tasks (e.g. compiling, web servers).

For Linux systems with `systemd`. `/tmp` is automatically mounted as `tmpfs`.

If it's not the case, there is the script to fix it [@AskUbuntu](https://askubuntu.com/questions/1232004/mounting-tmp-as-tmpfs-on-ubuntu-20-04).

```bash
sudo cp -v /usr/share/systemd/tmp.mount /etc/systemd/system/
sudo systemctl enable tmp.mount
```

## bind mounts

[@StackExchange](https://unix.stackexchange.com/questions/198590/what-is-a-bind-mount)

An alternative to [symlinks](https://en.wikipedia.org/wiki/Symbolic_link).

```bash
mount --bind /source/folder /view/folder
```

The corresponding `fstab` entry is:

```txt /etc/fstab
/source/folder /view/folder  none  bind   0 0
```

