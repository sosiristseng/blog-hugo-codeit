---
title: "Cortassa 2012 | Computational modeling of mitochondrial function"
date: 2020-10-22T18:29:19+08:00
tags: []
categories: ["Reading", "Mitochondria"]
---

[Sciwheel](https://sciwheel.com/work/#/items/5854039).

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3350335/)[^Cortassa2012]

<!--more-->

## Introduction
* biochemistry, cellular, and molecular biology
* thermodynamic models: agreement with the fundamental principles, lack of mechanistic details
* Stoichiometric models: large networks of biological processes without any possibility of transient behavior or regulatory interactions
* Kinetic models: kinetic mechanisms, many parameters to find
* Modular building of models (piece by piece), each module represents the known or hypothesized kinetic scheme available for that process
    * Allows zooming in and out in a network of processes
    * Spatio-temporal organization
* The reliability of a computational model
    1. sound physicobiochemical basis
    2. ability to reproduce qualitative and quantitative experimental data
    3. provision of meaningful explanation of the simulated experimental behavior
    4. predictive power

## Materials
### Basic biochemical information
1. KEGG: http://www.genome.jp/kegg/
2. BRENDA: http://www.brenda-enzymes.org/

### Repository databases
1. biomodels https://www.ebi.ac.uk/biomodels/
2. CellML repo http://models.cellml.org/cellml
3. ModelDB (Neurons) https://senselab.med.yale.edu/ModelDB/

### Experimental data
* to constrain the modules’ kinetics

### Computational tools
* Matlab , Mathematica, Maple, C++, Python, JAVA, Julia, ...

## Methods
* Clear identification of *the level* of organization (molecular, (sub)cellular, (multi)cellular) => SDE, ODE, PDE, ABM, ...
* Identification of the set of processes of interest along with observables (*experimental variables*)
* Choice of the kinetic expressions
     * Goldman–Hodgkin–Katz voltage equation (membrane potential)
     * Fick’s laws (non-charged simple diffusion)
     * (Not mechanistic) power-law formalism, fractal (non-integer) kinetics
* Using your favorite program to represent the kinetic behaviors to code

### Choosing the right set of *parameters*
* first hint about parameter values can be obtained from experimental data or literature
* may need some *adjustment* since the conditions in which they have been measured may not correspond to physiological ones
![Comparison of modeled and experimental behavior of myofibrillar ATPase](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3350335/bin/nihms373896f1.jpg)

### The sensitivity of the curve to substrate or effector
* provide information about ways to modify a module behavior in the fully assembled model when the simulated output differs from experimental data
![Sensitivity of the plot of isocitrate dehydrogenase rate versus isocitrate to the level of Ca2+ and the Ca2+ activation constant](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3350335/bin/nihms373896f2.jpg)

### individual behavior of a module should be compared with experimental data obtained in vitro
* in vivo experimental data can be obtained for some biological processes,

### The modules may be assembled once their individual behavior is proved satisfactory according to the above criteria 1–6
![Schematic representation of the mitochondrial energetics model](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3350335/bin/nihms373896f3.jpg)
* which of the variables participating in the equations will become *state variables* , and which will be *adjustable parameters*
* Rate of change = rate of production +/- rate of transport - rate of consumption
* the rate in ODEs may be subjected to scaling factors to account for volume or buffering effects
* the format with which to write the differential equations
* the choice of the integration algorithm
    1. Time scale: ms ~ secs
    2. Stiff ODE solvers
* Simulate short term first: To watch is whether some state variables take negative or extreme (unphysiological) values. Will provide key insights into which and how (extent and direction of change: increasing or decreasing) parameters may be adjusted to render reasonable simulations of the model behavior.
* run a model simulation till it reaches a steady state (dx/dt < tolerance), may take a while
* comparing the model output with experimental data (e.g., steady-state values of variables, or fluxes). => fine-tuning of parameters
![experimental data from transient behavior should be compared with model simulations](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3350335/bin/nihms373896f4.jpg)
![Effects of modifying the activities of myofibrillar ATPase and the mitochondrial Ca2+ uniporter in the ECME model](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3350335/bin/nihms373896f5.jpg)
* a model is able to predict if it can simulate a behavior that has not yet been observed. Oscillatory behavior of reduced glutathione, GSH, was first observed in the model, and later confirmed experimentally
![Glutathione oscillations](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3350335/bin/nihms373896f6.jpg)

## Footnotes
* the physical unit
![tbl2 different sources of data render very dissimilar values, from different sample and environmental conditions](https://user-images.githubusercontent.com/40054455/86616785-ee53ab00-bfe8-11ea-8ca2-0fcfbd47966e.png)
* in vitro condition provides an initial guess rather than an accurate figure of a parameter value
* control analysis to know if the process in question exerts control over the fluxes in the network of interest
* Or, test by model simulations which consequences bring about a parameter variation representing that activity

## Reference

[^Cortassa2012]: Cortassa S, Aon MA. Computational modeling of mitochondrial function. Methods Mol. Biol. 2012;810:311-326. doi:10.1007/978-1-61779-382-0_19. [PMC3350335](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3350335).
