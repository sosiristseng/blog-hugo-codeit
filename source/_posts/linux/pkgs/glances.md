---
title: "Glances"
date: 2020-10-22T14:15:28+08:00
tags: ["system monitor", "glances"]
categories: ["Linux", "Packages"]

---

[Glances](https://nicolargo.github.io/glances/) is an cross-platform advance system monitor for usage monitoring for CPU, RAM, Network, GPU, etc.

<!--more-->

## 🔽Installation

### Ubuntu / PopOS

```bash
curl -L https://bit.ly/glances | /bin/bash

# if curl is not available
wget -O- https://bit.ly/glances | /bin/bash
```

### Manjaro / eOS

```bash
sudo pacman -S glances
```

### PyPi

```bash
pip install glances --upgrade --user
```

If you want to monitor nvdia GPUs

```bash
pip install glances[gpu] --upgrade --user
```

## Usage

Launch `glances` in the terminal.
