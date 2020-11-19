---
title: "VS Code"
date: 2020-10-22T15:57:43+08:00
tags: ["visual studio code", "developement"]
categories: ["Linux", "Packages"]

---

[Code editing. Redefined](https://code.visualstudio.com/)

<!--more-->

## 🔽Installation

### Ubuntu / PopOS

Either [download](https://code.visualstudio.com/) and install `deb` files or manually setup its repo,

```bash
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

sudo apt update && sudo apt install code
```

### Manjaro / eOS

```bash
yay -S visual-studio-code-bin
```

and then set the environment variable in `~/.profile` or `~/.zshenv`:

```bash
export ELECTRON_TRASH=gio
```
