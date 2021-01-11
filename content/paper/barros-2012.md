---
title: "Barros 2012 | Simulations of Complex and Microscopic Models of Cardiac Electrophysiology Powered by Multi-GPU Platforms"
date: 2020-10-22T17:30:10+08:00
tags: ["GPU", "electrophysiology"]
categories: ["Reading", "Cardiomyocyte"]
math:
  enable: true
---

[Sciwheel](https://sciwheel.com/work/#/items/4891049).

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3512298/)[^Barros2012]

<!--more-->

## Introduction
* CMC simulations: nonlinear ODE systems plus nonlinear system of partial differential equations (PDEs)
* Markov Chain (MC) model formalism: more details, more stiffness, more computationally demanding
* nonlinear ODE systems may contain hundreds of state variables

## Methods

### Modeling Cardiac Microstructure

Microstructure of cardiac tissue, gap junction heterogeneous distribution, and discretizations of 8 μm × 8 μm.

![fig1](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3512298/bin/CMMM2012-824569.001.jpg)

For larger tissue

![fig2](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3512298/bin/CMMM2012-824569.002.jpg)

5 possible types of connections between neighboring volumes that are membrane (expit m = 0.0), cytoplasm (expit c = 0.4 μS/μm), gap junction plicate (G p = 0.5 μS), interplicate (G i = 0.33 μS), and combined plicate (G c = 0.062 μS).  expit for conductivity and G for conductance

![fig3](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3512298/bin/CMMM2012-824569.003.jpg)

### Heterogeneous Monodomain Model (RD-type PDE)

Bondarenko et al. model (BDK)
$$
\begin{array}{l}{\beta C_{m} \frac{\partial V(x, y, t)}{\partial t}+\beta I_{\text { ion }}(V(x, y, t), \boldsymbol{\eta}(x, y, t))} {\quad=\nabla \cdot(\boldsymbol{\sigma}(x, y) \nabla V(x, y, t))+I_{\text { stim }}(x, y, t)} \cr {\quad \frac{\partial \eta(x, y, t)}{\partial t}=\mathbf{f}(V(x, y, t), \boldsymbol{\eta}(x, y, t))}\end{array}
$$

### Numerical Discretization in Space and Time
The finite volume method (FVM), similar to FEM, but focused on the concept of flow between regions or adjacent volumes

#### Time Discretization

Godunov operator splitting of ODEs and PDEs
$$
\begin{array}{c}{\frac{\partial V}{\partial t}=\frac{1}{C_{m}}\left[-I_{\mathrm{ion}}(V, \boldsymbol{\eta})+I_{\mathrm{stim}}\right]} \cr {\frac{\partial \eta}{\partial t}=f(V, \boldsymbol{\eta})}\end{array}
$$
$$
\beta\left(C_{m} \frac{\partial V}{\partial t}\right)=\nabla \cdot(\sigma \nabla V)
$$

PDE: implicit Euler
$$
\frac{\partial V}{\partial t}=\frac{V^{n+1}-V^{n}}{\Delta t_{p}}
$$
ODE: complex models that are highly based on MCs, the Rush-Larsen (RL) method seems to be ineffective. Resort to explicit Euler method.

Use different time steps for ODE and PDE.
* ODE: Δt = 0.0001 ms
* PDE: Δt(p) = 0.01 ms
* numerical error
$$
\epsilon=\frac{\sqrt{\sum_{i=1}^{n t} \sum_{j=1}^{n v}\left(V(i, j)-V_{m_{\mathrm{ref}}(i, j) )^{2}}\right.}}{\sqrt{\sum_{i=1}^{n t} \sum_{j=1}^{n v} V_{m_{\mathrm{ref}}(i, j)^{2}}}}
$$

#### Spatial Discretization

$$\mathbf{J}=-\sigma \nabla V$$

$$\nabla \cdot \mathbf{J}=-I_{v}$$ : volumetric current for FVM

* two-dimensional uniform mesh, consisting of regular quadrilaterals (called “volumes"), integrating the equation above:

$$\int_{\Omega} \nabla \cdot \mathbf{J} d v=-\int_{\Omega} I_{v} d v$$

Applying the divergence theorem yields:

$$\int_{\Omega} \nabla \cdot \mathbf{J} d v=\int_{\partial \Omega} \mathbf{J} \cdot \vec{\xi} d s$$

Thus,

$$\int_{\partial \Omega} \mathbf{J} \cdot \vec{\xi} d s=-\int_{\Omega} I_{v} d v$$

$$
\beta\left.\left(C_{m} \frac{\partial V}{\partial t}\right)\right|_{(i, j)}=\frac{-\int_{\partial \Omega} \mathbf{J}_{i, j} \cdot \vec{\xi} d s}{h^{2} d}
$$

J(i,j) can be subdivided as a sum of flows on the following faces

$$\int_{\partial \Omega} \mathbf{J}_{i, j} \cdot \vec{\xi} d s=\left(I_{x_{i+1 / 2 j}}-I_{x_{i-1 / 2 j}}+I_{y_{i j+1 / 2}}-I_{y_{i j-1 / 2}}\right)$$

#### Parallel Numerical Implementations
* MPI, PETSc, and GPGPUs (CUDA)
* ODEs, FE method on GPGPU
* PDEs: conjugate gradient preconditioned with ILU (PETSc)
* solving the PDE on these new machines with traditional MPI or OpenMP-based parallel implementations may outperform a single GPU implementation
    * One could use AMG on multiGPU platforms

## Results

![fig5 Action potential propagation](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3512298/bin/CMMM2012-824569.005.jpg)

![fig6 Transmembrane potenatial at different scales](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3512298/bin/CMMM2012-824569.006.jpg)

![tbl1](https://user-images.githubusercontent.com/40054455/86616090-eb0bef80-bfe7-11ea-8088-6b6f5b8988e1.png)
![tbl2](https://user-images.githubusercontent.com/40054455/86616096-ecd5b300-bfe7-11ea-8d57-57c6da40b419.png)

![fig7 Spiral wave formation](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3512298/bin/CMMM2012-824569.007.jpg)

## Discussion and Future Works

* GPGPU programming of compelx spatial and mechanistic CMC tissue model for 420x acceleration
* load balancing
* discrete or discontinuous nature of AP propagation?

## Reference
[^Barros2012]: Gouvêa de Barros B, Sachetto Oliveira R, Meira W, Lobosco M, Weber dos Santos R. Simulations of complex and microscopic models of cardiac electrophysiology powered by multi-GPU platforms. Comput Math Methods Med. 2012;2012:824569. [PMC3512298](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3512298/).
