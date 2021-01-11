---
title: "Plank 2008 | From mitochondrial ion channels to arrhythmias in the heart: computational techniques to bridge the spatio-temporal scales"
date: 2020-10-23T00:34:09+08:00
tags: ["PDE"]
categories: ["Reading","Mitochondria", ]
math:
  enable: true
---

[Sciwheel](https://sciwheel.com/work/#/items/5042147)

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5818422/)[^Plank2008]

<!--more-->

## Introduction: simplifications of CMC models
* simple geometry (ellipsoid-shaped)
* under-representation
* adjusting tissue conductivity tensors. Coarse granularity => conduction block
* homogeneous continuum in the myocardium
* ion transport kinetics are modelled in a simplified fashion, phenomenologically represented parameters do not directly correspond to actual molecular structures or processes

## Review of tissue- and organ-level modelling techniques
### The bidomain equations
*  homogenization of cardiac tissue, replacing discrete components of the intracellular and extracellular tissue matrix, such as cells and gap junctions, with a continuum. expit are conductivity tensors. Conduction velocity is faster along the direction of the fibre orientation, and slower in a direction transverse to it.

$$
\nabla \cdot \overline{\sigma}\_{ \mathrm{i} } \nabla \phi\_{ \mathrm{i} }=\beta I\_{\mathrm{m} }
$$
$$
\nabla \cdot \overline{\sigma}\_{ \mathrm{e} } \nabla \phi\_{ \mathrm{e} }=-\beta I\_{ \mathrm{m} }
$$
$$
I_{\mathrm{m} }=C_{\mathrm{m} } \frac{\partial V_{\mathrm{m}} }{\partial t}+I_{\mathrm{ion} }\left(V_{\mathrm{m} }, v\right)-I_{\mathrm{trans} }
$$
$$
V_{\mathrm{m}}=\phi_{\mathrm{i}}-\phi_{\mathrm{e}}
$$
$$
\nabla \cdot\left(\overline{\sigma}_{\mathrm{i}}+\overline{\sigma}_{\mathrm{e}}\right) \nabla \phi_{\mathrm{e}}=-\nabla \cdot \overline{\sigma}_{\mathrm{i}} \nabla V_{\mathrm{m}}-I_{\mathrm{e}}
$$
$$
\nabla \cdot \overline{\sigma}_{\mathrm{i}} \nabla V_{\mathrm{m}}=-\nabla \cdot \overline{\sigma}_{\mathrm{i}} \nabla \phi_{\mathrm{e}}+\beta I_{\mathrm{m}}
$$
A Poisson problem has to be additionally solved for the medium
$$
\nabla \cdot \sigma_{\mathrm{b}} \nabla \phi_{\mathrm{e}}=I_{\mathrm{e}}
$$
* Boundary conditions: Typically, grounding electrodes are used in the extracellular domain, i.e. nodes in the mesh are chosen where ϕe is fixed at zero value

### Discretization schemes and issues
* FDM, FVM, FEM
* spatial extent of the wavefront is in the range of **0.2–0.7 mm**
* Courant–Friedrichs–Lewy (CFL) condition for time step limit for numerical stability in FE method
$$
\Delta t \leq \frac{\beta C_{\mathrm{m}} \Delta x^{2}}{2\left(\sigma_{l}+\sigma_{t}\right)}
$$
* More efficient with Crank–Nicholson scheme
* Operator-splitting could be allpied: an elliptic PDE, a parabolic PDE and a set of nonlinear ODEs
* With small error tolerance, the difference between coupled and decoupled approaches is negligible
* the main computational burden can be attributed to the solution of the elliptic problem and the set of ODEs (i.e. the ionic model)
* ODEs are embarrassingly parallel, while parabolic PDEs could also be solved in parallel.
* The elliptic PDE is the most challenging problem: algebraic multigrid preconditioner (AMG) in conjunction with an iterative Krylov solver

### Adaptivity and domain decomposition techniques
* high spatial and temporal resolution is needed only in the immediate vicinity of a propagating wavefront
* simpler domain composition methods can be employed, where the region of interest is divided into several subdomains; each subdomain is then integrated at a different rate. Using different temporal resolutions on a per-domain base inevitably leads to load balancing issues for codes executed in parallel

## Review of ionic model computation techniques
### Integration in standard form
* Explicit methods (RK4) vs implicit backward methods (e.g. Rosenbrock methods)
### Component-wise integration
* It is common to split the vector formulation into a set of equations, where each ODE is integrated separately.
* Many of the ODEs comprising an ionic model, typically all gating equations in Hodgkin–Huxley-type models, but also ODEs in Markov state formulations. The Rush-Larsen method (exponential integrators) is popular.
* Computational cost of log and exp function could be replaced by look-up tables (space vs time)
### Tissue-level aspects of ionic model computation
* Adaptivity in time-stepping may not that useful (load balancing)
* Careful layout of data structures
* The maximum time-step that allows stable integration could be limited by the mesh ratio and not the ODEs
* The potential of expensive ODE integration schemes, which allow large time-steps, cannot be fully exploited since PDE time-step constraints limit Δt to values for which cheaper ODE integrators perform well without any stability problems.
* increasingly inaccurate solutions with increasing Δt: oscillations in Vm at the end of an action potential upstroke would give rise to artificial calcium transients
![](https://royalsocietypublishing.org/cms/attachment/9bd4936f-c93e-42fb-9bab-b2feccd68d3c/3381fig1.jpg)
* In most cases of practical interest, BDF methods are not likely to help in reducing the computational burden.
## A new modelling paradigm for complex ionic models based on temporal multiscale decoupling
### The need for a new paradigm
* Fully implicit methods indeed allow much larger time-steps, but the overall performance was not better and the accuracy was strikingly inferior to that of RL method
* More realistic model is computationally intensive: Markov process, local control CICR
* wider range of time-scales: Descriptions of CICR processes stiffen the ODE system considerably ( Δt = 0.2 μs)
![](https://royalsocietypublishing.org/cms/attachment/f4af665b-ec64-4c88-8791-4b7a5e206179/3381fig2.jpg)
* In order to be considered predictive, ionic models must be developed that accurately capture the underlying biophysical mechanisms of experimentally observed phenomena (mechanistic models are preferred)
* Seperation of time scales: CICR vs Regular vs mitochondria / force
    *  not updating all state variables at the same rate (figure 2) leads to significant savings in terms of execution time.

### Dynamic reformulation of the ODEs
* Markov state models, the stiffness of the governing equations may vary substantially depending on the state vector y (the Jacobian is not a constant)
* the ECME model, stiffness seems to be a problem only for a few microseconds during the onset and upstroke of the calcium transient CICR
![](https://royalsocietypublishing.org/cms/attachment/1399ee9b-591e-4e0a-8b86-8c160828c9f0/3381fig3.jpg)
* Quasi-steady state assumption for subspace calcium

## Simulation results
![tbl1](https://user-images.githubusercontent.com/40054455/86706372-6651bd80-c049-11ea-907b-3532ac48b81e.png)
![](https://royalsocietypublishing.org/cms/attachment/cafd3caa-5e92-473e-8f24-345a33a48cfe/3381fig4.jpg)

## Reference
[^Plank2008]: Plank G, Zhou L, Greenstein JL, et al. From mitochondrial ion channels to arrhythmias in the heart: computational techniques to bridge the spatio-temporal scales. Philos. Transact. A Math. Phys. Eng. Sci. 2008;366(1879):3381-3409. doi:10.1098/rsta.2008.0112. [PMC2778066](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2778066/).
