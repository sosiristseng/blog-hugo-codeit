---
title: "Bhattacharya 2019 | Computational modeling of the photon transport, tissue heating, and cytochrome C oxidase absorption during transcranial near-infrared stimulation"
date: 2020-10-22T18:22:33+08:00
tags: ["cytochrome c oxidase"]
categories: ["Reading", "Mitochondria"]
author: "Bhattacharya et al."
authorLink: "https://www.biorxiv.org/content/10.1101/708362v1"
description: "Computational modeling of the photon transport, tissue heating, and cytochrome C oxidase absorption during transcranial near-infrared stimulation"
---

<!--more-->

## Goal
Develop a head model for near-infrared (NIR) absorption and scattering with thermal effects to derive the dosage cytochrome c oxidase (CCO) receives for evaluation of photomodulation and photothermal neurostimulation.

## Methods
### Head model
Tetrahedral mesh 3D FEM model with COMSOL Multiphysics software using the Partial Differentiation Equation (PDE) toolbox.
### Photon transfer
Radiative transfer equation (RTE) for the scattering (2nd order PDE).
![](https://www.biorxiv.org/sites/default/files/highwire/biorxiv/early/2019/07/19/708362/embed/graphic-6.gif)
![](https://www.biorxiv.org/sites/default/files/highwire/biorxiv/early/2019/07/19/708362/embed/graphic-7.gif)
![](https://www.biorxiv.org/sites/default/files/highwire/biorxiv/early/2019/07/19/708362/embed/graphic-8.gif)

The anisotropy factor, g = 0.89 has been assumed for all the tissue layers

With boundary condition:
![](https://www.biorxiv.org/sites/default/files/highwire/biorxiv/early/2019/07/19/708362/embed/graphic-9.gif)

### Heat transfer
The Pennes Bio-heat equation:
![](https://www.biorxiv.org/sites/default/files/highwire/biorxiv/early/2019/07/19/708362/embed/graphic-11.gif)

### Tissue absorption
* Absorption by CCO at **630nm, 700nm, and 810nm** with photomodulation effects.
* Other chromophores: HbO2, Hb, lipids

## Results
**810nm** comparatively shows a higher absorption of power at the gray matter, and thus the authers hypothesized that this wavelength a better choice for photothermal neuromodulation.

## Discussions
### Limitations
* The brain has been assumed as a highly scattering medium which is not true for CSF which is a low scattering medium where RTE can produce erroneous results, compared to Monte Carlo methods
* Some computational limits of FEM modeling, discretization, memory limits.
### photothermal vs photomodulation by chromophores
* Temperature change in the scalp is well within 1 degree Celsius. The simulated results showed insignificant temperature change (0.033°C) in the grey matter to cause photothermal neuromodulation.

## Conclusion
* the biochemical effects of CCO absorption need further investigation in conjunction with the heating effects since a small, steady state temperature change can affect the kinetics of photobiomodulation
* 810nm has higher penetration depth than the 630nm and 700nm, which supports the use of tNIRS for non-invasive brain stimulation.

## Reference
[^Bhattacharya2019]: Bhattacharya, M., & Dutta, A. (2019). Computational modeling of the photon transport, tissue heating, and cytochrome C oxidase absorption during transcranial near-infrared stimulation. BioRxiv. https://www.biorxiv.org/content/10.1101/708362v1.
