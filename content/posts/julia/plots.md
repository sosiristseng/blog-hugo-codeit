---
title: Julia | Plotting
tags: ["visualization", "julia"]
categories: ["Julia"]
comment: false
math:
  enable: true
date: 2020-12-18 22:55:18
---

Notes about Julia plotting for future self. And I'm not duplicating other's work except for the structure of this post.

<!--more-->

## Plotting libraries in Julia

The most famous ones are:
- [Plots.jl](https://github.com/JuliaPlots/Plots.jl): multiple backends, notably [GR](https://github.com/jheinen/GR.jl)
- [PyPlot.jl](https://github.com/JuliaPy/PyPlot.jl): Python's [matplotlib](https://matplotlib.org/)

Other libraries I just saw and have not researched fully:
- [Makie.jl](https://github.com/JuliaPlots/Makie.jl): A new Julia-native plotting library
- [Gaston.jl](https://github.com/mbaz/Gaston.jl): A Julia front-end for [gnuplot](http://www.gnuplot.info/).
- [PGFPlotsX.jl](https://github.com/KristofferC/PGFPlotsX.jl): LaTeX [PGFPlots](https://www.overleaf.com/learn/latex/pgfplots_package) in Julia

## Reference

- `Plots.jl`: [docs](http://docs.juliaplots.org/latest/) for Plots.jl and its [gallery](https://goropikari.github.io/PlotsGallery.jl/), and Tony Allen's [plotting tutorial](https://www.math.purdue.edu/~allen450/Plotting-Tutorial.html).
- `PyPlot.jl`: [docs of matplotlib](https://matplotlib.org/) and the [gallery](https://gist.github.com/gizmaa/7214002) of PyPlot.jl.
- `Makie.jl`: [docs](http://makie.juliaplots.org/stable/) for Makie.jl and its [gallery](http://juliaplots.org/MakieReferenceImages/gallery/index.html).
- `Gaston.jl`: [docs](https://mbaz.github.io/Gaston.jl/stable/) for Gaston.jl and the [v5.4 manual (pdf)](http://www.gnuplot.info/docs_5.4/Gnuplot_5_4.pdf) of gnuplot.
- `PGFPlotsX.jl`: [docs](https://kristofferc.github.io/PGFPlotsX.jl/stable/) for PGFPlotsX.jl and the [manual (pdf)](http://pgfplots.sourceforge.net/pgfplots.pdf) of PGFPlots.

## Tips about Plots.jl

### You don't have to generate data points

Plots.jl suppots function plotting.

- `plot(f, tmin, tmax)` or `plot(f, tArray)`
- `plot(fx, fy, tmin, tmax)` or `plot(fx, fy, tArray)`

For example, you can easily draw a [parametric plot](http://docs.juliaplots.org/latest/generated/gr/#gr-ref3) like this

```julia
# plotting (x(t), y(t))
plot(sin, (x-> sin(2x)), 0, 2π, line = 4, leg = false)
```

Or make a contour plot without precalculating the function values

```julia
x = 1:0.5:20
y = 1:0.5:10

g(x, y) = (3x + y ^ 2) * abs(sin(x) + cos(y))

# Precalculate the value
X = repeat(reshape(x, 1, :), length(y), 1)
Y = repeat(y, 1, length(x))
Z = map(g, X, Y)
p2 = contour(x, y, Z)

# Generate z value on-the-fly
p1 = contour(x, y, g, fill=true)
plot(p1, p2)
```

### Subplots

You can combine multiple plots into one single plot.

```julia
l = @layout [a ; b c]
p1 = plot(...)
p2 = plot(...)
p3 = plot(...)
plot(p1, p2, p3, layout = l)
```

See also [layouts](http://docs.juliaplots.org/latest/layouts/#layouts) for more options.

### Supported styles

From [this tutorial](https://www.math.purdue.edu/~allen450/Plotting-Tutorial.html).

```julia
# tip: use Plots.supported_styles() or Plots.supported_markers() to see which linestyles or markershapes you can use
@show Plots.supported_styles();
@show Plots.supported_markers();
```

### Images

```julia
# usingPkg; Pkg.add("Images")
using Images
img1 = load("dog.jpg")
plot(img1)
```

## Tips about PyPlot.jl

### Dealing with installation errors

Since PyPlot.jl depends on the Python package `matplotlib`, sometimes simply `]add` the package will not work due to some quirks in the installation process.

It is recommended to have a clean [Conda environment inside Julia](https://github.com/JuliaPy/Conda.jl) to minimize installation issues.

To enforce a conda environment inside Julia, set the `PYTHON` environment variable to an empty string.[^1][^2]

```julia
ENV["PYTHON"]=""
```

Finally rebuild the related packages.

```julia
import Pkg
Pkg.build(["PyCall", "Conda", "PyPlot"])
```

[^1]: <https://github.com/JuliaPy/PyCall.jl>
[^2]: You can also add this line to `~/.julia/config/startup.jl` to ensure Julia would use its own Python environment forever.
