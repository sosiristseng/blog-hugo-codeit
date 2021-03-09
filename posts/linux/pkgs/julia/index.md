# Install Julia on Linux


[Julia](https://julialang.org/), A general-purpose programming language focused on ease of syntax, composibility, and high performance.

<!--more-->

## Installation

Install Julia using [jill](https://github.com/abelsiqueira/jill) bash script:

```bash
bash -ci "$(curl -fsSL https://raw.githubusercontent.com/abelsiqueira/jill/master/jill.sh)"
```

Or via [jill.py](https://github.com/johnnychen94/jill.py) installer. `pip` is required.

```bash
[[ -x $(command -v pip) ]] && pip install -U --user jill
[[ -x $(command -v pip3) ]] && pip3 install -U --user jill

~/.local/bin/jill install --confirm
```

## Configurations

Create a custom  `~/.julia/config/startup.jl` to force local miniconda install.

```bash
mkdir -p ~/.julia/config
touch ~/.julia/config/startup.jl
echo 'ENV["PYTHON"] = ""' >> ~/.julia/config/startup.jl
```

