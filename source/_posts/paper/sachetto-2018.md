---
title: "Sachetto 2018 | Performance evaluation of GPU parallelization, space-time adaptive algorithms, and their combination for simulating cardiac electrophysiology"
date: 2020-10-23T00:39:21+08:00
tags: ["GPU"]
categories: ["Reading","Cardiomyocyte"]
---

<!--more-->

[Sciwheel](https://sciwheel.com/work/#/items/4898772)

[Article](https://onlinelibrary.wiley.com/doi/full/10.1002/cnm.2913)[^Sachetto2018]

## INTRODUCTION
* The cardiac models used nowadays are described by nonlinear systems of partial differential equations (PDE) coupled to a nonlinear set of ordinary differential equations (ODE) resulting in mathematical formulations with millions of variables and hundreds of parameters
* In this work, we address these questions by combining a modern parallel computing technique based on multicore and graphics processing units (GPUs) and a sophisticated numerical method based on a new space-time adaptive algorithm.

## METHODS
* electrical wavefron: 0.2mm => adaptive mesh methods can be used.
* However, the use of adaptive methods combined with parallel computing also introduces new problems to be solved

### Monodomain model
$$
\beta C_{m} \frac{\partial V}{\partial t}+\beta I_{i o n}(V, \eta)=\nabla \cdot(\sigma \nabla V)+I_{s t i m}
$$
$$
\frac{\partial \eta}{\partial t}=f(V, \eta)
$$
* TT2 is based on the Hodgkin-Huxley formalism and is described by 19 ODEs, whereas the BDK is based on 41 ODEs and is based on Markov-MCs.

### Finite volume method (FVM) applied to monodomain
* Godunov operator splitting:
ODE part
$$
\begin{array}{c}{\frac{\partial V}{\partial t}=\frac{1}{C_{m}}\left[-I_{i o n}\left(V, \eta_{i}\right)+I_{s t i m}\right]} \\ {\frac{\partial \eta_{i}}{\partial t}=f\left(V, \eta_{i}\right)}\end{array}
$$
PDE part
$$
\beta C_{m} \frac{\partial V}{\partial t}=[\nabla \cdot(\sigma \nabla V)]
$$
### Time discretization
* implicit first-order Euler scheme
$$
\frac{\partial V}{\partial t}=\frac{V^{n+1}-V^{n}}{\Delta t}
$$
### Space discretization
* The calculation of J (fluxes) can be split as the sum of the flows on the 6 faces
$$
h^{3} \beta C_{m} \frac{\partial V}{\partial t}=h^{2} \sum_{l=1}^{6} J_{l}
$$

### Adaptive nonuniform mesh
* we can use algorithms and data structures that can transform a single volume of the mesh in 8 smaller volumes by refining it, or apply the inverse operation by derefining 8 smaller volumes into a single one.
* efficient graph-based data structure called **autonomous leaves graph (ALG)**
![fig1](https://user-images.githubusercontent.com/40054455/86707380-78802b80-c04a-11ea-8497-bcce76d818a4.png)
* We will approximate the partial derivatives of V on the interfaces using the finite difference scheme due to the mesh of cubes
$$
\begin{aligned}\left.\frac{\partial V}{\partial x}\right|_{(i+1 / 2, j, k)} &=\sum_{c=1}^{m_{1}} \frac{V_{r, c}^{*}-V_{i, j, k}^{*}}{h_{1}} \\\left.\frac{\partial V}{\partial x}\right|_{(i-1 / 2, j, k)} &=\sum_{c=1}^{m_{2}} \frac{V_{i, j, k}^{*}-V_{l, c}^{*}}{h_{2}} \end{aligned}
$$
* decomposing the operators
$$
\begin{array}{c}{C_{m} \frac{V_{i j, k}^{*}-V_{i, j, k}^{n}}{\Delta t}=-\frac{\left(S_{1} J_{1}^{*}-S_{2} J_{2}^{*}+S_{3} J_{3}^{*}-S_{4} J_{4}^{*}+S_{5} J_{5}^{*}-S_{6} J_{6}^{*}\right)}{\beta h_{i j, k}^{3}}} \\ {C_{m} \frac{V_{i j, k}^{n+1}-V_{i, j, k}^{*}}{\Delta t}=-I_{i o n}\left(V_{i, j, k}^{*}, \eta^{n}\right)} \\ {\frac{\partial \eta^{n+1}}{\partial t}=f\left(\eta^{n}, V^{*}, t\right)}\end{array}
$$
$$
\begin{array}{c}{S_{1} J_{1}^{*}=-\sigma_{x_{i+1 / 2 j k}} \sum_{c=1}^{m_{1}} \frac{V_{r, c}^{*}-V_{i, j, k}^{*}}{h_{1}} S_{1}} \\ {S_{2} J_{2}^{*}=-\sigma_{x_{i-1 / 2 j k}} \sum_{c=1}^{m_{2}} \frac{V_{i j, k}^{*}-V_{l, c}^{*}}{h_{2}} S_{2}}\end{array}
$$
* For a regular grid, we can simplify the above equations
$$
J_{1}=J_{x_{i+1 / 2 j k}}=-\sum_{c=1}^{m_{1}} \sigma_{x_{r^{\prime}, c}}\left(V_{r, c}^{*}-V_{i j, k}^{*}\right) h_{1}
$$
$$
J_{2}=J_{x_{i-1 / 2 j, k}}=-\sum_{c=1}^{m_{2}} \sigma_{x_{l, c}}\left(V_{i, j, k}^{*}-V_{l, c}^{*}\right) h_{2}
$$
### Adaptive time-step method for solving ODEs
* To overcome this problem, we used an adaptive time-step Euler method
### Parallel numerical implementations
* model a total of 500 × 500 × 500 × 41 = 5125000000 unknowns
* Since the TT2 model contains a large number of variables that follows the Hodgkin-Huxley gating formalism,9we used the Rush-Larsen (RL) method. Unfortunately, this method is not suitable for the BDK, owing to the MCs used in the model formulation.
### Computational simulations
![fig2](https://user-images.githubusercontent.com/40054455/86707397-7d44df80-c04a-11ea-9e1b-dec24e608257.png "S1 and S2 stimuli applied on the 3D model of the murine left ventricule")
![fig3](https://user-images.githubusercontent.com/40054455/86707410-80d86680-c04a-11ea-805e-c9b608b8abdf.png "Propagation of the electrical wave in the benchmark problem mesh")
![fig4](https://user-images.githubusercontent.com/40054455/86707416-83d35700-c04a-11ea-9c29-56d138bcc6cb.png "Spiral wave in the left ventricular mouse mesh")

## RESULTS
* SA method changes the matrix conditioning and the use of Jacobi preconditioner was adequate to reduce the total number of CG iterations from 2339 to 993.
![fig6](https://user-images.githubusercontent.com/40054455/86707446-8b92fb80-c04a-11ea-8c75-0dc2487215a7.png "Comparison of the APs in a fixed point for Test 3")

## DISCUSSION
### Modern parallel computing vs sophisticated numerical methods
![](https://user-images.githubusercontent.com/40054455/94364891-42a98b00-00ff-11eb-8df1-c3d913c54ee4.png)
* Only the ODEs are solved in the GPU, whereas the total time of the simulation is the sum of time spent solving the ODEs plus the time spent solving the PDE.
### Limitations and future work
* load unbalance in the GPU code

![](https://user-images.githubusercontent.com/40054455/94364903-58b74b80-00ff-11eb-8b46-76a50f091c31.png "S1 and S2 stimuli applied on the 3D model of the murine left ventricule")

* the use of parallel computing and space-time adaptive methods are able to reduce the execution time of a simulation by more than 498 × (from 11 days to less than 32 minutes)

## Reference
[^Sachetto2018]: Sachetto Oliveira R, Martins Rocha B, Burgarelli D, Meira W, Constantinides C, Weber Dos Santos R. Performance evaluation of GPU parallelization, space-time adaptive algorithms, and their combination for simulating cardiac electrophysiology. Int. J. Numer. Method. Biomed. Eng. 2018;34(2). doi:10.1002/cnm.2913
