---
title: Solving Differential Equations in Julia
tags: ["ODE", "julia"]
categories: ["Julia"]
comments: false
math:
  enable: true
date: 2020-12-21 14:49:52
---

Thoughts and tips about solving differential equations in Julia using [DifferentialEquations.jl](https://github.com/SciML/DifferentialEquations.jl).

<!-- more -->

## Resources

- [Official docs](https://diffeq.sciml.ai/stable/) of DifferentialEquations.jl. The [FAQ sections](https://diffeq.sciml.ai/stable/basics/faq/#faq) are worth reading for intermediate users.
- [Examples](https://github.com/SciML/SciMLTutorials.jl) of DifferentialEquations.jl (some might be outdated, PRs welcome)

## General form of ODE problems

From the [overview](https://diffeq.sciml.ai/stable/basics/overview/) of DifferentialEquations.jl.

```julia
# Or the in-place form of f(du, u, params, t) = ...
f(u, params, t) = ...
prob = ODEProblem(f, u0, timeSpan, params)
```

### Initial conditions

Three forms:

- scalar
- vector (Mention LabelledArrays)
- functional form: `u(p, t0)` when returns `u0`, when initial conditions depend on parameters

### Time span

Three forms:

- tuple: `(tstart, tend)`. The ones you'll see in tutorials.
- single: `tend`, equivalent to `(0, tend)`
- functional: `t(p)` which returns `(tstart, tend)`, when the time span depends on parameters

### Parameters

Parameters (`params`) in the DE problem in DifferentialEquations.jl are optional and liberal.

They could be tuples, namedtuples, arrays, functions, etc. As long as they are compatible with the `f(u, params, t)` you wrote.

### Remaking a problem

Problem objects are immutable, but you can [remake](https://diffeq.sciml.ai/stable/basics/problem/#Modification-of-problem-types) a problem based on an existing one.

This is useful in [ensemble simulations](https://diffeq.sciml.ai/stable/tutorials/sde_example/#Ensemble-Simulations).

## Discontiuities and numerical instabilities

Taken from a [post](https://discourse.julialang.org/t/handling-instability-when-solving-ode-problems/9019/5) from the Julia forum.

For example, there is a conditional statement in your model like `k9*X3/(k10*k11/(k12*(1.-min(1.,k13+k14*X5))) + X3)` (notice the `min()` function). Calculating derivatives across this discontiuity might be challenging for the solver.

### Option 1: Turn off autodiff to use finite differencing instead

Set `autodiff=false` in the solver, for example:
```julia
sol = solve(prob,Rosenbrock23(autodiff=false))
sol = solve(prob,Rodas4(autodiff=false))
```

Or use `CVODE_BDF` since it uses finite differencing by default.

However, disable autodiff increases the number of evaluation significantly and makes the solver less efficient.

### Option 2: Replace the discontinuities with smooth functions

Replacing step functions / `min()` / `max()` with `tanh()` or `exp()` increases problem stiffness but it is fine for stiff (implicit) solvers.

```julia
smooth_min(x, y, k=10) = (exp(-k * x) + exp(-k * y)) / (exp(x) + exp(y))

smooth_step(v1, v2, t, k=10) = ((v2 - v1) * tanh( k * (x-t) ) + (v1 + v2) ) / 2
```

### Option 3: Use callbacks to mark discontiuities

Using callbacks may reset the integrator state and make computation more expensive.

```julia
condition(u,t,integrator) = k13+k14*u[5] - 1
affect!(integrator) = nothing
cb = ContinuousCallback(condition,affect!,save_positions=(false,false))

# And then
sol = solve(prob,Rosenbrock23(autodiff=false), callback=cb)
sol = solve(prob,Rodas4(autodiff=false), callback=cb)
sol = solve(prob,CVODE_BDF(), callback=cb)
```

If the callback discontiuities is large you may want to [propose a smaller `dt`](https://diffeq.sciml.ai/stable/features/callback_functions/#Modifying-the-Stepping-Within-A-Callback) to ensure numerical stability.

## Plotting

You can pass more options for the DifferentialEquations.jl solution to the `plot()` function thanks to Plot Recipes

- `vars` : [Choosing](https://diffeq.sciml.ai/stable/basics/plot/#plot_vars) which state variable(s) to plot by passing `vars` to `plot()` function. Functions dependent on the state variables are also suported.
  ```julia
  f(x,y,z) = (sqrt(x^2+y^2+z^2),x)
  plot(sol,vars=(f,1,2,3))
  ```
- `tspan`: [Limiting the time span](https://diffeq.sciml.ai/stable/basics/plot/#Timespan) of solution by passing `tspan = (tstart, tend)` to `plot()`.


### Working without the Plot recipe

For example, you are using PyPlot.jl (matplotlib) exclusively for the plotting.

```julia
# Plot all time series, without interpolation (may look ugly)
plt.plot(sol.t,sol')

# The interpolation must be done manually
ts = 0.0:0.0001:1.0

# Plot a phase plot
plt.plot(sol(ts,idxs=i),sol(ts,idxs=j),sol(ts,idxs=k))
```

## Cooperations with other packages

TBD

- [Agents.jl](https://juliadynamics.github.io/Agents.jl/stable/) with [integration with DiffEq](https://juliadynamics.github.io/Agents.jl/stable/examples/diffeq/)
- [DiffEqFlux](https://diffeqflux.sciml.ai/stable/): Neural Networks + Differential Equations
- [DiffEqGPU](https://github.com/SciML/DiffEqGPU.jl): Differential Equations + GPU computing with CUDA
