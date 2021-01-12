---
title: "Install Conda"
date: 2020-10-22T16:24:43+08:00
tags: ["conda", "python", "linux"]
categories: ["Code"]
---

Conda: package, dependency and environment management for any language, especially in scientific Python.

Also see [Conda official docs](https://docs.conda.io/en/latest/).

<!--more-->

## For Windows Users

Download and install the [Anaconda distribution](https://www.anaconda.com/products/individual) for a quick setup.

## Installation in Linux

I made a custom script to

- Install [miniforge](https://github.com/conda-forge/miniforge) with
  - Latest [Miniconda](https://docs.conda.io/en/latest/miniconda.html) (`python` and `conda`.)
  - Community-driven [conda-forge](https://conda-forge.org/) repository.
  - Fast [mamba](https://github.com/mamba-org/mamba) package manager.
- Use strict repository ordering.
- Enable multithreading for faster package resolution in `conda`.
- Integration with `bash` and `zsh` shells if available.

```bash
CONDA_PATH="${HOME}/conda"
CONDA_SH="${CONDA_PATH}/etc/profile.d/conda.sh"
CONDA_URL="https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh"

# Download and install miniconda
wget -O /tmp/conda.sh "${CONDA_URL}"
bash /tmp/conda.sh -bup "${CONDA_PATH}"

source "${CONDA_SH}"
conda activate base

# conda package manager setup
conda config --add channels conda-forge
conda config --set channel_priority strict
conda config --set default_threads "$(nproc)"
conda config --set auto_activate_base false
mamba update -n base conda --yes
mamba update --all --yes

# `bash` and `zsh` integration
[[ -f ~/.bashrc ]] && conda init bash
[[ -f ~/.zshrc ]] && conda init zsh
```
