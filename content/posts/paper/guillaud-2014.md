---
title: "Guillaud 2014 | Superoxide production by cytochrome bc1 complex: a mathematical model"
date: 2020-10-23T00:03:37+08:00
tags: ["ODE", "bc1 complex"]
categories: ["Reading", "Mitochondria"]
author: "Guillaud et al."
authorLink: "https://www.sciencedirect.com/science/article/pii/S0005272814005076?via%3Dihub"
description: "Superoxide production by cytochrome bc1 complex: a mathematical model"
---

[Sciwheel](https://sciwheel.com/work/#/items/5916845)[^Guillaud2014]

<!--more-->

## Introduction
### The protonmotive Q-cycle
![](https://ars.els-cdn.com/content/image/1-s2.0-S0005272814005076-gr1.jpg)
* In the model presented here, we avoid short-circuits by assuming a concerted mechanism for the quinone oxidation at complex III: QH2 releases both electrons effectively at the same time and no transfer between bL and FeS is allowed. Reverse electron transfers (and so QH2 production at Qo) are only possible if bL and FeS are reduced
* Unfortunately, all models allow for the presence of a semiquinone at Qo when at the same time bL is in its reduced form. But this situation is quite improbable due to electrostatic considerations
* Bazil's model: unsuitable to test our hypothesis, since the positions of electrons at the Qo site are not determined

## Material and methods
* Heme c1 has been neglected.
1. Reduced ubiquinone transfers its two electrons to complex III, if both FeS and bL are oxidized:
2. Heme bL passes its electron to heme bH, if heme bH is oxidized
3. At the Qi site, one electron is transferred from reduced heme bH (bH·) to oxidized quinone (Q). The resulting semiquinone then forms a stabilizing complex with heme bH by sharing its electron
4. At the Qi site, (bH·) can also give one electron to a semiquinone (Q· −) if it is present. Two protons from the matrix are consumed to produce QH2
5. Reduced FeS transfers its electron to oxidized cytochrome c
6. reduced heme bL (bL·) may donate one electron to Q to transiently produce Q· − at the Qo site that is then oxidized by O2 to generate superoxide (O2· −)

* In our model complex III has sixteen possible electronic configurations, A–P (see Fig. 2); eight for complex III alone, and eight for complex III bound to Q· −
![](https://ars.els-cdn.com/content/image/1-s2.0-S0005272814005076-gr2.jpg "Model of complex III")
* Every electron transfer is modeled using mass-action kinetics
* Dependence on ΔΨ: rate constants, k2,ΔΨ and k− 2,ΔΨ, which depend on the value of ΔΨ according to
### Modeling antimycin A inhibition
* It binds complex III at the Qi site, preventing the quinone to enter this site
* reactions 3 (forward) and 4 (backward) are blocked during antimycin A treatment.

### Inhibition of cytochrome c reduction by an occupied Qi site
* the rate of complex III changes if the Qi site is occupied by a molecule
* the rate constants k5 and k− 5 are modified by inhibk5 in the presence of antimycin A or of a stabilized semiquinone at the Qi site:

### Effect of the oxidation state of heme bH
* applying an inhibition (via inhibk6) to reaction 6 (semiquinone formation with an electron from heme bL, see Fig. 2) for those species of complex III that have a reduced heme bH (species D, H, J and N)

### Parameterizing the model
![tbl1](https://user-images.githubusercontent.com/40054455/86618418-75a21e00-bfeb-11ea-9e27-0c3dd89aa206.png)
* In the first approximation rate constants for reactions 1 to 6 (which have a suitable kinetics) are calculated using electron tunneling rate equations
* In a second phase, these parameter values are optimized using the genetic fitting algorithm of Copasi, followed by a local algorithm (Levenberg and Marquardt; iteration limit 200; tolerance: 1 × 10− 5) of Copasi
* The parameters were fitted to experimental data [50] consisting of respiration rates for complex III during state 3 as well as quinone and cytochrome c ratios
* Also fitted to a set of experimental data obtained in the presence of antimycin A [39]. The fitting procedure was repeated and generated a second set of parameters.
* The parameters kf,6 and kr,6 (reduction of quinone by bL) are then injected into the first model (no antimycin A) and to calculate ROS production

## Results
![](https://ars.els-cdn.com/content/image/1-s2.0-S0005272814005076-gr3.jpg "Comparison of experimental data [50] and model output after fitting")
* Except for liver the fit is in good agreement with the experimental results ( liver mitochondria are often significantly contaminated by other metabolic enzyme in microsome)

![](https://ars.els-cdn.com/content/image/1-s2.0-S0005272814005076-gr4.jpg "States of complex III and the protonmotive Q-cycle")

![](https://ars.els-cdn.com/content/image/1-s2.0-S0005272814005076-gr5.jpg "Comparison of experimental data and the model output after parameter fitting")
* Bell-shaped dependence: similar to experiments

![](https://ars.els-cdn.com/content/image/1-s2.0-S0005272814005076-gr6.jpg "Calculation of ROS production as a function of ∆Ψ and the fraction of reduced quinone, without (top) and with antimycin A (bottom)")

## Discussion
* complex III reduction by QH2 was assumed to be a (quasi) concerted reaction, in agreement with experiments (Qo SQ 1000x lower than Q pool)
* To reproduce the different data sets, two sets of parameters were used. antimycin A is suspected to change the electron transfer kinetics within complex III
* The presented model is able to reproduce the bell-shape curve of the ROS production rate with antimycin A
* Without antimycin A, ROS generation at complex III is proportional to the fraction of reduced quinone, but is mostly controlled by ∆Ψ. ROS signaling by complex III exponentially increases with ∆Ψ, but also critically depends on the redox state of the ubiquinone pool.

## Conclusion
The model reinforces the hypothesis that superoxide formation by complex III involves ubiquinone as a redox mediator between cytochrome bL and oxygen. No semiquinone intermediate of the protonmotive Q-cycle at the Qo site is required to reproduce the experimental data.

## Refrence
[^Guillaud2014]: Guillaud F, Dröse S, Kowald A, Brandt U, Klipp E. Superoxide production by cytochrome bc1 complex: a mathematical model. Biochim. Biophys. Acta 2014;1837(10):1643-1652. doi:10.1016/j.bbabio.2014.05.358. [DOI](https://f1000.com/fulltext/doi/10.1016/j.bbabio.2014.05.358).
