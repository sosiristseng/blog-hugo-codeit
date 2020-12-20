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

## Community and support

Julia has a tighter community, with fewer members but most of them are willing to help each other.

Be sure to check out the [Julia Discourse Forum][forum] if you have any questions.

The docs in Julia packages may be incomplete or outdated because the limited resources of the develpers doing the workfor free (many are maintained by only 1 or 2 people). You can:
- Ask nicely in the [forum][]. See the forum post [make it easier to help you](https://discourse.julialang.org/t/psa-make-it-easier-to-help-you/14757) first before posting your questions.
- If you are pretty sure it's the issue about a particular package, you could submit an issue on their GitHub / GitLab. The rules in the above post still apply.
- Even better, you could propose a change in their code by submitting a pull request (PR).

## Language paradigm

Julia uses the [multiple dispatch paradigm](https://opensourc.es/blog/basics-multiple-dispatch/) as the core concept of the language, which is quite different from the object-oriented ones, e.g. Python. Julia it chooses which method is called based on the types of each argument, instead of the binding to the object as in Python's case. This concept makes Julia extremely flexible and composable as long as the methods are compatible. For instance, one could [combine neural networks with differential equations](https://github.com/SciML/DiffEqFlux.jl) and make the code run on GPUs without too much hassle.

My two cents was that Julia separates **algorithm** and **data**. While data is still stored in objects e.g. `struct`, [functions / methods](https://docs.julialang.org/en/v1/manual/methods/) define the algorithm and are not tightly coupled to the objects. And this multiple dispatch paradigm, IMO, make Julia a **function-first** programming language. This hit my colleague, who is a Python familiar and a **class-first** person, pretty hard when he tried to transition his Python models to Julia ones. As for me, who only had touched Python for 6 months when encountering Julia, this representation is much closer to the mathematical notations and thus I just simply accepted it.

## Packages and environments

It is recommended to maintain a minimal root environment (with a few necessary packages like Revise.jl) and [customize the local Julia project environment](https://opensourc.es/blog/all-about-pkg/#environments) by `pkg> activate .` and then `pkg> add` the packages you need. This minimize the chances of package version conflicts and make your project reproducible since the state of its environment is recorded in `Project.toml` and `Manifest.toml`.

It might be beneficial to [wrap](https://docs.julialang.org/en/v1/manual/workflow-tips/#A-basic-editor/REPL-workflow) your developing Julia code into your own package(s) / modules because

- Separating the define names into different namespaces (modules) reduces the risk of name clash.
- Creating Julia packages is light-weight: `pkg> generate PkgName` only yields two files (one `jl` and one `toml`).
- [Revise.jl](https://github.com/timholy/Revise.jl) could watch file system changes and update the code in the loaded packages / modules automatically.
- Consider [PkgTemplates](https://github.com/invenia/PkgTemplates.jl) to generate the template for more functions like CI testing and code coverage.

[forum]: https://discourse.julialang.org/
