---
title: "Rocha 2011 | Accelerating cardiac excitation spread simulations using graphics processing units"
date: 2020-10-23T00:37:43+08:00
tags: ["GPU", "PDE"]
categories: ["Reading","Cardiomyocyte"]
mathjax: true
---

[Sciwheel](https://sciwheel.com/work/#/items/3933120)

[Article](https://onlinelibrary.wiley.com/doi/full/10.1002/cpe.1683)[^Rocha2011]
<!--more-->

## INTRODUCTION
* There are two components that contribute to the modeling of cardiac electrical propagation
    * cellular membrane dynamics: a system of nonlinear ODEs
    * electrical model of the tissue: PDE
    * computationally very demanding: the discretization in space and time of PDEs as well as the integration of nonlinear systems of ODEs.
* many-core graphic processing units (GPUs): NVIDIA CUDA for the problem

## MATHEMATICAL FORMULATION
### Tissue models
Monodomain model
$$
\nabla \cdot\left(\sigma \nabla V_{m}\right)=\beta I_{m}
$$
orientation of the muscle fibers: diffusion tensor
$$
\sigma^{i j}=\sigma_{l} a_{l}^{i} a_{l}^{j}+\sigma_{t} a_{t}^{i} a_{t}^{j}+\sigma_{n} a_{n}^{i} a_{n}^{j}
$$

### Ionic models
$$
I_{m}=C_{m} \frac{\partial V_{m}}{\partial t}+I_{i o n}\left(V_{m}, \eta_{i}\right)-I_{s t i m}
$$
$$
\frac{\mathrm{d} \eta_{i}}{\mathrm{d} t}=f\left(t, \eta_{i}\right)
$$
* LR-I model: 4 ODEs
* TNNP model: 19 ODEs

## NUMERICAL SCHEMES
* systems of ODEs
$$
\begin{aligned} \frac{\partial V_{m}}{\partial t} &=\frac{1}{C_{m}}\left[-I_{i o n}\left(V_{m}, \eta_{i}\right)+I_{s t i m}\right] \cr \frac{\partial \eta_{i}}{\partial t} &=f\left(V_{m}, \eta_{i}\right) \end{aligned}
$$

* Solve the parabolic problem
$$
\frac{\partial V_{m}}{\partial t}=\frac{1}{\beta C_{m}}\left[\nabla \cdot\left(\sigma \nabla V_{m}\right)\right]
$$

* Applying the FEM + Crank–Nicolson method
$$
\left(M+\frac{C}{2} K\right) v^{k+1}=\left(M-\frac{C}{2} K\right) v^{k}
$$

## METHODS
![fig2](https://user-images.githubusercontent.com/40054455/86706905-f7289900-c049-11ea-853e-72803493eaac.png)
![fig3](https://user-images.githubusercontent.com/40054455/86706933-fee83d80-c049-11ea-91e3-64f35f1e7644.png)

### The parabolic problem
* sparse matrix vector multiplication (SpMV)
* cuBLAS?

## RESULTS
![fig4](https://user-images.githubusercontent.com/40054455/86706945-027bc480-c04a-11ea-8cd7-dcee07a18613.png)
![tbl3](https://user-images.githubusercontent.com/40054455/86706989-10314a00-c04a-11ea-8aa5-9a2016c26e14.png)
![tbl4](https://user-images.githubusercontent.com/40054455/86706996-11627700-c04a-11ea-8df1-89c3a116edd9.png)
![fig5](https://user-images.githubusercontent.com/40054455/86706961-07407880-c04a-11ea-863a-3d461a046d22.png)

## Discussion
The performance of the parabolic solver is strongly dependent on the storage format for sparse matrix associated to linear system: ELLPACK (more regular) < CSR

[^Rocha2011]: Rocha BM, Campos FO, Amorim RM, et al. Accelerating cardiac excitation spread simulations using graphics processing units. Concurrency Computat.: Pract. Exper. 2011;23(7):708-720. doi:10.1002/cpe.1683. [DOI](http://doi.wiley.com/10.1002/cpe.1683).
