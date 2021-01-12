---
title: Developing Julia packages
tags: ["devops", "julia"]
categories: ["Code", "DevOps"]
comments: false

date: 2021-01-04 22:35:37
---

Notes about developing Julia packages.

<!--more-->

## Source

1. Developing Julia packages by Chris

{{< youtube QVmU29rCjaA >}}

1. [Developing your Julia package (Medium post)](https://medium.com/coffee-in-a-klein-bottle/developing-your-julia-package-682c1d309507)

## Package structure

[PkgTemplates.jl](https://github.com/invenia/PkgTemplates.jl) is recommended to generate package structures with unit tests and CI/CD integrations.

## Unit testing

Tip: you can have [local dependencies](https://julialang.github.io/Pkg.jl/v1/creating-packages/#Test-specific-dependencies-in-Julia-1.2-and-above) for running tests in `test/Project.toml` without the need of `extra` and `targets` sections in the main project's `Project.toml`.

Though the build-in [unit-test framework](https://docs.julialang.org/en/v1/stdlib/Test/) is good, but [Jive.jl](https://github.com/wookay/Jive.jl) provides more flexibilities.
- Discover unit testing `jl` files automatically.
- Skip or select which test(s) to run.
- Multiprocessing for faster runs.

See [TestJive](https://github.com/wookay/TestJive.jl) for code examples.

## Documentation

Youtube video on [Documenter.jl](https://juliadocs.github.io/Documenter.jl/stable/), the documentation generator for Julia packages.

{{< youtube m3c8Z6HBn48 >}}

Tip: you may need to [generate an SSH key](https://juliadocs.github.io/Documenter.jl/stable/lib/public/#DocumenterTools.genkeys) for deploying docs to GitHub pages.

```julia
using DocumenterTools
DocumenterTools.genkeys(user="you", repo="YourPackage.jl")
```

## Continuous integration / delivery

`PkgTemplates.jl` should set up the appropriate code structure for you. I would recommend to use GitHub to host Julia packages because
- Running GH actions is unlimited for public repositories, with multiple operating systems running concurrently (matrix build).
- Julia github actions are convenient.
- Automation bots integrate better with GitHub. e.g. TagBot, Registerbot, and Compat Helper.
