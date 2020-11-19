---
title: "Install Conda on Linux"
date: 2020-10-22T16:24:43+08:00
tags: ["conda", "python"]
categories: ["Linux", "Packages"]
comments: false
---

Package, dependency and environment management for any language.

<!--more-->

Also see [Conda official docs](https://docs.conda.io/en/latest/) official

## 🔽Installation in Linux

This script will:

- Install latest [Miniconda](https://docs.conda.io/en/latest/miniconda.html), i.e., `python` and `conda`.
- Enable community-driven [conda-forge](https://conda-forge.org/) repository with strict repo ordering for more packages.
- Enable multithreading for faster package resolution.
- Install [mamba](https://github.com/mamba-org/mamba) package manager, a fast drop-in replacement to `conda` package manager.
- Integrate with`bash` and `zsh`

```bash
#!/usr/bin/env bash
# Install conda (Python) and Julia
#=
set -euxo pipefail
CONDA_PATH="${HOME}/conda"
CONDA_SH="${CONDA_PATH}/etc/profile.d/conda.sh"
CONDA_URL="https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"

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
conda update -n base conda --yes
conda update --all --yes

# Installs mamba package manager
conda install mamba --yes

# `bash` and `zsh` integration
[[ -f ~/.bashrc ]] && conda init bash
[[ -f ~/.zshrc ]] && conda init zsh
```
