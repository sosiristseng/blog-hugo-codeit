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

In the Julia world, generic functions called [functions](https://docs.julialang.org/en/v1/manual/functions/), while those with type restrictions / parameterizations are called [methods](https://docs.julialang.org/en/v1/manual/methods/).

- Use parameteric [type (structs)](https://docs.julialang.org/en/v1/manual/types/#Parametric-Types) and [methods](https://docs.julialang.org/en/v1/manual/methods/#Parametric-Methods) rather than type-annotate the fields / arguments.
- Traits are functions that return True/False/Error based on the input type. See [holy traits](https://www.juliabloggers.com/the-emergent-features-of-julialang-part-ii-traits/) for more details.
