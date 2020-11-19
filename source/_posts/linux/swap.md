---
title: "Setting up swap"
date: 2020-10-21T17:16:28+08:00
tags: ["swap"]
categories: ["Linux"]
comments: false
---

<!--more-->

## Swapiness

[@dotblogs](https://dotblogs.com.tw/grayyin/2018/01/10/135915)

To reduce swap partition/file writes and keep more data in RAM.

```bash
echo 'vm.swappiness = 10' | sudo tee -a /etc/sysctl.conf
sudo sysctl -p            # you should see 'vm.swappiness = 10'
```

## Swap file instead of swap partition

More flexibility in disk space and partition.

[@PoP planet](https://pop-planet.info/wiki/index.php?title=Swapfile)

```bash
# Make a 512 MB swapfile.
sudo dd if=/dev/zero of=/swapfile bs=1M count=512
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
```

Then add this line to `/etc/fstab`.

```text
/swapfile none swap defaults 0 0
```
