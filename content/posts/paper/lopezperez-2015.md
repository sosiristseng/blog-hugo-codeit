---
title: "Lopezperez 2015 | Three-dimensional cardiac computational modelling: methods, features and applications"
date: 2020-10-23T00:20:30+08:00
tags: ["review article"]
categories: ["Reading","Cardiomyocyte"]
author: "Lopezperez et al."
authorLink: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4424572/"
description: "Three-dimensional cardiac computational modelling: methods, features and applications"
---

[Sciwheel](https://sciwheel.com/work/#/items/3609994)[^Lopez-Perez2015]

<!--more-->

## Introduction
* Nowadays, 3D cardiac models are becoming increasingly complex and are currently used in other areas such as cardiac image segmentation, statistical modelling of cardiac anatomy, patient risk stratification or surgical planning

![tbl1](https://user-images.githubusercontent.com/40054455/86703723-bf6c2200-c046-11ea-9c08-7b7a846db893.png)

## Evolution of 3D models of cardiac anatomy
### Generic models
* Geometric models
* anatomical models: the rabbit model from University of California San Diego and the canine model from University of Auckland
* computer-aided design (CAD) tools
### Medical image-based models
* CT / MRI images => patient-specific models
![](https://media.springernature.com/lw785/springer-static/image/art%3A10.1186%2Fs12938-015-0033-5/MediaObjects/12938_2015_33_Fig1_HTML.gif)
* Cardiac atlases
* highly-detailed bi-ventricular models built from very high resolution ex-vivo MRI datasets (~25 μm per slice) from small mammalian hearts
![](https://media.springernature.com/lw785/springer-static/image/art%3A10.1186%2Fs12938-015-0033-5/MediaObjects/12938_2015_33_Fig2_HTML.gif)

## Elements of a 3D cardiac computational model
![](https://media.springernature.com/lw785/springer-static/image/art%3A10.1186%2Fs12938-015-0033-5/MediaObjects/12938_2015_33_Fig3_HTML.gif)
### Geometry
* completeness and the anatomical realism and accuracy required by a particular 3D cardiac model will strongly depend on its final application
* structurally simplified models (without endocardial details or vessels) are well suited for a large range of 3D cardiac modelling applications aimed at EP simulation
![](https://media.springernature.com/lw785/springer-static/image/art%3A10.1186%2Fs12938-015-0033-5/MediaObjects/12938_2015_33_Fig4_HTML.gif "3D cardiac geometry generation stage")
* Medical image-based models can include patient-specific details obtained from clinical imaging data and/or population-based properties collected from ex-vivo datasets
* Ex-vivo cardiac images can provide much higher spatial resolution than in-vivo datasets
* In-vivo images can provide both anatomical and temporal patient-specific information, thus enabling the characterisation of cardiac motion
### Meshing
![](https://media.springernature.com/lw785/springer-static/image/art%3A10.1186%2Fs12938-015-0033-5/MediaObjects/12938_2015_33_Fig5_HTML.gif)
* finite-element method (FEM) enabled the resolution of complex biophysical problems
* tetrahedral, hexahedral, cubic Hermite elements
* Spatial (ds) and temporal discretisation (dt) constraints are imposed when biophysical models are used, which are in the order of ds = 0.1-0.5 mm and dt = 0.05-0.005 ms
* For the case of phenomenological models, such as Eikonal ones, spatial and temporal discretisation is less demanding (order of ds = 0.5 mm, dt = 1 ms), resulting in faster computation times.
### Myocardial structure: fibre orientation
![](https://media.springernature.com/lw785/springer-static/image/art%3A10.1186%2Fs12938-015-0033-5/MediaObjects/12938_2015_33_Fig6_HTML.gif)
* rule-based algorithms
* measurements (histology, imaging)
* Diffusion tensor-MRI (DT-MRI), also called diffusion tensor imaging (DTI):  diffusion of water molecules within the biological tissues
![](https://media.springernature.com/lw785/springer-static/image/art%3A10.1186%2Fs12938-015-0033-5/MediaObjects/12938_2015_33_Fig7_HTML.gif)
### Cardiac conduction system
![](https://media.springernature.com/lw785/springer-static/image/art%3A10.1186%2Fs12938-015-0033-5/MediaObjects/12938_2015_33_Fig8_HTML.gif)
### Electrophysiology
![](https://media.springernature.com/lw785/springer-static/image/art%3A10.1186%2Fs12938-015-0033-5/MediaObjects/12938_2015_33_Fig9_HTML.gif)
* cellular-level equations and the tissue-level equations
* Hodgkin and Huxley (HH) formalism vs Markov-type models (more mechanistic detailed)
* EP models are now highly specific and include human atrial, ventricular and Purkinje cells in normal or diseased conditions
* The number of state variables in the ionic AP models (and thus the number of ODEs) can be as high as 48
#### Electrophysiological heterogeneities
* The ventricular wall is not homogeneous, as cardiac myocytes in different portions of the ventricles exhibit different ionic currents and APs.
* epicardial-endocardial, apico-basal and left-right differences
#### Tissue level models
* bidomain model: extracellular and intracellular domains: two partial differential equations (PDEs) + a set of ODE systems
* equal anisotropy ratios are assumed in diffusion tensors: monodomain approach: one reaction-diffusion PDE plus a set of ODE systems
* Highly computationally demanding esp. using FEM
* Eikonal approximation, which replaces the reaction-diffusion equation with an eikonal equation that is simpler and based on a Huygens approach
#### Electromechanical coupling
* Ca2+ cycling => EC coupling => myocyte shortening
* Acute changes in ventricular mechanics can affect cardiac EP: stretch-activated ion channels, mechanical modulation of cell calcium handling
### Pathology
* functional remodelling: electrical / mechanical
* Chronic or healed ischaemic injuries resulting from myocardial infarctions (infarct **scars**)
* diffuse myocardial fibrosis
### Example of a 3D cardiac computational model
![](https://media.springernature.com/lw785/springer-static/image/art%3A10.1186%2Fs12938-015-0033-5/MediaObjects/12938_2015_33_Fig10_HTML.gif)
## Personalisation of 3D cardiac computational models
![](tbl1.png)
## Applications of 3D cardiac computational models
### Cardiac image segmentation
![](https://media.springernature.com/lw785/springer-static/image/art%3A10.1186%2Fs12938-015-0033-5/MediaObjects/12938_2015_33_Fig11_HTML.gif)
* model-based segmentation: in-vivo cardiac image segmentation and analysis
* The Cardiac Atlas Project: a wide database of cardiac images available online
### Simulation of acute ischaemia
### Ablation of chronic myocardial infarction
### Cardiac resynchronisation therapy
## Reference
[^Lopez-Perez2015]: Lopez-Perez A, Sebastian R, Ferrero JM. Three-dimensional cardiac computational modelling: methods, features and applications. Biomed Eng Online. 2015;14:35. Published 2015 Apr 17. doi:10.1186/s12938-015-0033-5. [PMC4424572](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4424572/)
