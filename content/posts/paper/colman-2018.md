---
title: "Colman 2018 | Description of the Human Atrial Action Potential Derived From a Single, Congruent Data Source: Novel Computational Models for Integrated Experimental-Numerical Study of Atrial Arrhythmia Mechanisms"
date: 2020-10-22T18:28:40+08:00
tags: ["ODE"]
categories: ["Reading", "Cardiomyocyte"]
author: "Colman et al."
authorLink: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6137999/"
description: "Description of the Human Atrial Action Potential Derived From a Single, Congruent Data Source: Novel Computational Models for Integrated Experimental-Numerical Study of Atrial Arrhythmia Mechanisms"
---

[Sciwheel](https://sciwheel.com/work/#/items/5918523).[^Colman2018]

<!--more-->

## Introduction
* Computational modeling has proved to be an increasingly valuable tool to assess and dissect the impact of ion channel function and anatomical structure on normal and arrhythmic human atrial electrical dynamics
* human atrial cell models are in general less well parameterized than ventricular cell models, and they still rely on model components formulated on data from different sources, cell-types, and even species
* integration of components from different sources is non-trivial and often requires enforced parameter modification
* There are numerous further challenges in obtaining reliable experimental data for developing a human atrial-specific cell model
* The aim of this study was to develop a human atrial isolated- and intact-cell model based primarily on specific human atrial cellular data from the WL (Workman laboratory)

## Materials and Methods
* The formulations were integrated with multiple contemporary human atrial cell models, including both isolated- and intact-cell variants (section “Computational models”). The Courtemanche et al. (1998) model (hAM_CRN), Nygren et al. (1998) model (Nygren-Giles, hAM_NG), and Grandi et al. (2011) [Grandi-Bers, hAM_GB – specifically, the implementation of Chang et al. (2014)]
* Full model equations and parameters are provided in the Supplementary Material and model code in C/C++ is available from the GitHub repository: https://github.com/michaelcolman/hAM_WL
![](https://www.frontiersin.org/files/Articles/392927/fphys-09-01211-HTML-r1/image_m/fphys-09-01211-g001.jpg "Fitting the Workman-lab K+ characterized currents")
![](https://www.frontiersin.org/files/Articles/392927/fphys-09-01211-HTML-r1/image_m/fphys-09-01211-g002.jpg "Parameterizing INa through resting membrane potential (RMP) vs dV/dtmax")
![](https://www.frontiersin.org/files/Articles/392927/fphys-09-01211-HTML-r1/image_m/fphys-09-01211-g003.jpg "Fitting the L-type calcium current")

## Results
![](https://www.frontiersin.org/files/Articles/392927/fphys-09-01211-HTML-r1/image_m/fphys-09-01211-g004.jpg "Simulated AP and CaT characteristics and validation")
![](https://www.frontiersin.org/files/Articles/392927/fphys-09-01211-HTML-r1/image_m/fphys-09-01211-g005.jpg "Dynamic clamp and pharmacological intervention")
![](https://www.frontiersin.org/files/Articles/392927/fphys-09-01211-HTML-r1/image_m/fphys-09-01211-g006.jpg "Intact-cell models")

## Role of the Hyperpolarizing Current
![](https://www.frontiersin.org/files/Articles/392927/fphys-09-01211-HTML-r1/image_m/fphys-09-01211-g007.jpg)

## Comparison Between Models
![](https://www.frontiersin.org/files/Articles/392927/fphys-09-01211-HTML-r1/image_m/fphys-09-01211-g008.jpg)

![](https://www.frontiersin.org/files/Articles/392927/fphys-09-01211-HTML-r1/image_m/fphys-09-01211-g009.jpg "Comparison of excitation and current properties between the different models")

## Discussion
### Comparison to Previous Work
* Importantly, where many previous studies have adjusted current parameters to reproduce AP properties, no such modifications were made in the present study, ensuring that the relative balance and time-courses of the primary currents is experimentally justified
* The single-source approach implemented theoretically provides a higher level of confidence than previous models
### The Importance of the Isolated-Cell Environment
* the models responded differently to the application of interventions
### Potential Contributions of IKr and IKs to Human Atrial Repolarization
* Due to IKs and IKr being very small or absent in isolated human atrial cells, they were not included in the isolated-cell model
* IKr/IKs may be required in the intact human atria to maintain repolarization
## Limitations
* the intracellular Ca2+ handling system was not parameterized to the same extent to human atrial data => May add spatial distribution of atrial CICR
* the models and variants overestimated the impact of high concentrations of nifedipine on human atrial AP shortening
* Variability was not investigated in the present study
* Due to the single-source, minimalistic philosophy of the approach, there are many factors which play a role in human atrial electrophysiology which have not been included, due to a lack of well characterized and human atrial specific data.
    * Phosphorylation by PKA or CaMKII
    * small conductance potassium channels

## Reference
[^Colman2018]: Colman MA, Saxena P, Kettlewell S, Workman AJ. Description of the Human Atrial Action Potential Derived From a Single, Congruent Data Source: Novel Computational Models for Integrated Experimental-Numerical Study of Atrial Arrhythmia Mechanisms. Front. Physiol. 2018;9:1211. doi:10.3389/fphys.2018.01211. [PMC6137999](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC6137999)
