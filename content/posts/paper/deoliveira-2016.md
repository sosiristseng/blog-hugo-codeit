---
title: "Deoliveira 2016 | A biophysical systems approach to identifying the pathways of acute and chronic doxorubicin mitochondrial cardiotoxicity"
date: 2020-10-22T23:51:33+08:00
tags: ["ODE"]
categories: ["Reading", "Mitochondria"]
author: "Deoliveira et al."
authorLink: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5117565/"
description: "A biophysical systems approach to identifying the pathways of acute and chronic doxorubicin mitochondrial cardiotoxicity"
---

[Sciwheel](https://sciwheel.com/work/#/items/3315532)[^DeOliveira2016]

<!--more-->

## Introduction

* Doxorubicin (DOX) presents dose dependent, cumulative and irreversible cardiotoxicity that can lead to cardiomyopathy and ultimately congestive heart failure, strongly associated to **mitochondrial dysfunction**
    * inhibit the electron transport chain (ETC) by binding to cardiolipin
    * redox cycling.
    * topoisomerase II poison and can form DNA adducts , which can damage the DNA and inhibit gene transcription and DNA replication
* can form vicious cycles  -> chronic irreversible toxicity

## Method and Results

### The model
![](https://journals.plos.org/ploscompbiol/article/file?id=10.1371/journal.pcbi.1005214.g001&type=large)
![](https://journals.plos.org/ploscompbiol/article/file?id=10.1371/journal.pcbi.1005214.g007&type=large)
* based on ETC-ROS and ME-R model with some modifications (please see suplement data)
* TCA cycle, transporters, ROS production and scavenging systems and a detailed ETC representation
* All simulations in this work consider that the mitochondria are in the presence of **substrate and ADP (state 3**)

#### ETC Inhibition
* DOX binds onto cardiolipin in the IMM, IC50 values in the literature, with fitted Hill coefficients

#### Redox Cycling
* In the complex I, as a multiplier to IF site ROS generation.
* 7% increase in the superoxide concentration for 1mg/kg of DOX in rats (37mg/m2 in human, 5 to 30μM in mitochondria).  **7% increase for 30μM of DOX** in this model.

#### Damage to mtDNA
![eqn1](https://user-images.githubusercontent.com/40054455/86617155-6d48e380-bfe9-11ea-8fa0-e721a26ae269.png)
* mass action model for mtDNA damage and repair. mtDNA level is normalized (scaled).
* expression of all proteins and enzymes encoded in mtDNA was considered to be scaled by the mtDNA concentration
* mtDNA damage by [•OH] (hydroxyl radical, derived from other ROS) and DOX directly

### Acute Effects
* constant concentration of the drug and performing a simulation until the model reached a steady state.
![](https://journals.plos.org/ploscompbiol/article/file?id=10.1371/journal.pcbi.1005214.g002&type=large)
* For low drug concentrations, the ATP concentration and the membrane potential were only barely reduced
* For high drug concentrations, mitochondrial function gradually deteriorate until a threshold is reached and the mitochondria completely collapse, with a complete loss of membrane potential and ATP concentration, a sharp increase in the ROS concentrations and a reduction in the O2 consumption to residual levels
* Theshold: 210 μM
![](https://journals.plos.org/ploscompbiol/article/file?id=10.1371/journal.pcbi.1005214.g003&type=large)
* dynamic simulations: fast absorbtion (5 mins) and slow elimination (24 hrs)
* For low doses, mitochondrial function is only marginally affected, but at high doses, some significant variations can be observed. Mitochondrial function deteriorates as the dose increases
* these effects are always temporary and all quantities return to their baseline values after the drug is fully eliminated from the system

### Chronic Effects
![](https://journals.plos.org/ploscompbiol/article/file?id=10.1371/journal.pcbi.1005214.g004&type=large)
* Added mtDNA model.  stable region 0.75-0.73. unstable < 0.73 (viscious cycle)
![](https://journals.plos.org/ploscompbiol/article/file?id=10.1371/journal.pcbi.1005214.g005&type=large)
* weekly doses of 1mg/kg of DOX, 30μM in the model.
* direct mtDNA damage by DOX is the main pathway that triggers this vicious cycle, being responsible for over 75% of the mtDNA content reduction during the acute stages of DOX intoxication.

### Cardioprotection Simulation
![](https://journals.plos.org/ploscompbiol/article/file?id=10.1371/journal.pcbi.1005214.g006&type=large)
* Iron chelators to mitigate mtDNA damage and the loss of mtDNA content associated with DOX.
* The simulations reproduced the setup of this in vivo experiment with rats
* extending the chelating treatment to two of three times the duration of the DOX treatment might considerably increase the cardioprotection

## Discussion
* Redox cycling is the main contributor to acute increases in ROS concentrations at clinically relevant concentrations
* ETC inhibition also showed negligible effects at clinically relevant concentrations, but more prominent @ lethal dose
* redox cycling and ETC inhibition alone are not capable of generating any long term alterations in mitochondria function; mtDNA damage is necessary.
* direct mtDNA damage by DOX is responsible for over 75% of the mtDNA content reduction during the acute stages of intoxication. ROS sustained the vicious cycle.
* cardioprotective agent that has shown efficacy (partial protection)
* extending the iron chelating therapy to time periods longer than the DOX treatment can enhance this protective property
### Limitations
* The repair systems of mtDNA are complex and still poorly understood
* additional 15,000 simulations were performed, exhaustively exploring the space of potential parameter combinations
* support the conclusion that direct damage to mtDNA by DOX is the main toxicity pathway responsible for triggering the vicious cycle
* the expression of mtDNA encoded proteins was considered to be proportional to the mtDNA content
    * there could be delays between the mtDNA damage and the reduction in the density of mtDNA encoded proteins
* do not take into account oxidative damage to any other structures or proteins

## Reference
[^DeOliveira2016]: De Oliveira BL, Niederer S. A biophysical systems approach to identifying the pathways of acute and chronic doxorubicin mitochondrial cardiotoxicity. PLoS Comput. Biol. 2016;12(11):e1005214. doi:10.1371/journal.pcbi.1005214.
