---
title: "Install Julia on Linux"
date: 2020-10-22T16:25:54+08:00
tags: ["julia", "linux"]
categories: ["Linux", "Packages"]
comments: false
---

[Julia](https://julialang.org/), A general-purpose programming language focused on ease of syntax, composibility, and high performance.

<!--more-->

## 🔽Installation

Script for Julia installation via [jill.py](https://github.com/johnnychen94/jill.py). Requires `pip` to be installed.

```bash
[[ -x $(command -v pip) ]] && pip install -U --user jill
[[ -x $(command -v pip3) ]] && pip3 install -U --user jill

~/.local/bin/jill install --confirm
```

## Configurations

Open julia terminal: `~/.local/bin/julia`

```julia
import Pkg

Pkg.add(["PackageCompiler", "PkgTemplates", "Revise", "OhMyREPL"])
```

And add the following lines to `~/.julia/config/startup.jl`

```julia
# Reference
# 1. https://discourse.julialang.org/t/my-startup-jl-for-revise-juno/22170
# 2. https://github.com/julia-vscode/julia-vscode/wiki/Known-issues-and-workarounds

# Force local miniconda install
ENV["PYTHON"] = ""
```
