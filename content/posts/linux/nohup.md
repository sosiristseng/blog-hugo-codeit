---
title: "No hang up (nohup) to run background process continuously"
subtitle: ""
date: 2021-03-13T21:04:19+08:00
author: ""
authorLink: ""
description: ""

tags: ["linux", "nohup", "command line"]
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
---

Use `nohup` to run background process(es) uninterruptedly even when going offline in a remote SSH session.

<!--more-->

## Usage

```bash
nohup mycmd &
```

The output will be in `nohup.out` by default. If you want to customize the output location, just redirect it:

```bash
nohup mycmd &> log.txt &
```

You can also lower the priority for the background process

```bash
nohup nice mycmd &
```

When you're done, you can kill the process by the proccess ID (PID)

```bash
ps -aux | grep "runoob.sh"

kill PID
```


## Reference

- [Bird's Linux Manual](http://linux.vbird.org/linux_basic/0440processcontrol.php#nohup)
- [GT Wang](https://blog.gtwang.org/linux/linux-nohup-command-tutorial/)