---
title: "Zotero"
date: 2020-10-21T17:39:48+08:00
tags: ["zotero", "zotfile"]
categories: ["Research"]
comments: false
---

[Zotero](https://www.zotero.org/download/) is an open source reference manager.

<!--more-->

## Installation

<!-- tabs:start -->

### Ubuntu / Pop

Via [zotero-deb](https://github.com/retorquere/zotero-deb)

```bash
wget -qO- https://github.com/retorquere/zotero-deb/releases/download/apt-get/install.sh | sudo bash
sudo apt update
sudo apt install zotero
```

### Manjaro / eOS

Via [zotero@AUR](https://aur.archlinux.org/packages/zotero/)

```bash
yay -S zotero
```

### Windows

[Download](https://www.zotero.org/download/) and install `.exe`

or via chocolatey package manager

```sh
choco install zotero
```

<!-- tabs:end -->

## Storage space for papers

There is limited [storage](https://www.zotero.org/storage) (300MB) in the free plan for attachements and pdf files.

You could use a synced folder in cloud storage instead.[^1]

### ZotFile

[ZotFile](http://zotfile.com/) is an attachment manager for Zotero. Please follow the steps.

- Download the `.xpi` file for ZotFile and install it via the Zotero interface. Restart Zotero.
- In the ZotFile settings, set Location of Files to “Custom Location” and point it to the folder you created in your cloud syncing
- Disable syncing attachment files the library in Zotero preference -> Sync -> Settings -> File Syncing

## Other plugins

See [Plugins for Zotero](https://www.zotero.org/support/plugins) page for details.


[^1]: <https://www.nrel.colostate.edu/set-up-best-reference-manager>
