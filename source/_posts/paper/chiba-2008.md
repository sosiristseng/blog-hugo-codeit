---
title: "Chiba 2008 | A simulation study on the activation of cardiac CaMKII delta-isoform and its regulation by phosphatases"
date: 2020-10-22T18:23:58+08:00
tags: ["CaMKII"]
categories: ["Reading", "Cardiomyocyte"]
mathjax: true
---


[Sciwheel](https://sciwheel.com/work/#/items/257440).

[Article](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2517018)[^Chiba2008]

<!--more-->

## Introduction
* CaMKII is activated through the binding of Ca2+-bound calmodulin (CaM) during the transient increase in the intracellular Ca2+ concentration ($[Ca^2+]_i$)
* With a rise in the frequency of CaT[^CAT], the lifetime of activated CaMKII molecules is increased by intersubunit autophosphorylation, leading to an accumulation of the active CaMKII
* Phosphorylated CaMKII maintains its catalytic activity even after CaT[^CAT] until it is inactivated by constitutive phosphatase activity
* CaMKII autophosphorylation is associated with long-term potentiation in neurons (α and β isoform)
* Cardiomyocytes (δ isoform??): also undergo autophosphorylation aswell as other regulatory mechanisms(oxidation) => Redox as well as frequency sensor
* δ isoform has a higher affinity for CaM (Kd = 33.5 nM) compared to α (Kd = 62.4 nM) and a higher autophosphorylation rate

[^CAT]:CaT : $[Ca^2+]_i$ transient

## Method

![Schematics](https://ars.els-cdn.com/content/image/1-s2.0-S0006349508783632-gr1_lrg.gif)
![tbl1](https://i.imgur.com/1xUGQFg.png)

### Calmodulin (CaM)
* CaM, a highly conserved protein, possesses at its C-terminal lobe two high-affinity Ca2+-binding sites with a Kd of ∼1–2 μM and at its N-terminal lobe two low-affinity sites with a Kd of ∼2.6–13 μM
* Modelled as sequential binding of 4 calcium ions. Values for the rate constants were adapted from the original model.
* The Hill coefficient (nH) and K0.5 for the [Ca2+]-CaMCa4 relationship are 1.9 and 26 μM
* accurate measurement of free [CaMCa4] in vivo is difficult (membrane-bound, clustered, competition from other proteins)
*
### CaMKII
* One inactive (neither phosphorated nor bound to CaMCa4) and 3 active states
* dissociation of CaMCa4: two pathways (CaMCa4 or Ca)
* autophosphorylation of neighboring subunits
* dephosphorylation: PP1
* Kinetic model from brain-specific α isoform of CaMKII => tranlate to δ isoform in the heart

### Ca transient
* hypothetical Ca2+ transient described by Negroni and Lascano

## Results

### Analysis of CaMCa4 binding to CaMKIIα
![](https://ars.els-cdn.com/content/image/1-s2.0-S0006349508783632-gr2_lrg.gif)
* The dependency of CaMKIIα activation on [CaMCa4] (steps A1 and A2 of the model) was analyzed in the absence of ATP, i.e., no autophosphorylation
* K0.5 (k_disso/k_asso) of 66.7 nM
* 1:1 binding of CaMCa4 to CaMKII, i.e., nH = 1.0

### Reconstruction of experiments measuring the CaMKIIα autophosphorylation rate
![](https://ars.els-cdn.com/content/image/1-s2.0-S0006349508783632-gr3_lrg.gif)
* A: 0.1 mM ATP and 500 μM Ca2+, 62 nM CaMKIIα
* B: 0.25 mM ATP and 500 μM Ca2+, 5 nM CaMKIIα
* C: 2 mM ATP and different [Ca2+] (0.1–100 μM), 0.2 μM CaMKII was incubated with 50 μM CaM

### Reconstruction of the frequency-dependent activation of CaMKIIα
![](https://ars.els-cdn.com/content/image/1-s2.0-S0006349508783632-gr4_lrg.gif)
* (500 μM Ca2+, 100 nM CaM, and 0.25 mM ATP)

### Parameter determination for the CaMKIIδ model
![](https://ars.els-cdn.com/content/image/1-s2.0-S0006349508783632-gr5_lrg.gif)
* B: different [CaM] (1–10,000 nM) at 0°C in the presence of 0.1 mM ATP and 500 μM Ca2+
* CaMKIIδ isoform exhibited a higher CaM affinity, specifically, Kd = 33.5 nM versus Kd = 62.4 nM, and a faster autophosphorylation compared to the CaMKIIα isoform
* the rate constants k_disso, k_dissoCa, k_disso2, and k_dissoCa2 were decreased twofold and kcat was increased sixfold

### Cumulative activation of CaMKIIδ by repetitive Ca2+-transients
![](https://ars.els-cdn.com/content/image/1-s2.0-S0006349508783632-gr6_lrg.jpg)
* B: 5 mM [ATP], 6 μM [CaM], and 0.1 μM [CaMKIIδ]

### Regulation of activated CaMKIIδ through phosphatases
![](https://ars.els-cdn.com/content/image/1-s2.0-S0006349508783632-gr7_lrg.jpg)
* CaMKIIα (black) and CaMKIIδ (red)
* 2 mM ATP and different [Ca2+] (0.1–100 μM), 1 μM CaMKII and 1.25 μM PP1 were incubated with 5 μM CaM at 0°C

###### Effects of [PP1] variation on the frequency-dependent activation of CaMKII
![](https://ars.els-cdn.com/content/image/1-s2.0-S0006349508783632-gr8_lrg.gif)
* a role of PPs in the dynamic adjustment of CaMKIIδ activity over the physiological range of the heart rate

## Discussion
* a novel and simple four-state CaMKIIδ model was developed that includes autophosphorylation and dephosphorylation by PP1
* Both models, CaMKIIα and CaMKIIδ, used in this study could well reproduce experimental findings regarding the steady-state dose-response relationships for activation by CaMCa4
* And the time-dependent accumulation of activated CaMKII fraction
### Significance of CaMKII autophosphorylation in the cardiac FDAR
* Total concentrations of CaM, PP1, and CaMKII greatly affect simulation results
* [CaM]total of 6 μM, difficult to directly measure [PP1] and [CaMKII] in experiments
  * The [CaMKII] was determined to be 0.12 μM
  * [PP1] was determined as 0.084 μM
* The combination of 0.1 μM [CaMKII], 0.1 μM [PP1], and 6 μM [CaM]total in Fig. 8 A well reconciled the apparent dissociation of FDAR and protein phosphorylation by CaMKII suggested by Huke and Bers
### Model limitations
* For all three active states considered in the model (CaMKII_CaMCa4, CaMKIIP_CaMCa4, and CaMKIIP) the same autophosphorylation activity was assumed
* CaMKIIα autophosphorylated at Thr286 was shown to undergo further autophosphorylation at Thr305/Thr306 after dissociation of CaM, known as secondary or inhibitory autophosphorylation (capped state) not in the model
* Experimental data for the kinetic properties of CaMKIIδ are still very limited

## Model parameters

| Parameter          | Value ($\alpha$) | Value ($\delta$) | Unit    |
| ------------------ | ---------------- | ---------------- | ------- |
| $\Sigma[CaM]$ | 6                | 6                | μM      |
| $k_1$              | 2500             | 2500             | Hz/mM   |
| $k_{-1}, k_{-2}$   | 50               | 50               | Hz      |
| $k_{2}$            | 88250            | 88250            | Hz / mM |
| $k_3$              | 12500            | 12500            | Hz / mM |
| $k_{-3}, k_{-4}$   | 1250             | 1250             | Hz      |
| $k_4$              | 250000           | 250000           | Hz/mM   |
| $k_{asso}$         | 2100             | 2100             | Hz/mM   |
| $k_{diss}$         | 0.14             | 0.07             | Hz      |
| $k_{diss, Ca}$     | 1.9              | 0.95             | Hz      |
| $k_{diss2}$        | 1.4E-4           | 0.7E-4           | Hz      |
| $k_{diss,Ca2}$     | 1.9E-3           | 0.95E-3          | Hz      |
| $K_M^{CaM}$        | 3E-5             | 3E-5             | mM      |
| $k_{cat}$ (273K)   | 0.01             | 0.06             | Hz      |
| $k_{cat}$ (303K)   | 0.3              | 1.8              | Hz      |
| $k_{cat}$ (310K)   | 0.9              | 5.4              | Hz      |
| $K_M^{ATP}$        | 19.1E-3          | 19.1E-3          | mM      |
| $k_{cat}^{PP1}$    | 1.72             | 1.72             | Hz      |
| $K_m^{PP1}$        | 11E-3            | 11E-3            | mM      |

Only kcat is temperature dependent in this model.

[^Chiba2008]: Chiba H, Schneider NS, Matsuoka S, Noma A. A simulation study on the activation of cardiac CaMKII delta-isoform and its regulation by phosphatases. Biophys. J. 2008;95(5):2139-2149. doi:10.1529/biophysj.107.118505. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2517018
