---
title: "Kembro 2014 | Complex oscillatory redox dynamics with signaling potential at the edge between normal and pathological mitochondrial function"
date: 2020-10-23T00:12:23+08:00
tags: ["ODE"]
categories: ["Reading","Mitochondria"]
author: "Kembro et al."
authorLink: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4085651/"
description: "Complex oscillatory redox dynamics with signaling potential at the edge between normal and pathological mitochondrial function"
---

[Sciwheel](https://sciwheel.com/work/#/items/5616230).[^Kembro2014]

<!--more-->

## Introduction
* mitochondria as a hub in the cellular metabolic network
* The redox environment (RE) determines the relationship between mitochondrial respiration and ROS
* The dependence of ROS on mitochondrial respiration involves two terms: production and emission; whereas the former depends on respiration (i.e., the rate of electron transport through the respiratory chain) the latter relies on the balance between the production and scavenging roles
* glutathione (GSH) and thioredoxin (Trx) ROS scavenging: Duplication of antioxidant defense systems in multiple compartments can be an efficient salvage mechanism in response to oxidative bursts, and as a modulator of ROS dynamics.
* Compartmentalization is relevant in the control of ROS levels and the redox environment

## Materials and methods
![](https://www.frontiersin.org/files/Articles/93653/fphys-05-00257-HTML/image_m/fphys-05-00257-g001.jpg)
* mitochondrial energetic-redox (ME-R) model with four main redox couples [NADH/NAD+, NADPH/NADP+, GSH/GSSG, Trx(SH)2/TrxSS].
* All studies were performed using the parametric setting with which the ME-R model was able to simulate different experimental situations
* the `Shunt` was utilized as the bifurcation parameter at fixed concentrations of mitochondrial superoxide dismutase (Mn SOD) and extra-mitochondrial superoxide dismutase (Cu,Zn SOD).

## Results
### Extra-mitochondrial SOD determines oscillatory mitochondrial dynamics at the edge between functional and pathological behavior
![](https://www.frontiersin.org/files/Articles/93653/fphys-05-00257-HTML/image_m/fphys-05-00257-g002.jpg)
* detailed exploration of mitochondrial redox (NADH) behavior as a function of SODs and Shunt using stability analysis
* This oscillatory region becomes more confined as the antioxidant capacity of Cu, Zn SOD in the extra-mitochondrial compartment is enhanced
* The bifurcation diagrams evolve from smoother to steeper S-shapes depending on the concentration of Cu, Zn SOD
*  the thin line connecting upper and lower branches of steady states in the bifurcation diagrams from Figure ​Figure22 exhibits both an unstable focus and a stable limit cycle
### Complex oscillatory behavior at the edge of normal and pathological mitochondrial behavior
![](https://www.frontiersin.org/files/Articles/93653/fphys-05-00257-HTML/image_m/fphys-05-00257-g003.jpg)
* an **increase** in the concentration of Cu, Zn SOD or Mn **SOD** or **decrease in shunt** => **lower frequency** oscillations
* model simulations can reproduce the frequency of experimentally observed oscillations (~**0.01 Hz**, equivalent to a period of ~100 s) for at least four distinct parametric combinations
* dependence of their amplitude vs. frequency. **Inverse relationship**. An increase in the frequency (corresponding to a decrease in CuZnSOD concentration shown in Figure ​Figure3A)3A) results in a decrease in the amplitude of the oscillations
![](https://www.frontiersin.org/files/Articles/93653/fphys-05-00257-HTML/image_m/fphys-05-00257-g004.jpg)

* Under oxidative stress (Shunt = 4%), increasing mitochondrial MnSOD at low cytosolic Cu, Zn SOD results not only in changes in frequency and amplitude, but also in the complexity of the oscillatory waveform
![](https://www.frontiersin.org/files/Articles/93653/fphys-05-00257-HTML/image_m/fphys-05-00257-g005.jpg)

* power spectral analysis: high sharp peak in the frequency domain was observed at ~0.035 Hz, followed by harmonics of slightly lower values: similar to a Dirac comb (**spike train**)

![](https://www.frontiersin.org/files/Articles/93653/fphys-05-00257-HTML/image_m/fphys-05-00257-g006.jpg "Phase space 3D projections of the state variables H2O2i, ΔΨm and succinate")

* Result: the complexity of the oscillations waveform is enhanced as a function of increasing oxidative stress conditions.

## Discussion
* The main contribution of the present work is to show that the interplay of Cu, Zn SOD (**SOD1**) and Mn SOD (**SOD2**) activities determines the appearance of **complex oscillations** in mitochondrial dynamics
* none of the other parameters from our model, apart from the three studied herein, were capable of eliciting oscillatory behavior.
* Experiments: SOD concentrations, values reported are ~**0.5 μM**. ROS reportedly ranged from **0.15 to 11%** of the O2 consumption flux
* The emergence of complex oscillatory behavior within the “edge” region. Oscillations occurred in a restricted region of the parametric space defined by the SODs and ROS production in the respiratory chain.
![](https://www.frontiersin.org/files/Articles/93653/fphys-05-00257-HTML/image_m/fphys-05-00257-g007.jpg)
*  the higher the antioxidant capacity of the periplasm-cytoplasm, the larger the parametric space compatible with functional behavior. As a result when Cu, Zn SOD concentration increases, the ability of the two compartments to tolerate higher mitochondrial ROS production is enhanced, even at low concentrations of MnSOD.
* The inverse amplitude vs. frequency relationship was demonstrated previously (Aon et al., 2006) and is confirmed by the present, more elaborate, ME-R model.
* Specifically, the 3D phase space projection of the dynamics of H2O2 released as a function of other energetic variables (ΔΨm, succinate) demonstrates the dynamic-functional interrelationships between processes occurring within the same time scale (seconds).

## Reference
[^Kembro2014]: Kembro JM, Cortassa S, Aon MA. Complex oscillatory redox dynamics with signaling potential at the edge between normal and pathological mitochondrial function. Front Physiol. 2014;5:257. Published 2014 Jul 8. doi:10.3389/fphys.2014.00257
