---
title: "Ellinwood 2017 | In Silico Assessment of Efficacy and Safety of IKur Inhibitors in Chronic Atrial Fibrillation: Role of Kinetics and State-Dependence of Drug Binding"
date: 2020-10-22T23:52:20+08:00
tags: ["ODE"]
categories: ["Reading", "Cardiomyocyte"]
---

[Sciwheel](https://sciwheel.com/work/#/items/6117352)

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5681918/)

<!--more-->

## Introduction
* Atrial fibrillation (AF) is characterized by rapid, irregular heart contractions following fast, disorganized electrical signals in the atria
*  most common cardiac arrhythmia (1-2%)
* Pharmacological therapy against AF is limited by low efficacy and substantial adverse side effects including an increased risk of lethal ventricular tachyarrhythmias. radiofrequency ablation is the most effective treatment.
* Genetic mutations causing both loss- and gain-of-function of **IKur** have been associated with atrial arrhythmias in human

## Methods
### Atrial AP Model and Simulationss
* Grandi et al. model
* IKur gating was described by a 6-state Markov type model
* The cycle length (CL) was allowed to vary randomly following a uniform distribution between 285.7 and 400 ms, corresponding to a minimum pacing frequency of 2.5 Hz and a maximum pacing frequency of 3.5 Hz
* The model code is available for download at the following webpages: https://somapp.ucdmc.ucdavis.edu/Pharmacology/bers/ and http://elegrandi.wixsite.com/grandilab/downloads (e-mail required)
* Parameter sensitivity analysis was performed with the population-based approach described in Sobie (2009), Morotti et al. (2017), and Morotti and Grandi (2017)
### KV1.5 Drug-Binding Model
![](https://www.frontiersin.org/files/Articles/301424/fphar-08-00799-HTML/image_m/fphar-08-00799-g002.jpg)
* dissociation constants (Kd) for our drug scenarios were calculated as koff/kon, and affinity constants were calculated as kon/koff

## Results
### Role of IKur in nSR and cAF Atrial Electrophysiology
![](https://www.frontiersin.org/files/Articles/301424/fphar-08-00799-HTML/image_m/fphar-08-00799-g001.jpg)
* 900 variations of our nSR (normal sinus rhythm) and cAF (chronic AF) human atrial cardiomyocyte models
* At 3-Hz pacing, GKur impacts AP and ERP prolongation more in cAF vs. nSR despite the fact that GKur is smaller in cAF conditions.
* This points to IKur inhibition as a promising approach to counteract the abbreviated APD and ERP in cAF

### Effect of Conformational State Specificity and Binding/Unbinding Kinetics on Human Atrial Cardiomyocyte APD at Normal and Fast Pacing Rates in cAF Conditions
![](https://www.frontiersin.org/files/Articles/301424/fphar-08-00799-HTML/image_m/fphar-08-00799-g002.jpg)
* both types of inhibitors display a biphasic relationship between APD and drug-binding kinetics at 1- and 3-Hz pacing
* Significant APD prolongation is only seen for intermediate drug-binding kinetics (0.3–30 s−1 for the open state blocker and 1–30 s−1 for the open and inactivated state blocker)
* At 3-Hz pacing, the two types of inhibitors cause stronger relative prolongation as compared to 1-Hz pacing

![](https://www.frontiersin.org/files/Articles/301424/fphar-08-00799-HTML/image_m/fphar-08-00799-g003.jpg)
* Results in drug-free conditions and for an O & I blocker (modeled as in Figure 2F, black) with kon = koff (Kd = 1 μM) in Figure 3 again demonstrate a biphasic relationship between drug-binding kinetics and average APD90

### Effect of Conformational State Specificity and Binding/Unbinding Kinetics on Human Atrial Cardiomyocyte ERP at Normal and Fast Pacing Rates in cAF Conditions
![](https://www.frontiersin.org/files/Articles/301424/fphar-08-00799-HTML/image_m/fphar-08-00799-g004.jpg)
* The desired effect of IKur inhibitors is prolongation of atrial ERP (effective refractory peroid)
*  Simulations reveal a similar biphasic relationship between ERP and drug-binding kinetics
* At 1-Hz pacing, IKur inhibitors cause minimal ERP prolongation at slow drug-binding rates (≤0.3 Hz) and fast drug-binding rates (100 Hz)
* ERP prolongation remains ~62 ms lower than the ERP in nSR given no block of IKur for both inhibitors
* At 3-Hz pacing, however, IKur inhibitors appear to be more effective at extending ERP than APD => favorable drug property
### Effects of Drug Binding/Unbinding Kinetics with Variable Kd on APD, ERP, and Ca2+ Handling
![](https://www.frontiersin.org/files/Articles/301424/fphar-08-00799-HTML/image_m/fphar-08-00799-g005.jpg)
* Previous figure are for k_on = k_off (Kd = 1)
* Here we simulated all permutations of the nine different rates of drug binding (0.01 to 100 s−1), yielding 81 different combinations of kon and koff for the O & I state inhibitors
* Except for the drugs with the largest Kd values (koff >> kon), when kon is held constant, APD, ERP, and Ca2+ handling are not very sensitive to changes in koff. the effects of IKur inhibitors on atrial electrophysiology and Ca2+ handling are largely driven by kon rates as compared to koff rates.
* In cAF conditions, ideal IKur inhibitors exhibiting AF-selectivity will prolong atrial refractoriness (ERP prolongation at 3-Hz pacing), have limited toxicity (minimal to no APD prolongation at 1-Hz pacing), and have a positive inotropic effect (an increase in CaTamp at 1-Hz pacing)

### Effect of Relative State-Specific Drug Binding
![](https://www.frontiersin.org/files/Articles/301424/fphar-08-00799-HTML/image_m/fphar-08-00799-g006.jpg)

## Discussion
* we sought to determine if IKur is a suitable anti-AF target despite it being downregulated in cAF patients
* we implemented an in silico assessment of IKur inhibitors in cAF atrial cardiomyocyte models, and identified metrics for delineating ideal KV1.5 blockers against AF

![](https://www.frontiersin.org/files/Articles/301424/fphar-08-00799-HTML/image_m/fphar-08-00799-g007.jpg "Summary of main findings")

* Our simulations suggest that electrophysiological properties in cAF cardiomyocytes, such as shorter AP and more depolarized plateau potential, both might act to increase efficacy and dampen cardiotoxicity of potential KV1.5-targeting drugs as compared to nSR

### IKur Role in APD and ERP Regulation Is Preserved Despite Its Downregulation in cAF
*  the consequences of IKur inhibition, including the extent of AP and ERP prolongation, depend not only on IKur magnitude (i.e., maximal conductance), but also on other fluxes affected by AF-induced remodeling
* APD90 and ERP are more sensitive to changes in GKur at fast vs. slow pacing rates
* GKur impacted the duration of AP repolarization and refractoriness more in cAF vs. nSR
* Enhanced Efficacy and Safety of IKur Inhibitors in cAF vs. nSR
