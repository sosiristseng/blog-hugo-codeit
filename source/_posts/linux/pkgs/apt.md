---
title: "Apt package manager" # Title of the blog post.
date: 2020-11-16T17:18:03+08:00 # Date of post creation.
tags: ["apt", "apt-fast", "synaptic"]
categories: ["Linux", "Packages"]
comments: false # Disable comment if false.
---

Something about `apt` package manager.

<!--more-->

## apt instead of apt-get

From
- [apt@itsfoss](https://itsfoss.com/apt-vs-apt-get-difference/)
- [apt commands@isfoss](https://itsfoss.com/apt-command-guide/)

`apt` command is more tailored towards interactive use and includes commonly-used commands from `apt-get` and `apt-cache`. And it comes with a nice progress bar.

`apt-get` more for scripting use now.

## apt-fast: parallel downloads

[`apt-fast`](https://github.com/ilikenwf/apt-fast) is shellscript wrapper for `apt-get` and `aptitude` that can drastically improve `apt` download times by downloading packages in parallel, with multiple connections per package.

### Interaction-free Installation

```bash
# Set up apt-fast
sudo add-apt-repository -y ppa:apt-fast/stable
echo debconf apt-fast/maxdownloads string 16 | sudo debconf-set-selections
echo debconf apt-fast/dlflag boolean true | sudo debconf-set-selections
echo debconf apt-fast/aptmanager string apt-get | sudo debconf-set-selections
sudo apt update && sudo apt install apt-fast -y
```

### Usage

From the [original post](http://www.mattparnell.com/projects/apt-fast-and-axel-roughly-26x-faster-apt-get-installations-and-upgrades.html):

It's a drop-in replacement of `apt-get`. e.g. `sudo apt-fast update` `sudo apt-fast dist-upgrade`

Should your download stall for any number of reasons, you'll need to do an `apt-fast clean`.

## Synaptic: GUI package manager

`apt-xapian-index` offers quick filter search box in `synaptic` [@UbuntuHandBook](http://ubuntuhandbook.org/index.php/2019/01/enable-quick-filter-search-box-synaptic-package-manager/)

```bash
sudo apt install synaptic apt-xapian-index
```
