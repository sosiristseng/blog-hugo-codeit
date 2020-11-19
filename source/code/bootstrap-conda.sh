#!/usr/bin/env bash

CONDA_PATH="${HOME}/conda"
CONDA_SH="${CONDA_PATH}/etc/profile.d/conda.sh"
CONDA_URL="https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"

wget -O /tmp/conda.sh "${CONDA_URL}"
bash /tmp/conda.sh -bup "${CONDA_PATH}"

source "${CONDA_SH}"
conda activate base
conda init bash zsh
conda config --add channels conda-forge
conda config --set channel_priority strict
conda config --set default_threads "$(nproc)"
conda config --set auto_activate_base false
conda update -n base conda --yes
conda update --all --yes

# Install commonly-used packages
conda install jupyterlab seaborn scipy numpy pandas numba matplotlib --yes
