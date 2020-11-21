---
title: "Gadkar 2016 | Quantitative systems pharmacology: a promising approach for translational pharmacology"
date: 2020-10-22T23:59:02+08:00
tags: ["QSP", "Quantitative systems pharmacology"]
categories: ["Reading"]
---

[Sciwheel](https://sciwheel.com/work/#/items/4692057).

[Article](https://www.sciencedirect.com/science/article/pii/S1740674916300336?via%3Dihub)[^Gadkar2016]

<!--more-->

## Introduction
* drug development in the 'post-genomic era' => data science
* majority of Phase II and Phase III clinical trial failures are due to **lack of efficacy**
* more confidence in the **mechanism of action** is crucial for drug development in the early phase
* most novel drug mechanisms, however, human evidence is minimal if not absent during preclinical development
* In vitro: target & biomarkers
* In vivo (animal models): interspecies differences in physiology and pathology
* In silico (math modeling): pharmacokinetic–pharmacodynamic (PKPD), but not complex, highly regulated biology and disease in animals or humans typically.
* Quantitative Systems Pharmacology (QSP):
    * Quantitative analysis of the dynamic interactions between drug(s) and a biological system that aims to understand the behavior of the system as a whole, as opposed to the behavior of its individual constituents
    * Data-driven models to mechanistically driven ones
    * Numerous potential applications of QSP exist in the preclinical and translational space
![fig1](https://user-images.githubusercontent.com/40054455/86617645-26a7b900-bfea-11ea-8e03-713aaf88de95.PNG)

## Evaluation of a novel target for treatment of asthma
* Agents targeting IgE (omalizumab) and IL-5 (mepolizumab) have been approved, and other agents targeting the IL-5, IL-4, and IL-13 cytokine pathways are in advanced development
* complex redundancy, feedback, and regulation of the numerous cells, pathways, and functions
![tbl1](https://user-images.githubusercontent.com/40054455/86617661-2b6c6d00-bfea-11ea-9574-dd967c3afcac.PNG)
* mechanistic information collated from expert knowledge and in vitro and preclinical data.
* Blinded predictions for response of severe asthmatic virtual patients to the anti-IL4R a antagonist (dupilumab) matched clinical results well => useful
* bridges complex mechanistic interactions and clinical knowledge to enable predictive simulations and exploration

![fig2](https://user-images.githubusercontent.com/40054455/86617653-290a1300-bfea-11ea-9f5c-f0b4af1be9d3.PNG)

## Mechanistic support and combination strategy for ERK inhibition in BRAF mutant cancer
* mitogen-activated protein kinase (MAPK) signaling cascade, consisting of the RAS/RAF/MEK/ERK constitutively activated in many human cancers
* Inhibitors targeting BRAF (vemurafenib, dabrafenib) and MEK (cobimetinib, trametinib) are approved
* But there are poor response or acquired resistence
* acquired resistance to BRAF or MEK inhibitors show pathway rebound and remain responsive to **ERK inhibition**
![fig3](https://user-images.githubusercontent.com/40054455/86617655-2a3b4000-bfea-11ea-9609-a77c39e79cb2.PNG)
* weighted virtual populations were then used to predict response rates to the ERK-inhibitor regimens, for which clinical data did not yet exist.
* predicted a synergistic response to the combination of MEK + ERK inhibition

## PBPK guidance for intravenously administration of oseltamivir (Tamiflu) in pediatric patients (children)
* allow simulations of the concentration versus time profiles in plasma and tissues after dosing.
* superior predictive power achieved through translation of in vitro data into expected in vivo performance, well-suited to translational predictions
* streamline late stage drug development with avoidance of routine clinical studies
![fig5](https://user-images.githubusercontent.com/40054455/86617656-2ad3d680-bfea-11ea-84e4-cf880978cb43.PNG)
* Drug distributions and metabolism as well as age dependency
* In vivo, verified the reliability and plausibility of the modeling of oral and intravenous dosing in newborn monkeys => verification of simulations of oral dosing in infants and neonates

## Summary
Values of QSP:
1. identifying novel targets
2. guiding preclinical study design
3. predicting clinical PK based on physiological and molecule considerations
4. predicting the potential for human efficacy and safety of novel targets and compounds
5. evaluating or identifying potential biomarkers
6. providing mechanistic understanding of efficacy, safety, and biomarkers
7. evaluating combination therapy strategies for new molecules.

## Reference
[^Gadkar2016]: Gadkar K, Kirouac D, Parrott N, Ramanujan S. Quantitative systems pharmacology: aromising approach for translational pharmacology. Drug Discov. Today Technol. 2016;21-22:57-65. doi:10.1016/j.ddtec.2016.11.001.
