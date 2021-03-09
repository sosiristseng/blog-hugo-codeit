# Latex environment in Linux


Setup $\LaTeX$ environment in Linux.

<!--more-->

## TexLive

[TexLive](https://tug.org/texlive/), the de-facto standard Latex environment.

Install LaTex via the script below

```bash
# Ubuntu, PopOS, KDE Neon
[[ -x $(command -v apt) ]] && sudo apt install texlive-latex-recommended

# Arch, enOS, Garuda, Manjaro
[[ -x $(command -v pacman) ]] && sudo pacman -S texlive-most
```

## Tectonic

A modernized, complete, self-contained TeX/LaTeX engine, powered by XeTeX and TeXLive.

Smaller footprint and automatically download the necessary libraries for the document.

### Installation

You can install compiled version of `tectonic` in conda-forge.[^1]

```bash
conda install tectonic -c conda-forge
tectonic --help # test if the program works
```

For Arch-based systems, install [tectonic@AUR](https://aur.archlinux.org/packages/tectonic/)

```bash
paru -S tectonic
```

### Compile from source

For example, in Ubuntu, first install the Rust compiler and its dependencies.

```bash
sudo apt-get cargo install libfontconfig1-dev libgraphite2-dev libharfbuzz-dev libicu-dev libssl-dev zlib1g-dev
```

And then download and compile `tectonic`

```bash
cargo install tectonic
```

## CI/CD for LaTeX

GitHub actions for automatically compile LaTeX documents on push

- Texlive's [LaTeX action](https://github.com/xu-cheng/latex-action)
- Tectonic's [Compile Latex](https://github.com/marketplace/actions/compile-latex)

[^1]: Tectonic [installation guide](https://tectonic-typesetting.github.io/en-US/install.html)
