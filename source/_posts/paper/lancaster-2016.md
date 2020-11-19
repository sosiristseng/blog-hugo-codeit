---
title: "Lancaster 2016 | Improved Prediction of Drug‐Induced Torsades de Pointes Through Simulations of Dynamics and Machine Learning Algorithms"
date: 2020-10-23T00:17:08+08:00
tags: []
categories: ["Reading", "Cardiomyocyte"]
---


[Sciwheel](https://sciwheel.com/work/#/items/5876765)

[Article](https://ascpt.onlinelibrary.wiley.com/doi/full/10.1002/cpt.367)[^Lancaster2016]

<!--more-->

## Introduction

* drug‐induced Torsades de Pointes (TdP) remains a critical issue in drug development.
    * blockade of the KCNH2, or hERG (IKr)
* Reduction in IKr increases the action potential duration (APD), which appears as an increased QT interval in the EKG
* A major shortcoming of the hERG assay is the failure to account for *multichannel* drug effects.
* The goal of this study was twofold
    1. to develop a classifier for improved prediction of drug torsadogenicity.
    2. apply our classifier to identify key cellular physiological differences between torsadogenic and nontorsadogenic drugs
* Quantitative Systems Pharmacology approach : combined modeling of *physiological dynamics* with *statistical analysis and machine‐learning*

## RESULTS
### Human ventricular cell models simulate drug response
![fig1](https://user-images.githubusercontent.com/40054455/86700407-add54b00-c043-11ea-9fef-64213bfa14fc.jpg)

*  simulated the application of 86 drugs at effective free therapeutic plasma concentration (EFTPC) in three recent, independently formulated human ventricular myocyte models (TP, GPB, ORd)
* 13 metrics in the AP and Ca trasient curves

### A novel classification method identifies torsadogenic drugs
![fig2](https://user-images.githubusercontent.com/40054455/86700411-af067800-c043-11ea-9848-ae91d835637d.jpg)
![tbl1](https://user-images.githubusercontent.com/40054455/86700453-b6c61c80-c043-11ea-8ef5-074d150429e1.png)

* **principal components** (PCs) from the metrics: first three PCs describe 88.2% of the variance
* clear division between torsadogenic and nontorsadogenic drugs
* The drug scores in the PC space were used to train a **support vector machine (SVM) classifier**, with accuarcy of 87.2%. Area under ROC curve (auROC) was 0.963.
* substantial improvement over classifications based on either hERG block or APD at 90% repolarization (APD90)

### Ca2+ dynamics augment action potential duration to identify torsadogenic drugs
![fig3](https://user-images.githubusercontent.com/40054455/86700418-af9f0e80-c043-11ea-8175-3bb6b16546fe.jpg)

* PC scores are less clear in mechanisms explanation
* Classification based on **specific simulated metrics** rather than PC scores provides *physiological insight* into differences between drugs
* two to three metrics may allow for accurate drug classification (from PC analysis)
* APD at 50% repolarization (APD50) and diastolic (Ca2+)i => auROC = 0.962
* drugs with dramatic AP prolongation are torsadogenic. diastolic (Ca2+)i provides the additional information necessary to classify the drugs.

### Risk prediction is robust across a large range of doses
![fig4](https://user-images.githubusercontent.com/40054455/86700424-b0d03b80-c043-11ea-8756-210b42dbd2b8.jpg)

* repeated the classification analysis after simulating each drug at 0.1, 1, 10, and 100 times typical clinical concentration (EFTPC)
* dose‐dependence of each drug's distance from the decision boundary
* Amiodarone, imipramine, and solifenacin were close to the origin at EFTPC, but higher concentrations of these drugs moved them onto the correct, torsadogenic side of the decision boundary.
* The classification algorithm correctly predicted the torsadogenicity of donepezil, previously regarded safe.

### A synthetic population stratifies drug risk
![fig5](https://user-images.githubusercontent.com/40054455/86700439-b3329580-c043-11ea-9c79-be9e774bfdfb.jpg)

* generated a synthetic population of 24 individuals by randomly varying ionic current parameters and calibrating the population variability to experimental data
* Simulating drug effects in a synthetic population allows us to compute probabilities of TdP risk
* Ibutilide, a class III antiarrhythmic with a well‐established risk of Torsades, is predicted to be dangerous in the majority (71%) of individuals
* nitrendipine is a dihydropyridine Ca2+‐channel blocker with no known risk of Torsades that is predicted to be safe in all individuals in the population
* nilotinib: safe in the majority of individuals, but torsadogenic in a subset (12.5%).

### Off‐target interactions influence drug risk
![fig6](https://user-images.githubusercontent.com/40054455/86700447-b463c280-c043-11ea-95a0-7fb6452f1a98.jpg)

* we generated 100 hypothetical drugs that alter the activity of nine ion channels, pumps and transporters distinct from those targeted by the original drug set.
* predict the influence of each parameter on drug risk
* alterations to the **Na+‐Ca2+ exchanger** have the largest effect on TdP risk, with increased current leading to decreased risk. The Na+‐K+ ATPase, background Ca2+ current and the SERCA pump followed in significance
* increases in the activity of the Na+‐K+ ATPase and the Na+‐Ca2+ exchanger were protective, whereas decreases were predicted to be torsadogenic
* slow delayed rectifier (GKs) and the inward rectifier (GK1): blocking either K+ current is predicted to be torsadogenic, and enhancing either is protective

## DISCUSSION
* Quantitative Systems Pharmacology (QSP) strategy, running extensive mechanistic simulations based on results from a large drug dataset.
* provide deeper insight into the physiological mechanisms of drug action than the “snapshot” one obtains using high‐throughput measurements, such as ion channel block or altered gene expression
* the value of simulations to not only predict cellular drug responses, but to **direct experimental studies**
* we do not assume the primacy of particular physiological responses, such as AP prolongation. Instead, we calculate from simulations a *wide range of metrics*, and then systematically determine which are most informative
* drug‐induced changes in **diastolic (Ca2+)** were nearly as important as changes in **APD** to differentiate between torsadogenic and nontorsadogenic drugs
* Na+‐K+ ATPase, Na+‐Ca2+ exchanger, background Ca2+ current, and the SERCA pump as the most significant potential modulators of TdP risk
* peak INa inhibition does not account for specific effects on the late Na+ current (INaL)
* Our method also does not include drug effects on channel trafficking, which plays a role in the torsadogenesis of some drugs

## METHODS
### Models and simulations
* (1) OVVR14; (2) ten Tusscher and Panfilov12; and (3) Grandi, Pasqualini, and Bers
* stimulated at rates of 2 Hz, 1 Hz, and 0.5 Hz to steady state
* under 24 different conditions: at 3 pacing rates × 8 cell types

### Databases
* reported half‐maximal inhibitory concentrations (IC50) for channel inhibition. We obtained these data for 86 drugs published in the studies by Kramer et al. and Mirams et al. as training set.
* We defined the torsadogenicity of the drugs in our training set using the CredibleMeds database (https://www.crediblemeds.org)

### Classification of drugs
* 331 metrics => PCs => training a SVM classifier15 with a linear kernel

## Reference
[^Lancaster2016]: Lancaster MC, Sobie EA. Improved Prediction of Drug-Induced Torsades de Pointes Through Simulations of Dynamics and Machine Learning Algorithms. Clin. Pharmacol. Ther. 2016;100(4):371-379. doi:10.1002/cpt.367. [ASCPT](https://ascpt.onlinelibrary.wiley.com/doi/full/10.1002/cpt.367)
