---
title: Thoughts about Julia (the programming language)
tags: ["julia"]
categories: ["Julia"]
comments: true
mathjax: false
date: 2020-12-20 17:46:45
---

Some thoughts when I and my friends were doing programming projects in [Julia](/categories/julia/).

<!-- more -->

## References

- [Julia docs](https://docs.julialang.org/en/v1/)
- [opensourc.es](https://opensourc.es/blog/)
- [Hands on Design patterns in Julia](https://www.packtpub.com/product/hands-on-design-patterns-and-best-practices-with-julia/9781838648817), the book by Tom kwong.

## Community and support

Julia has a tighter community, with fewer members but most of them are willing to help each other.

Be sure to check out the [Julia Discourse Forum][forum] if you have any questions.

The docs in Julia packages may be incomplete or outdated because the limited resources of the develpers doing the workfor free (many are maintained by only 1 or 2 people). You can:
- Ask nicely in the [forum][]. See the forum post [make it easier to help you](https://discourse.julialang.org/t/psa-make-it-easier-to-help-you/14757) first before posting your questions.
- If you are pretty sure it's the issue about a particular package, you could submit an issue on their GitHub / GitLab. The rules in the above post still apply.
- Even better, you could propose a change in their code by submitting a pull request (PR).

[forum]: https://discourse.julialang.org/


## Design patterns and language paradigm

My impressions so far was that, Julia is a _functional interface-first_ programming language, by the power of [multiple dispatch paradigm](https://opensourc.es/blog/basics-multiple-dispatch/), to make Julia a much more flexible (in programming) and composable (between packages: e.g. [DiffEq + Flux + GPU kernel](https://github.com/SciML/DiffEqFlux.jl)) language, and more natural in terms of mathematical notations. However, it requires a vastly different mindset for users coming from the object-oriented world (like my Python colleague, previously a **class-first** person ).

### Project environments

It is recommended to maintain a minimal root environment (with a few necessary packages like Revise.jl) and [customize the local Julia project environment](https://opensourc.es/blog/all-about-pkg/#environments) by the following steps:

1. Go to your project folder and run `julia --project=.`. This will run `pkg> activate .` for you.
2. Add you packages by `pkg> add Pkg1 Pkg2...`

### Packages and modules

Julia also encourages making your own packages and submodules, even for temporary uses, to utilize unit-testing, precompilation, and to prevent name collision.

- Creating Julia packages is light-weight: `pkg> generate PkgName` only yields two files (one `jl` and one `toml`).
- [Revise.jl](https://github.com/timholy/Revise.jl) could watch file system changes and update the code in the loaded packages / modules automatically.
- For a more complete package, consider [PkgTemplates](https://github.com/invenia/PkgTemplates.jl) for more functionalities like CI testing and code coverage.

### Functional interfaces

In the Julia world, generic functions called [functions](https://docs.julialang.org/en/v1/manual/functions/), while those with type annotations / parameterizations are called [methods](https://docs.julialang.org/en/v1/manual/methods/).

- Abstract types cannot have fields. They are only meant to be inherited with their functional interfaces. Concrete types (structs with fields), on the other hand, cannot not be inherited.
- Use parameteric [type (structs)](https://docs.julialang.org/en/v1/manual/types/#Parametric-Types) and [methods](https://docs.julialang.org/en/v1/manual/methods/#Parametric-Methods) rather than directly type-annotate the fields / arguments.
- Traits are functions that return True/False/Error based on the input type. See [holy traits](https://www.juliabloggers.com/the-emergent-features-of-julialang-part-ii-traits/) for more details.

### Delegation pattern

Wrapping established packages to reuse their code at the cose of an additional layer of indirection.

### Holy traits

[Holy traits](https://www.juliabloggers.com/the-emergent-features-of-julialang-part-ii-traits/) are named after Tim Holy.

- Traits are empty structs.
- Data types are assigned catagorically to traits' interfaces, implementing different behavior for different kind of data type.
- Traits heirarchy could be separated from the type heirarchy they modeled.

[SimpleTraits.jl](https://github.com/mauro3/SimpleTraits.jl) automates some of the boilerplate for you.

### Global constant

Global variable are discouraged for performance reasons, but global constants are welcomed in Julia since the compiler can optimize global constants.

### Struct of arrays (SoA)

Struct of arrays (SoA) are superior to array of structs (AoS) in terms of performance in SIMD and GPU.

[StructArrays](https://github.com/JuliaArrays/StructArrays.jl) handles the mapping of AoS (on the surface) to SoA (in the memory).

### Memoization

To save duplicated work in repetitive / recursive calls.

You can implement memoization by yourself using function wrapper, local cache, and closure. But [Memoize](https://github.com/JuliaCollections/Memoize.jl) would do the hard work for you.

### Barrier functions for type stability

Julia code will run slower in type-unstable code. You can use `@code_warntype` in front of an expression to spot type instability. (or use `@inferred` in unit tests)

- Use generic functions (aka barrier functions). e.g. `zero(x)` instead of `0`.
- [Separate kernel functions](https://docs.julialang.org/en/v1/manual/performance-tips/#kernel-functions)

### Keyword definition

Less boilerplate code for struct initialization.

[Parameters.jl](https://github.com/mauro3/Parameters.jl) package or built-in `@kwdef` and structs.

### Accessor: getters and setters

Customize `Base.getproperty()` for getters and `Base.setproperty!()` for setters.

### Let blocks

`let` blocks defines a local namespace. The variables defined inside a let block cannot be accessed outside.

### Functional pipes

Useful in data pipelines. Checkout [Chain.jl](https://github.com/jkrumbiegel/Chain.jl) for enhanced pipelines.

## Anti-patterns in Julia

- Piracy: redefining an existing function or twisting the behavior of a function
- Narrow argument type
- Non-concrete field type: `struct A x::Real end` provides no performance benefit against a plain `struct A x end`. Use parametric types instead.
  ```julia
  struct A{T<:Real}
    x::T
  end
  ```
