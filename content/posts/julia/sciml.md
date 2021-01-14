---
title: "Video Notes | Scientific ML"
date: 2020-10-24T13:27:14+08:00
tags: ["sciml", "PDE", "julia"]
categories: ["Reading", "Julia"]
---

Into to scientific machine learning (sciml) in Julia.

<!--more-->

## Youtube videos

{{< youtube Bk4PJnjuPps >}}

## What is scientific machine learning

Combine the best of two worlds of machine learning and regular modeling. Black-box algorithms and big data alone are not enough for complex scientific problems.

Machine learning
- Let the algorithm find the structure (rule) in the data
- Efficiency in high dimensional models
- Faster to infer after the model is trained

Old school modeling (e.g. physical models)
- Domain knowledge (laws, contraints)
- Less requirement of data points
- Quantification of uncertainties


## Aim
Tackling complex real world problems.

- Complex multiscale phenomena
- High dimensional parameters
- Sparse, intrusive, costly data
- Small tolerance of failure (~1 ppb)
- Uncertainty quantification

## Application in physics problem

Rocket combustion simulation for engine design.

- PDE models with billions of parameters (degrees of freedom)
- Computationally expensive (e.g. compressible fluid dynamics): months for one case of 3D model
- To get things faster: Reduced order models (ROMs)
  - Project the complex one (1B dof) to simpler one (1k dof)
  - Hourse instead of months
  - The ML part was trained by PDE simulation snapshots to compute low dim basis
  - Lift and learn apporach.

## Links

- [sciml.ai](https://sciml.ai)
