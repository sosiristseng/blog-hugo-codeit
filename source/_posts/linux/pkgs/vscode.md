---
title: "VS Code"
date: 2020-10-22T15:57:43+08:00
tags: ["developement"]
categories: ["Linux", "Packages"]
comments: true
---

VS Code: [Code editing. Redefined](https://code.visualstudio.com/)

<!--more-->

{% tabs Typora %}

<!-- tab Ubuntu -->

1. [download](https://code.visualstudio.com/) and install the `deb` file
2. or manually setup its repo,

```bash
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

sudo apt update && sudo apt install code
```
<!-- endtab -->

<!-- tab endeavour OS -->

```bash
yay -S visual-studio-code-bin
```

and then set the environment variable in `~/.profile` or `~/.zshenv`:

```bash
export ELECTRON_TRASH=gio
```

<!-- endtab -->

<!-- tab snap -->

```bash
sudo snap install code --classic
```

<!-- endtab -->

{% endtabs %}
