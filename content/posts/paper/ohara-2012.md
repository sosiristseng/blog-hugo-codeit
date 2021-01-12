---
title: "Ohara 2012 | Quantitative comparison of cardiac ventricular myocyte electrophysiology and response to drugs in human and nonhuman species"
date: 2020-10-23T00:31:44+08:00
tags: ["ODE"]
categories: ["Reading","Cardiomyocyte"]
author: "OHara et al."
authorLink: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3311457/"
description: "Quantitative comparison of cardiac ventricular myocyte electrophysiology and response to drugs in human and nonhuman species"
---

[Sciwheel](https://sciwheel.com/work/#/items/1270875)[^OHara2012]

<!--more-->

## Introduction

Ion channel currents, which determine the ventricular action potential (AP), are species dependent, so are arrhythmia mechanisms (e.g. Ref. 37) and responses to administration of drugs

## Materials and Methods
Previously developed and extensively validated models of the human (21), dog (7), guinea pig (10), and rabbit (28) ventricular epicardial (Epi) APs were used.

Model codes are available at http://rudylab.wustl.edu/

### Simulation of β-adrenergic response to isoproterenol (ISO)
τxs1,PKA = 0.6 * τxs1 and GKs,PKA = 3.2 * GKs

### Definitions and pacing protocol
* APD at 30, 50, 70, and 90% of complete repolarization (APD30–90, in ms) was determined
* time of maximum dVm/dt during the AP upstroke
* paced to steady state at each cycle length (CL)

## Results
### Block of delayed rectifier K+ currents, simulating effects of drugs or mutation
![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.302.issue-5/ajpheart.00785.2011/production/images/large/zh40041202780001.jpeg)

* For 70% IKr block (Fig. 1A), simulated APD90 was substantially prolonged in human
* 90% IKs block was essentially of no consequence for human (4%, 10-ms APD prolongation), dog (1%, 2-ms APD prolongation), and rabbit (3%, 8-ms APD prolongation). only 50% IKs block (Fig. 1, right), was required to substantially prolong APD in guinea pig

![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.302.issue-5/ajpheart.00785.2011/production/images/large/zh40041202780002.jpeg)
* IKs block effect in human and dog remained smaller than in guinea pig

### APD rate dependence
![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.302.issue-5/ajpheart.00785.2011/production/images/large/zh40041202780003.jpeg)
* APD90 was longest for human (large mammal)
* 1-Hz pacing may be a poor choice for representing physiological AP dynamics in guinea pig, a species in which resting heart rates are much faster

### Intracellular sodium accumulation.
![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.302.issue-5/ajpheart.00785.2011/production/images/large/zh40041202780004.jpeg)
* For human and dog, ΔVm was greatly reduced by [Na+] clamp, indicating that rate-dependent [Na+] changes play an important role in rate-dependent AP changes via electrogenic INaK
* Change in INaK is greatest for guinea pig. However, its effect on AP is the smallest because it occurs on the background of a large slow delayed rectifier K+ current, IKs, which is the largest in guinea pigs.
* Na+ concentrations in guinea pig were higher than in the other species

### Mechanism of IKs rate dependence.
![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.302.issue-5/ajpheart.00785.2011/production/images/large/zh40041202780005.jpeg)

* In guinea pig, slow deactivation of IKs results in incomplete deactivation between beats at fast pacing rate and channel accumulation in the open state, shortening the APD

### Rate dependence of β-adrenergic effects on INaK and IKs
* One of the targets of β-adrenergic stimulation is INaK => modeled as increase in Na+ binding affinity of the pump
* in the presence of β-adrenergic stimulation, PKA effects on INaK helped preserve APD rate dependence in human but were not important in dog.
* β-adrenergic stimulation affects mechanisms of APD rate dependence in a species-dependent fashion. In human, PLM phosphorylation and IKs available reserve accumulation are equally important factors, while in dog, IKs accumulation in available reserve states is more important.

### Transmural cell types
![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.302.issue-5/ajpheart.00785.2011/production/images/large/zh40041202780006.jpeg)

### EADs
![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.302.issue-5/ajpheart.00785.2011/production/images/large/zh40041202780007.jpeg)

* EADs may form with slow pacing (CL = 2,000 ms) and block of repolarizing K+ current
* EAD formation with 90% IKr block in dog but not human or guinea pig
* EADs developed in guinea pig with 90% IKs block, not in human or dogs
* The development of EADs is species dependent.

## DISCUSSION
### Findings
1. IKr reduction prolonged human AP substantially more than APs of dog and guinea pig.
2. Under basal conditions (absence of β-adrenergic stimulation), IKs reduction had almost no effect on human and dog APs, but it severely prolonged the guinea pig AP.
3. In the presence of β-adrenergic stimulation, IKs reduction affected all species to substantial degree.
4. Rate-dependent INaK changes play a major role in APD rate dependence in human and dog. The role of INaK is secondary to [Na+] accumulation at fast rates.
5. For guinea pig, IKs dominates APD rate dependence via its open-state accumulation at fast rate, while in human and dog under β-adrenergic stimulation, accumulation of IKs in available reserve closed states is important for proper AP repolarization and APD shortening at fast rate.
6. EAD formation due to delayed rectifier K+ current block at slow pacing rates is species dependent.

* did not include mouse or rat APs in this comparison: AP morphology, physiological heart rate, and rate dependence in these *smaller mammalian species* are set apart due to lack of plateau phase and a different cellular ion-channel profile
* Human and dog (as well as rabbit) repolarization is due mainly to IKr, which is not rate dependent.
* IKr and IKs are critical for AP repolarization in the ventricle.

## Reference
[^OHara2012]: O’Hara T, Rudy Y. Quantitative comparison of cardiac ventricular myocyte electrophysiology and response to drugs in human and nonhuman species. Am. J. Physiol. Heart Circ. Physiol. 2012;302(5):H1023-30. doi:10.1152/ajpheart.00785.2011. [PMC3311457](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3311457).
