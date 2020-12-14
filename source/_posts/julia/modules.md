---
title: "Julia module loading"
date: 2020-10-21T16:08:01+08:00
tags: ["module", "pkg"]
categories: ["Julia"]
---

When the code grows to a certain size and you want to separte the common parts.

<!--more-->

## Reference
- [Pkg.jl docs](https://julialang.github.io/Pkg.jl/v1/)
- [Comparison between v0.6 and v0.7 (SO)](https://stackoverflow.com/questions/36398629/change-package-directory-in-julia/36400065#36400065)
- [Notes of Steven, my colleague](https://www.notion.so/Writing-Module-and-Docstring-in-Julia-0b5b5a8807d1414490269daddba960a0#81bc91f8583e4af39c83f0f55435b433)
- [Lutz Hendricks' notes (pdf)](https://lhendricks.org/julia_notes.pdf)

Assuming we have the file structure for the submodules

```tree
. present working directory (pwd)
| - main.jl
| - Manifest.toml
| - Project.toml
|
+---Mod1.jl
|   | - Manifest.toml
|   | - Project.toml
|   |
|   \---src
|         - Mod1.jl
|
\---Mod2.jl
    | - Manifest.toml
    | - Project.toml
    |
    \---src
          - Mod2.jl
```

## Appending `LOAD_PATH` (⚠️ outdated)

```julia
push!(LOAD_PATH, ".")

using Mod1
using Mod2
```

- The old way before Pkg3 (Julia 1.0). Not recommended now.
- *No* need for `Project.toml` nor `Manifest.toml` in the uppermost directory.
- Code is determined by local files instead of versions.
- VS Code language server could not identify symbols from the custom modules in this mode.

## Submodules: include JL code

Alternatively, you could include them as submodules like this

```julia
include("./Mod1.jl/src/Mod1.jl")
using .Mod1

include("./Mod2.jl/src/Mod2.jl")
using .Mod2
```

- Best when the submodules are used exclusively in this project.
- You need to run `include` again should the code in Mod changes.
- Use [relative module path](https://stackoverflow.com/questions/54410557/submodule-intra-dependencies-in-julia) when `Mod2` also requires `Mod1`.
- May be used recursively with many `include()` calls and `replace module` warnings.

## `dev --local pkg...`

[Julia docs | Pkg | dev](https://docs.julialang.org/en/v1/stdlib/Pkg/)

In the Julia REPL
```julia-repl
julia> ]
pkg> activate .
pkg> dev --local Mod1 Mod2
```

The Julia code counterpart
```julia
import Pkg

# To generate Project.toml if not present
Pkg.activate(".")

Pkg.develop(PackageSpec(path="Mod1.jl"))
Pkg.develop(PackageSpec(path="Mod2.jl"))
```

- Best when `Mod1` and `Mod2` are modified frequently and shared (thus name `dev` for `developing` phase)
- Code is determined by local files instead of Pkg versions.
- The updates are loaded when `using` is invoked, along with precompilation. [Revise.jl](https://timholy.github.io/Revise.jl/stable/) tracks and updates modified files and you don't have to restart the Julia process should you make changes.

## Hosted from your repo

Make a Git repo for your custom module and publish it to Git service providers, e.g. GitHub / Gitlab.

And then you can: `]add https://github.com/username/Mod1.jl.git`

It is recommended to use [PkgTemplates.jl](https://github.com/invenia/PkgTemplates.jl) for automated package generation plus unit test and CI/CD pipelines.

Nonetheless, it's just one step away from proper [registeration](https://github.com/JuliaRegistries/Registrator.jl) to the general Julia registry to used by more people.
