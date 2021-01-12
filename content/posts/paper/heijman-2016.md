---
title: "Heijman 2016 | Computational models of atrial cellular electrophysiology and calcium handling, and their role in atrial fibrillation"
date: 2020-10-23T00:05:07+08:00
tags: ["ODE"]
categories: ["Reading","Cardiomyocyte"]
author: "Heijman et al."
authorLink: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5341705/"
description: "Computational models of atrial cellular electrophysiology and calcium handling, and their role in atrial fibrillation"
---

[Sciwheel](https://sciwheel.com/work/#/items/4522998).[^Heijman2016]

<!--more-->

## Introduction
* Computational modelling was developed to complement experimental approaches to improve understanding of cardiac electrophysiology and arrhythmogenesis
* a central role for **Ca2+ handling** abnormalities has been identified in promoting ectopic activity and re‐entry, the two major mechanisms underlying atrial fibrillation (AF)

## Differences between atrial, ventricular and sinoatrial node cardiomyocytes
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/51e70313-e845-4590-82d9-34951e12da77/tjp6968-fig-0001-m.jpg)
* Atrial cardiomyocytes possessing a number of ion currents that are largely absent in the ventricle (e.g. ultra‐rapid delayed‐rectifier K+ current IKur, or acetylcholine‐activated inward‐rectifying K+ current IK,ACh)
* SAN cardiomyocytes additionally express more hyperpolarization‐activated cyclic nucleotide‐gated (HCN) channels but have relatively few Na+ channels. T‐type Ca2+ current is largest in the SAN.
* ventricular cardiomyocytes have a larger basal inward‐rectifying K+ current (IK1)
* differences in Ca2+ handling between cell types
    * ventricular myocytes having a well‐developed system of membrane invaginations (t‐tubules) => homogeneous activation
    * atrial myocytes: centripetal Ca2+ wave
## Role of Ca2+ handling abnormalities in atrial arrhythmias
* Ca2+ overload can activate NCX => EADs and DADs, cardiac alternans
* Ca signalling pathways => remodeling
## Computational modelling of atrial cellular electrophysiology and Ca2+ handling
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/48a7aa9e-3aa0-46b2-9734-3111e8a2cd5a/tjp6968-fig-0002-m.jpg)
### Types of ion‐channel models
* instantaneous, time‐independent (rapid equilibrium): IK1
* Hodgkin–Huxley gating variables
* Markov models: states variables, more complex, additionally capture dependent state transitions
## Atrial cardiomyocyte models and their principal findings
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/aa159db6-8c60-4ee3-bd34-5b40ce7aa6cd/tjp6968-fig-0003-m.jpg)
## Computational models based on experimental data from animals
See `tbl1.html`
## Computational models of human atrial cardiomyocytes
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/1db50ef8-f5eb-4dfd-9fc1-eec7c294362f/tjp6968-fig-0004-m.jpg)
## Spatial models of atrial Ca2+ handling
* transverse segmentation allows simulation of the centripetal Ca2+ wave
* subsarcolemmal SR Ca2+‐release sites influence AP shape, whereas the central release sites control centripetal Ca2+ wave propagation
* However, common‐pool models also show alternans, as recently demonstrated for the Grandi model (Chang et al. 2014). This type of alternans critically depends on intrinsic RyR2 properties.
* both transverse and longitudinal compartmentation of Ca2+ handling (Fig. 4 C), along with stochastic gating of RyR2s using a Markov‐model approach => The combination of changes produces sustained triggered activity = paroxysmal AF (pAF)

![](https://wol-prod-cdn.literatumonline.com/cms/attachment/233e228f-9991-4b28-8120-b1b89abd0ba3/tjp6968-fig-0005-m.jpg)

## Applications of computational modelling in AF research
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/d520f791-6144-4133-9050-c35301c65694/tjp6968-fig-0006-m.jpg)

* It's not experimentally possible to modulate the function of a single channel or transporter in human atrial cardiomyocytes with high specificity. Computational assessment of potential mechanisms of atrial arrhythmogenesis could help to identify experimental findings about changes in ion‐channel function
* The advances and applications of atrial cardiomyocyte models have been paralleled by advances in the development of models for other cell types (ventricular: common‐pool and spatial ‘local‐control’ models)
## Gaps in knowledge and future directions
* pronounced inter‐patient and regional variation: tissues surrounding the (PVs) have specific electrophysiological and Ca2+ handling properties, making them more likely to produce ectopic activity
* multiscale understanding of AF
* Channel modeling (e.g. RyR2)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/a77de851-f73a-48a6-8f01-987eaa35d0df/tjp6968-fig-0007-m.jpg)

## Reference

[^Heijman2016]: Heijman J, Erfanian Abdoust P, Voigt N, Nattel S, Dobrev D. Computational models of atrial cellular electrophysiology and calcium handling, and their role in atrial fibrillation. J Physiol (Lond) 2016;594(3):537-553. doi:10.1113/JP271404. [PMC5341705](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC5341705).
