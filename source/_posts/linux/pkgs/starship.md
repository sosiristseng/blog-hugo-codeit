---
title: "Starship"
date: 2020-10-22T13:51:43+08:00
tags: ["bash", "zsh", "starship", "rust", "shell", "cli"]
categories: ["Linux", "Packages"]

---

[🚀 Starship](https://starship.rs/) is an enhancement for bash / zsh / fish shells powered by Rust.

<!--more-->

## 🔽Installation

### Generic standalone binary

```bash
sudo -v && curl -fsSL https://starship.rs/install.sh | bash
```

### Via AUR

```bash
yay -S starship
# yay -S starship-bin  # if you don't want to compile Rust files
```

## Usage

Append this line in your shell setting files `*.rc` and restart your shell to load starship.

For bash
```bash
# ~/.bashrc

eval "$(starship init bash)"
```

For zsh
```bash
# ~/.zshrc

eval "$(starship init zsh)"
```

You may need [nerd fonts 🔤](https://www.nerdfonts.com/font-downloads) for optimal font rendering.
