---
title: "Julia modules"
date: 2020-10-21T16:08:01+08:00
tags: ["module", "pkg"]
categories: ["Julia"]
---

When the code grows to a certain size and you want to separte the common parts.

<!--more-->

## Reference
- [Pkg.jl docs](https://julialang.github.io/Pkg.jl/v1/)
- [Comparison between v0.6 and v0.7 (SO)](https://stackoverflow.com/questions/36398629/change-package-directory-in-julia/36400065#36400065)
- [Steven's notes](https://www.notion.so/Writing-Module-and-Docstring-in-Julia-0b5b5a8807d1414490269daddba960a0#81bc91f8583e4af39c83f0f55435b433)
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

- The old way for pre-1.0 era
- *No* need for `Project.toml` or `Manifest.toml` in `pwd`.
- Code behavior is determined by states of local files.
- VS Code language server could not work properly in this mode.
- Not recommended now.

## `include("x.jl")` and submodule

For the same file structure, you could include them as submodules like this

```julia
include("./Mod1.jl/src/Mod1.jl")
using .Mod1

include("./Mod2.jl/src/Mod2.jl")
using .Mod2
```

- Best when the submodules are used exclusively in this project.
- Code behavior is determined by local files.
- Use [relative module path](https://stackoverflow.com/questions/54410557/submodule-intra-dependencies-in-julia) when `Mod2` also requires `Mod1`.

## `dev --local pkg...`

[@Julia docs](https://docs.julialang.org/en/v1/stdlib/Pkg/)

In the Julia REPL
```julia-repl
julia> ]
pkg> activate .
pkg> dev --local Mod1 Mod2
```

Or, in Julia script
```julia
import Pkg

# To generate Project.toml if not present
Pkg.activate(".")

Pkg.develop(PackageSpec(path="Mod1.jl"))
Pkg.develop(PackageSpec(path="Mod2.jl"))
```

- Best when `Mod1` and `Mod2` are modified frequently (thus name `dev` for `developing` phase)
- Pkg does not manage updates for `dev` packages. File changes in the modules do.
- The updates are loaded when `using` is invoked. [Revise.jl](https://timholy.github.io/Revise.jl/stable/) tracks and updates modified files and you don't have to restart the Julia process whenever you make changes.

## Hosted from your repo

Make a Git repo for your custom module and upload it to GitHub / Gitlab.

`]add https://github.com/username/Mod1.jl.git`

See [PkgTemplates.jl](https://github.com/invenia/PkgTemplates.jl) for automated package generation.

Nonetheless, it's just one step away from proper [registeration](https://github.com/JuliaRegistries/Registrator.jl) to the general Julia registry.
