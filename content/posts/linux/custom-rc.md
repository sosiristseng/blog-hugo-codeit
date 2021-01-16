---
title: "Organize custom rc files"
date: 2020-10-21T17:23:15+08:00
tags: ["shell", "linux", "command line"]
categories: ["Linux"]
comment: false
---

Organize your custom `rc` entries (e.g. `.bashrc`, `zshrc`) into a bunch of files inside a directory.

<!--more-->

From a [Medium post](https://medium.com/@waxzce/use-bashrc-d-directory-instead-of-bloated-bashrc-50204d5389ff).

Create a folder for `*.bashrc` files.
```bash
mkdir -p -m 770 ~/.bashrc.d
```

Then add this line to make `~/.bashrc` run the scripts.
```bash
echo 'for f in ~/.bashrc.d/*.bashrc; do . "${f}" done' >> ~/.bashrc
```

Then put your custom `.bashrc` files into this folder.

The files are loaded in alphabetical order. If you want a perticular loading order, prepend numbers like `01-abc.bashrc`, `02-def.bashrc`, ....
