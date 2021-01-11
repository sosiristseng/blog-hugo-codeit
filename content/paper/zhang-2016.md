---
title: "Zhang 2016 | Multi-scale Modeling of the Cardiovascular System: Disease Development, Progression, and Clinical Intervention"
date: 2020-10-23T01:00:24+08:00
tags: []
categories: ["Reading","Cardiomyocyte"]
---

[Sciwheel](https://sciwheel.com/work/#/items/4023939)

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4983486/)[^Zhang2016]

<!--more-->

## Cardiac electrophysiological and mechanical models
* Subcellular processes interact nonlinearly in cardiac cells, leading to complex cellular dynamics that promote, across the scales of structural hierarchy, **emergent electrical behavior** at the level of the whole heart
![fig1](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4983486/bin/nihms782743f1.jpg "cardiac electrical and mechanical function from molecular to organ scales")
* A major challenge is to develop methodologies and new approaches to integrate data in physiological networks to reveal emergent mechanisms of disease and to facilitate prediction and development of therapeutic interventions. *No reasonable, efficient and cost-effective experimental or clinical strategy that can achieve these goals is currently available.*

### Bottom up approaches to cardiac multiscale modeling of electrophysiology
#### Protein scale – ion channel modeling
* drug free channel data is collected from the literature
* Kinetic parameters are extracted from electrophysiological experiments as ICs for parameter optimizations
* various optimization methods to multiple experimental data sets
* Sensitivity analysis
* Limits on parameter estimation
* numerical stability
* testing hypotheses
#### Cell Scale – cardiac cellular models
* multiple additional mechanisms can be included
    * mutations
    * drugs
    * homeostatic
    * disease effects
    * cell signaling cascades
* A perturbation of interest
* (Arrythmia) parameters tracked during the simulation
    * APD, max dV/dt
    * ion concentrations
    * EADs, DADs
    * Alternans (AP, Ca)
* Validate predictions via experiments
#### Tissue Scale – cardiac tissue models
* **reentrant arrhythmias** are fundamentally an emergent property of the cardiac system that can only be observed and studied in tissue
*  reduced coupling (GAP juctions), anisotropy and even pathological scar tissues
* Tracking APD restitution, conduction velocity (CV), and CV restitution
#### Organ Scale – Patient specific modeling
* For heart rhythm and contractile disorders
* reconstructed from clinical imaging
* personalized diagnosis, treatment planning, and prevention of sudden cardiac death
* Biophysically detailed models of the atria and ventricles assembled with data from clinical imaging modalities that incorporate electrophysiological and structural remodeling in cardiac disease
### Bottom-up approaches to cardiac multi-scale modeling of mechanics
#### Protein scale – myofilament and sarcomere modeling
* crossbridge and actomyosin interactions
* link between biomechanics and adenosine triphosphate (ATP) hydrolysis and energy metabolism
* investigating relationships between length, velocity and force generation by cardiac myofilaments as well as for studying the regulation of contraction by energy metabolism or post-translational modifications
#### Cell Scale – calcium regulation and multi-axial myocyte stress development
* crossbridge tensions being distributed both axially and transversely with respect to the myofibril axis of the myocyte
* excitation-contraction (EC) coupling: CICR -> contration
* From detailed model to lumped PDE/ODE model

#### Tissue Scale – myocardial constitutive models
* Tissue level properties must therefore be included such as the microarchitecture of myofibers, laminar sheets of myocytes, fibrous extracellular matrix, and the vasculature as well as the influence of pathologies such as, myocardial ischemia, infarcts and fibrosis
* histological measurements, DTI in ex-vivo tissues
* continuum models of tissue growth and remodeling
#### Organ Scale – whole heart and system electromechanics
* Whole heart models of cardiac mechanics and electromechanics are now quite well established
* cardiac atlas databases
* patient-specific models of cardiac electrophysiology, mechanics, electromechanics, perfusion, metabolism and growth

## Cardiovascular fluid mechanics
[Table2](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4983486/table/T2/?report=objectonly)
* CVD is a leading cause of deaths
* fluid dynamics has matured as a field involving computational methods
* wide ranges of time scales and length scales
###  Characterizing blood flow by disease, anatomy and imaging across scales
* Goal: maintaining or improving blood flow
* Diseases:  vessel luminal obstruction, vessel wall abnormalities, failing heart pump function, congenital cardiac malformations
* With clinical imaging methods: MRI, CT, Doppler, fluoroscopy
* Advancements in medical imaging and image segmentation now enable patient specific image-based fluid dynamic calculations.

###  Framework for multi-scale modeling elements in cardiovascular fluid mechanics
![fig2](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4983486/bin/nihms782743f2.jpg)
* No single model incorporates all the genetic, molecular, cellular, tissue-based and systems network. But linakges exist.

## Vascular biology, imaging, and biomechanics
### Current status on vascular multi-scale modeling
![fig3](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4983486/bin/nihms782743f3.jpg)
####  Physics-based models
* Blood vessels are anisotropic materials with orthotropic behavior and display nonlinear stressstrain response and viscoelasticity
* Based on standard approximations in nonlinear mechanics, the microstructural models can be classified into three categories
    1. uniform-field models with solid-like matrix
    2. uniform-field models with fluid-like matrix58
    3. second-order estimate models
#### Agent-based models (ABMs)
* simulating the actions and interactions of *autonomous* agents
* ideally suited for the analysis of complex, emergent phenomena
* Accurately identifying *agents* and their *characteristics* (behaviors and interactions) is the key
* Because of wide length and time scales and computational limitations, the work on multi-scale modeling using agent-based models is very sparse
### Existing Databases on Vascular biology for modeling

### Imaging Methods
![tbl1](https://user-images.githubusercontent.com/40054455/86726956-94d99380-c05d-11ea-9436-99cfa4dfa8e0.png)

## Future directions and challenges
* the greatest challenge is connecting the disparate scales
* another one is integrating multiple physical and biological processes
* increased computational demand with additional components
* Goal: multi-scale model for patient-specific uses
* NIH link for modeling tools and databases: https://www.imagwiki.nibib.nih.gov/modeling-tools-databases

![tbl4](https://user-images.githubusercontent.com/40054455/86726959-960ac080-c05d-11ea-9f71-4c9efcbd29f8.png)

## References
[^Zhang2016]: Zhang Y, Barocas VH, Berceli SA, et al. Multi-scale Modeling of the Cardiovascular System: Disease Development, Progression, and Clinical Intervention. Ann Biomed Eng. 2016;44(9):2642-60. [PMC4983486](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4983486/)
