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

The de-facto standard Latex environment. [TexLive](https://tug.org/texlive/).

### 🔽Installation

{% tabs TexLive %}
<!-- tab Ubuntu -->

```bash
sudo apt install texlive
```

<!-- endtab -->

<!-- tab endeavour OS -->

```bash
sudo pacman -S texlive-most
```

<!-- endtab -->

{% endtabs %}

### GitHub action for texlive

GitHub [LaTeX action](https://github.com/xu-cheng/latex-action)

## Tectonic

A modernized, complete, self-contained TeX/LaTeX engine, powered by XeTeX and TeXLive.

Smaller footprint and automatically download the necessary libraries for the document.

[Installation guide](https://tectonic-typesetting.github.io/en-US/install.html)

{% tabs Tectonic %}
<!-- tab conda -->

```bash
conda install tectonic -c conda-forge
tectonic --help # test if the program works
```

<!-- endtab -->

<!-- tab endeavour OS -->

[tectonic@AUR](https://aur.archlinux.org/packages/tectonic/)

```bash
yay -S tectonic
```

<!-- endtab -->

<!-- tab Compile using cargo -->

For example, in Ubuntu, first install rust compiler and dependencies

```bash
sudo apt-get cargo install libfontconfig1-dev libgraphite2-dev libharfbuzz-dev libicu-dev libssl-dev zlib1g-dev
```

And then download and compile tectonic

```bash
cargo install tectonic
```

<!-- endtab -->

{% endtabs %}

### GitHub action for tectonic

GitHub [Compile Latex](https://github.com/marketplace/actions/compile-latex) in your GitHub repo once a change is committed.
