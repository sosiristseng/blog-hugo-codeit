---
title: "Utilizing multiple CPU cores in Julia"
date: 2020-10-21T16:10:02+08:00
tags: ["multithreading", "multiprocessing", "threads", "task"]
categories: ["Julia"]
---

When you don't want other core sitting idle.

<!--more-->

## Source

- [The official documentations](https://docs.julialang.org/en/v1/manual/parallel-computing/index.html#Multi-Core-or-Distributed-Processing-1)
- [Aurelio's tutorial](https://techytok.com/multiprocessing-in-julia-module/).

### Youtube videos

{% youtube dczkYlOM2sg %}

Before going multi-core, examine the serail problem first!

## Task-based asynchronous programming

[Julia Documentation](https://docs.julialang.org/en/v1/manual/asynchronous-programming/#man-asynchronous)

```julia
# Create a task from a macro + a block of expressions as an example

t = @task begin
    sleep(5)
    print("Hello")
end

# The same as the above, Create a task from a function
t = Task(()->sleep(5);print("Hello"))

# Queue the task. This function will return immediately.
schedule(t)

# Block execution until the task is completed
wait(t)
```

`@async x` is equivalent to `schedule(@task x)`.

See also: [Channels: producer-consumer model](https://docs.julialang.org/en/v1/manual/asynchronous-programming/#Communicating-with-Channels)

A `Channel` is a waitable first-in first-out (FIFO) queue supporting concurrent read/write operations.

- `c = Channel(n)` Set the queue length (objects could be hold by the channel) to `n`.
  - `c = Channel{Int}(32)`: Accepts up to 32 `Int` values.
- Writer `put(c, val)` put `val` in the queue `c`. It will be blocked if the queue is full. (until space is available)
- Reader `take!(c)` returns the first val in the queue and removes it.  It will be blocked if the queue is empty. (until the writer put in a value)
- Reader `fetch(c)` returns the first val but does not remove it from the queue. It will be blocked if the queue is empty. (until the writer put in a value)

## Multi-threading

- Threads share memory so beware data racing
- Better for a single multi-core CPU (node)

Check how many thread are available:

```julia
Threads.nthreads()
```

### Increase threads avaialble per Julia process

Set the environment variable `JULIA_NUM_THREADS=n` before running `julia`.

Temporary: start julia with `-t / --threads` (v1.5+). Replace `n` for number of threads.

```bash
julia -t n
```

#### Linux/MacOS permanent setting

`~/.profile`

```bash
export JULIA_NUM_THREADS=n  # or $(nproc), the # of cpu threads available
```

#### Windows permanent setting

```powershell
setx JULIA_NUM_THREADS n
```

### `@threads` macro for `for` loops

```julia

a = zeros(10)

Threads.@threads for i = 1:10
    a[i] = Threads.threadid()
end
```

### Beware racing conditions
- [Atomic operation](https://docs.julialang.org/en/v1/manual/multi-threading/#Atomic-Operations)
- [Caveats in multithreading](https://docs.julialang.org/en/v1/manual/multi-threading/#Caveats)


## Multiprocessing

[Julia Documentation](https://docs.julialang.org/en/v1/manual/distributed-computing/#Multi-processing-and-Distributed-Computing)

- For single or distribured machines (nodes)
- Independent memory pool by default, except for shared memories.
  - Unlike Python, where multiprocessing is done by forking and worker processes inherit data from the main process.
  - As a result, `@everywhere` is needed for code running in parallel to copy the data to the worker processes.

### Start Julia with multiple processes

Simple example to start julia with multiple processes

```bash
# start julia with 1 main process + 5 worker processes with -p
julia -p 5
```

A more sophisticated example:
```bash
# Julia with 1 main process + 7 worker processes with -p
# Load mod1.jl and mod2.jl for all processes with -L
# And execute run.jl
julia -p 7 -L mod1.jl -L mod2.jl run.jl
```

One could also add processes later on

```julia
using Distributed
addprocs(2)  # Add two worker processes

nprocs()   # 3 (1 main + 2 workers)
nworkers() # 2
```

### Usage

`@everywhere` prefix is required to make it visiable for all worker processes.

`@distributed` supports for loop with reduction.

```julia
# Count occurrence of head in 200000000 coin flips
nheads = @distributed (+) for i = 1:200000000
    Int(rand(Bool))
end
```

You should save the results to a `SharedArray` if not running reduction.

```julia
using SharedArrays
const N = 10^6
a = SharedArray{Int64}(N)
@distributed for i = 1:N
    a[i] = i^2
end
```

Or checkout `pmap(f, seq)`, the distributed counterpart of `map(f, seq)`.

```julia
using Distributed
const N = 10^6
pmap(x->x^2, 1:N)
```

Again, the first argument (function) must be made available to all worker processes by either loading at start (e.g. the option `-L mod1.jl`) or putting `@everywhere` in front of the function.

## Related Packages

[FLoops.jl@GitHub](https://github.com/JuliaFolds/FLoops.jl) with `@floop` and `@reduce` macros.
