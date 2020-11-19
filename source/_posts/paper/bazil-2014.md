---
title: "Bazil 2014 | Determining the origins of superoxide and hydrogen peroxide in the mammalian NADH:ubiquinone oxidoreductase"
date: 2020-10-22T17:42:35+08:00
tags: ["ODE"]
categories: ["Reading", "Mitochondria"]
---

[Sciwheel](https://sciwheel.com/work/#/items/5916864)

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4258523/)[^Bazil2014]

<!--more-->

## Introduction
* NADH: ubiquinone oxidoreductase = Complex I
* The type and origin of ROS produced by mammalian Complex I are controversial: FMN vs IQ site vs Fe-S clusterN2

## Material and Methods
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4258523/bin/nihms628859f1.jpg)
* Global thermodynamic consistency is ensured by constraining the reverse rate of each half-reaction. We assume that substrate and product binding only depend on the redox state of the nearest redox center
* we only consider the redox states for the FMN, Fe-S cluster N2, and SQ.
### Reactant binding
* binding polynomials

### Midpoint potentials
* All midpoint potentials were taken from the literature or directly fit to redox-titration data.

### Primary state transitions
* The state transitions follow a 2e- reduction, 2e- oxidation or 1e-oxidation of the enzyme by NADH, Q or O2, or O2, respectively
* In order to apply the rapid equilibrium assumption, both the substrate and the product must be present to avoid a mathematical singularity but some conditions are NAD=0, so NAD/NADH are not in rapid equlibrium in this model

### Flux expressions
* The rate of electron input via superoxide or hydrogen peroxide is negligible and can be ignored; however, they are included in the model to maintain thermodynamic consistency

### Model Simulations

* The steady-state equation for the five-state model was analytically solved using MATLAB’s symbolic toolbox
* parallelized simulated annealing algorithm was used to globally search for feasible parameters before employing a local, gradient-based optimization algorithm

## Results and Discussion
* challenged with a wide array of data from the literature
* An identifiable parameter is defined as one having high sensitivity and low correlation with other parameters
* The most sensitive parameters are the ones associated with NADH oxidation and those related to Q reduction rates
* five parameters are sensitive and relatively uncorrelated with other parameters. These parameters are associated with the minimal set of ROS producing states required to reproduce the data
![eqn1](https://user-images.githubusercontent.com/40054455/86616014-d0397b00-bfe7-11ea-984c-79a364be7f63.png)

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4258523/bin/nihms628859f2.jpg "Model simulations of NADH oxidation rates as a function of DQ compared to data")

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4258523/bin/nihms628859f3.jpg "Model simulations of ROS generation from various sites compared to experimental data")

* the model is captures the NADH dependence of ROS production quite well and also is able to simulate ROS production under RET conditions
* the model is quite capable of simulating NADH oxidation rates under a wide range of conditions, including physiological ones

### Sites of ROS generation
* The fully reduced FMN in state 2 and the FMN radical in state 1 are responsible for the majority of superoxide at the NADH oxidase site
* For RET conditions, state 1 produces superoxide from the bound SQ at the Q reductase site. In the reverse mode, superoxide is generated at both the Q reductase and NADH oxidase sites after QH2 is oxidized, with two sites contributing equally.
* Hydrogen peroxide is produced by the fully reduced FMN in state 3
* The ability of a SQ to reduce oxygen to for superoxide in Complex I is still debated.
* There must be a high ΔΨ and a highly reduced Q pool (RET condition) in order for an appreciable amount of SQ to form
* The model best reproduced the data when superoxide from the Fe-S cluster **N2 was excluded**.
* FMN radical is only a significant source of ROS when Q is absent or Q reductase site inhibitors are present. This is consistent with the findings of Kussmaul and Hirst

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4258523/bin/nihms628859f4.jpg "Model simulations of NADH oxidation rates as a function of Q pool redox state at various fixed Δp’s")
* The model is hypersensitive to Δp, and at Δp< 100 mV the rate of NADH oxidation is increasingly insensitive to the Q pool redox state and only depends on the NAD(H) pool redox state
* we do not have sufficient data to conclusively determine how the energetic cost of proton pumping is distributed in the reaction mechanism

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4258523/bin/nihms628859f5.jpg "Model simulation of ROS stoichiometric coefficient, n, NADH oxidation, and ROS production as a function of ΔΨ, matrix pH, %NADH, and %Q")
* At low ΔΨ and pH, n is small and nearly all of the electrons from NADH reach their intended target, Q. As both ΔΨ and pH increase, not only does n increase, but also, the amount of RET increases as well
* the model predicts that ROS are produced in greater excess during RET versus FE
* the fraction of electrons reducing oxygen becomes quite significant when both the NAD(H) and Q pools are highly reduced
* pumping mechanism that is directly coupled to the reduction of the SQ in the reaction scheme is thermodynamically and kinetically feasible.

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4258523/bin/nihms628859f6.jpg "Simulated ROS production rate for each redox center under the conditions described in the legend of Figure 5")

## Reference
[^Bazil2014]: Bazil JN, Pannala VR, Dash RK, Beard DA. Determining the origins of superoxide and hydrogen peroxide in the mammalian NADH:ubiquinone oxidoreductase. Free Radic. Biol. Med. 2014;77:121-129. doi:10.1016/j.freeradbiomed.2014.08.023. [PMC4258523](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4258523).
