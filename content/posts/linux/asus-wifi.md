---
title: "Asus USB Wifi"
subtitle: "For Arch-based distributions (Arch, Manjaro, EnOS, Garuda)"
date: 2021-01-31T23:05:53+08:00
author: ""
authorLink: ""
description: ""

tags: ["linux", "wifi", "driver", "manjaro"]
categories: ["Linux"]

hiddenFromHomePage: false
hiddenFromSearch: false
featuredImage: ""
featuredImagePreview: ""

toc:
  enable: true
math:
  enable: false
lightgallery: false
comment: false
---

The wifi chip in ASUS USB N10 Nano (B1) is Realtek 8188EUS[^1] and it works on Linux 5.9, but not Linux 5.10 or later.

<!--more-->

## Manjaro

Both kernel header files and `dkms` are required to install the DKMS driver[^2]:

```bash
sudo pacman -S $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-headers"}' ORS=' ')

sudo pacman -S bc dkms git base-devel
```

Install the driver from [AUR](https://aur.archlinux.org/packages/8188eu-dkms)

```bash
paru -S 8188eu-dkms
```

After installation:

```bash
# Block the default kernel module to use the new driver. This step is optional because the AUR package should do this for you.
echo 'blacklist 8188eu' | sudo tee /etc/modprobe.d/8188eu-blacklist.conf

sudo depmod -a
sudo mkinitcpio -P

sudo reboot
```

If your WiFi is still not working properly, continue with the following steps[^3]:

1. Stop Network Manager
   ```bash
   sudo systemctl stop NetworkManager
   ```
2. Load your module into the kernel
   ```bash
   MODULE=$(hwinfo --wlan | grep "Driver Activation Cmd" | cut -d " " -f9 | tr -d '"') && sudo modprobe $MODULE
   ```
3. Raise your Device (WiFi adapter)
   ```bash
   DEVICE=$(hwinfo --wlan | grep "Device File" | cut -d " " -f5) && sudo ip link set $DEVICE up
   ```
4. Ensure all network adapters are unblocked:
   ```bash
   sudo rfkill unblock all
   ```
5. Then restart network manager:
   ```bash
   sudo systemctl start NetworkManager
   ```

You may try serveral things to increase your success rate:
- Fully shutdonw your computer, including unplug it for a while.
- Plug the WiFi dongle back into a different USB port.
- Boot into BIOS and disable any wired NIC, or reses to default settings.
- Use another working kernel. (I ended up this this solution)

[^1]: Info depot: <http://en.techinfodepot.shoutwiki.com/wiki/ASUS_USB-N10_Nano_rev_B1>
[^2]: Install DKMS driver in Manjaro <https://archived.forum.manjaro.org/t/wifi-adapter-still-not-work-rtl8188eus/124449/2>
[^3]: Install RealTek Wifi driver in Manjaro  <https://archived.forum.manjaro.org/t/realtek-wifi-driver-installation-aur/85429>
