---
title: "Bazil 2010 | Modeling mitochondrial bioenergetics with integrated volume dynamics"
date: 2020-10-22T17:35:32+08:00
tags: ["ODE"]
categories: ["Reading", "Mitochondria"]
author: "Bazil et al."
authorLink: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2793388/"
description: "Modeling mitochondrial bioenergetics with integrated volume dynamics"
---

[Sciwheel](https://sciwheel.com/work/#/items/2896723).[^Bazil2010]

<!--more-->

## Introduction
* Current experimental techniques limit the ability to resolve details of the mitochondrial bioenergetic processes in vivo

## Results

### Model Development

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2793388/bin/pcbi.1000632.g001.jpg "Model schematics")
* **73 state** system of differential-algebraic equations (DAEs) that consists of 65 non-linear ordinary differential equations (ODEs)
* derived from heart tissue of either bovine, porcine or rat with some data obtained from liver tissue
* ANT: Metelkin model (two distinct adenine nucleotide binding sites )
* mitochondrial calcium dynamics similar to Nguyen et al. [2], Cortassa et al. [3] and Dash and Beard
* ‘futile’ K+-cycle plays a major role in mitochondrial volume homeostasis
### Parameter Estimation
* our independent data sets consisting of 32 data curves were used from Bose et al. [8], LaNoue et al. [9], Wan et al. [10] and Kowaltowski et al.
* For each data set, the model was initialized from a **condensed, fully oxidized and de-energized state** via initialization simulations that replicated the experimental incubation conditions
* TCA cycle intermediate dynamics of the model were fitted to the data set presented by LaNoue et al
* Mitochondrial Δψ, NAD/NADH redox state, myocardial oxygen consumption (MVO2), cytochrome c3+/c2+ redox state and matrix pH were reported as the extra-mitochondrial Pi was progressively increased from 0 to 10 mM.
* The volume dynamics were fitted to the transient mitochondrial matrix swelling data published by Kowalowski et al
### Corroborating the Model through Simulation
* robustness of the model to local parameter perturbations
* qualitative agreement of predicted trends with experimental observations
* the ability of the model to reproduce experimental data that was not used in fitting its parameters.
* absolute-value normalized local sensitivity coefficients (LSC) were computed
* on average that a perturbation of 1% for a given parameter results in less than a 0.738 +/− 0.118% change in the state dynamics of the model for the experiments considered
* The model was also able to reproduce the well known mitochondrial shrinkage/swelling dynamics in the presence of Pi and ADP:  extra-mitochondrial Pi-titration was increased, mitochondrial matrix water volume increased with the state 3 volume being lower than the state 2 volume

## Discussion
* The model presented in this manuscript is based on previous models [1]–[4] and includes integrated calcium dynamics and a detailed description of the K+-cycle and its effect on mitochondrial bioenergetics and matrix volume regulation
* The IMS volume is partly responsible for this regulation by having a direct effect on the cellular bioenergetics in vivo
* During mitochondrial swelling, the increase in matrix volume causes a reciprocal decrease in IMS volume that enables creatine kinase (mtCK) to bind to the voltage-dependent anion channel (VDAC) thus reducing the adenine nucleotide outer membrane permeability
* The hypothesized volume-dependent mKHE by Garid was incorporated into the model. This volume dependence is necessary to maintain sufficient potassium efflux at high Δψ during mKATP opening
* Mitochondria from specific tissue types are phenotypically different and contain various amounts of electron transport proteins, matrix proteins and lipid types optimized to support their designated function.
* heart mitochondria possess much higher electron transport activity relative to liver mitochondria
* During the model development, it is important to consider any artifacts in the experimental data that may have been inadvertently generated during the mitochondrial isolation.
* To simulate the precise experimental conditions during model development, a few explicit assumptions were necessary
* All mathematical models are abstractions of the underlying process; the level of detail included in the model is dependent upon the application. This is particularly true for the calcium dynamics associated with mitochondrial bioenergetics
    * The mitochondrial Na+/Ca2+ dynamics were simulated using a simplified Na+/Ca2+ cycling mechanisms with only the CaUNI, mNCE and mNHE processes represented.
    * omission of the rapid mode of calcium uptake (RAM)
    * The Na+ independent calcium efflux mechanism is not included in the model formulation since the underlying process is uncertain

## Reference

[^Bazil2010]: Bazil JN, Buzzard GT, Rundell AE. Modeling mitochondrial bioenergetics with integrated volume dynamics. PLoS Comput. Biol. 2010;6(1):e1000632. doi:10.1371/journal.pcbi.1000632. [PMC2793388](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2793388)
