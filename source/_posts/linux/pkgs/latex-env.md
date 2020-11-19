---
title: "Latex environment in Linux"
date: 2020-10-27T14:55:25+08:00
tags: ["latex", "texlive", "tectonic"]
categories: ["Linux", "Packages"]
comments: false
---

Setup Latex environment.

<!--more-->

## TexLive

[@TexLive](https://tug.org/texlive/)

The de-facto standard Latex environment.

### 🔽Installation in Ubuntu/PoPOS

```bash
sudo apt install texlive
```

### 🔽Installation in Arch/eOS

```bash
sudo pacman -S texlive-most
```

### GitHub action

GitHub [LaTeX action](https://github.com/xu-cheng/latex-action)

## Tectonic

A modernized, complete, self-contained TeX/LaTeX engine, powered by XeTeX and TeXLive.

Smaller footprint and automatically download the necessary libraries for the document.

[Installation guide](https://tectonic-typesetting.github.io/en-US/install.html)

### 🔽Installation via conda

```bash
conda install tectonic -c conda-forge
tectonic --help # test if the program works
```

### 🔽Installation via AUR

[tectonic@AUR](https://aur.archlinux.org/packages/tectonic/)

In Arch Linux and derivatives (Manjaro, endeavour OS)

```bash
yay -S tectonic
```

### 🔽 `cargo install`

Install `tectonic` by Rust package manager.

For example, in Ubuntu, install rust compiler and dependencies of tectonic first.

```bash
sudo apt-get cargo install libfontconfig1-dev libgraphite2-dev libharfbuzz-dev libicu-dev libssl-dev zlib1g-dev
cargo install tectonic
```

### GitHub action

GitHub [Compile Latex](https://github.com/marketplace/actions/compile-latex) in your GitHub repo once a change is committed.
