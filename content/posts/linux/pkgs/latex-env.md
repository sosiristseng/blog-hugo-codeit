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

[TexLive](https://tug.org/texlive/), the de-facto standard Latex environment.

### Installation

Via `apt`: For Ubuntu / PopOS

```bash
sudo apt install texlive
```

Via `pacman`: For Arch, enOS, Garuda, Manjaro

```bash
sudo pacman -S texlive-most
```

### GitHub action for texlive

GitHub [LaTeX action](https://github.com/xu-cheng/latex-action)

## Tectonic

A modernized, complete, self-contained TeX/LaTeX engine, powered by XeTeX and TeXLive.

Smaller footprint and automatically download the necessary libraries for the document.

### Installation

See the [installation guide](https://tectonic-typesetting.github.io/en-US/install.html) for details.

Via conda:

```bash
conda install tectonic -c conda-forge
tectonic --help # test if the program works
```

Via `yay`. [tectonic@AUR](https://aur.archlinux.org/packages/tectonic/)

```bash
yay -S tectonic
```

### Compile yourself

For example, in Ubuntu, first install the Rust compiler and its dependencies.

```bash
sudo apt-get cargo install libfontconfig1-dev libgraphite2-dev libharfbuzz-dev libicu-dev libssl-dev zlib1g-dev
```

And then download and compile `tectonic`

```bash
cargo install tectonic
```

### GitHub action for tectonic

GitHub [Compile Latex action](https://github.com/marketplace/actions/compile-latex) compiles latex/xelatex files using Tectonic, which automatically downloads necessary dependencies, and compiles your commited files to pdf.
