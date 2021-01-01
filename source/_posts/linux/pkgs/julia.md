---
title: "Install Julia on Linux"
date: 2020-10-22T16:25:54+08:00
tags: ["julia", "linux"]
categories: ["Linux", "Packages"]
comments: false
---

[Julia](https://julialang.org/), A general-purpose programming language focused on ease of syntax, composibility, and high performance.

<!--more-->

## Installation

Install Julia using [jill](https://github.com/abelsiqueira/jill) bash script:

```bash
bash -ci "$(curl -fsSL https://raw.githubusercontent.com/abelsiqueira/jill/master/jill.sh)"
```

Or use [jill.py](https://github.com/johnnychen94/jill.py) python script, requiring `pip`.

```bash
[[ -x $(command -v pip) ]] && pip install -U --user jill
[[ -x $(command -v pip3) ]] && pip3 install -U --user jill

~/.local/bin/jill install --confirm
```

## Configurations

Open julia in terminal by typing `~/.local/bin/julia` and enter the commands

```bash
~/.local/bin/julia -e 'import Pkg; Pkg.add(["PkgTemplates", "Revise", "PackageCompiler"])'
```

And add the following lines to `~/.julia/config/startup.jl`

```julia
# Force local miniconda install
ENV["PYTHON"] = ""
```
