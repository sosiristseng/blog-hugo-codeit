---
title: "Mirams 2018 | Uncertainty and variability in computational and mathematical models of cardiac physiology"
date: 2020-10-23T00:25:24+08:00
tags: []
categories: ["Reading", "Cardiomyocyte"]
author: "Mirams et al."
authorLink: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5134370/"
description: "Uncertainty and variability in computational and mathematical models of cardiac physiology"
---

[Sciwheel](https://sciwheel.com/work/#/items/2510130)[^Mirams2018]

<!--more-->

## Introduction
* The Cardiac Physiome project is an international effort to integrate different types of data across a range of time and space scales into models that encode quantitatively our understanding of cardiac physiology
* systematic consideration of **variability and uncertainty** in cardiac models is an important future research direction for the Cardiac Physiome

## Uncertainty in models of natural systems
* Models of natural systems involve parameters that are either **directly measured or indirectly inferred** (calibrated) using experimental data
* *intrinsic variability* in their temporal behaviour and *extrinsic variability* between individual samples
* Uncertainty can be either due to variability or due to lack of knowledge. Natural variation is sometimes characterised as *aleatory uncertainty*, and uncertainty arising from lack of knowledge as *epistemic uncertainty*.
* Uncertainty is for model calibration, validation, and prediction
* Model parameters and other inputs are usually uncertain because of possible variability and the inherent limitations of experiments and calibration. The process for considering the impact of input uncertainties on outputs is uncertainty quantification (UQ)
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5134370/bin/TJP-594-6833-g001.jpg)
* A similar and related concept is **parameter sensitivity**:  does not require the uncertainty in the input to be characterised.
* sensitivity analysis can also be used to identify parameters and other inputs that do not have a strong effect on a particular output, in which case uncertainty in those inputs may be neglected in the UQ process.

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5134370/bin/TJP-594-6833-g002.jpg "uncertainty quantification")

## Uncertainty in cardiac physiome models
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5134370/bin/TJP-594-6833-g007.jpg)

## Parameter and output uncertainty in a cardiac action potential model
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5134370/bin/TJP-594-6833-g003.jpg)
* TP2006 model with GKs variance of 20%: APD 296–319 ms
* B: uniform distribution. C: normal distribution

## Condition and output uncertainty in a cardiac tissue model
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5134370/bin/TJP-594-6833-g004.jpg)
* the choice of **initial and boundary conditions** can have an important influence on model behaviour
* breakup of a re‐entrant wave is a nonlinear process, highly sensitive to initial conditions

## Other sources of uncertainty in cardiac models
* directly measured: experiments
* indirectly inferred / calibrated : statistical techniques
* modular approach: provenance of model parameters is not always easy to establish
* generic vs patient‐specific inputs and parameters
* geometry uncertainty: approximate the random field using a (truncated) Karhunen–Loeve expansion = PCA
* outputs uncertainty: membrane voltage and intracellular Ca2+ concentration
* functional uncertainty: Extrapolation of voltage‐clamp data
* structural uncertainty: Ca dynamics, number of states in Markov models, mono‐ vs bi‐domain representations

## Experience in climate modelling and weather forecasting
* Climate modelling has applied similar techniques, with uncertainty in the initial conditions for the forecast
## Tools for uncertainty quantification
* statistical model: inputs are also probability distributions rather than fixed values (Bayesian)
### Monte Carlo techniques
* The simplest approach
* sample from a statistical distribution of model inputs
* run the model with the ensemble of inputs
* build up the statistical distribution of the outputs
* slow, requiring large numbers of runs. For larger and more complex models the problem gets worse.
* Complexity reduction with a surrogate model or emulator: polynomial chaos expansions and Gaussian process emulation

### polynomial chaos expansions
* Represent the model output as a series of polynomials in terms of the inputs
* Train the coefficients and use the polynomial to estimate the outputs

### Gaussian process emulation (Kriging model)
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5134370/bin/TJP-594-6833-g005.jpg)
* An important aspect of emulation is the design of the training set: sparse and fills the input space
* compare the emulator output with model output for inputs that have not been used in training
* leave‐one‐out validation vs a separate set of validation data
* At the training points, the emulator fits the data exactly, but where there are gaps between the training data the emulator output is more uncertain
### Model calibration
* models embed simplifying assumptions, and so structural uncertainty or model discrepancy becomes an important consideration
* An alternative approach to model calibration is known as ‘history matching’

## Conclusion
* the importance of uncertainty and variability in the Cardiac Physiome, quantify confidence in model predictions
* the statistics community: tools and approaches for handling uncertainty in multi‐scale and computationally expensive models
* Cardiac Physiome models: more robust with quantification of uncertainties
* there are very many sources of uncertainty and variability, and another major challenge is to enumerate these carefully
### Important research questions
* How reliable are the present generation of action potential models?
* Can we compare action potential models in a rigorous way?
* How do uncertainties at the cell scale contribute to uncertainties in tissue scale models?
* What criteria should be used to choose a cell, tissue and geometrical model for a particular context of use?
* How should uncertainties in Cardiac Physiome models be visualised and communicated to users such as clinicians?
## Resources
* Managing Uncertainty in Complex Models: http://www.mucm.ac.uk/
* MUCM Toolkit (Gaussian process): http://mucm.aston.ac.uk/
* Gaussian process in python https://github.com/SheffieldML/GPy

## Reference
[^Mirams2018]: Mirams GR, Pathmanathan P, Gray RA, Challenor P, Clayton RH. Uncertainty and variability in computational and mathematical models of cardiac physiology. J Physiol (Lond) 2016;594(23):6833-6847. doi:10.1113/JP271671. [PMC5134370](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC5134370).
