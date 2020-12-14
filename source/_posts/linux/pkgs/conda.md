---
title: "Install Conda on Linux"
date: 2020-10-22T16:24:43+08:00
tags: ["conda", "python", "linux"]
categories: ["Linux", "Packages"]
comments: false
---

Conda: package, dependency and environment management for any language, particularly Python.

Also see [Conda official docs](https://docs.conda.io/en/latest/).

<!--more-->

## 🔽Installation in Linux

This script will

- Install [miniforge](https://github.com/conda-forge/miniforge)
  - Latest [Miniconda](https://docs.conda.io/en/latest/miniconda.html) (`python` and `conda`.)
  - Community-driven [conda-forge](https://conda-forge.org/) repository.
  - Fast [mamba](https://github.com/mamba-org/mamba) package manager.
- Strict repo ordering for packages.
- Enable multithreading for faster package resolution.
- Integration with`bash` and `zsh` if available.

{% include_code bootstrap-conda.sh %}
