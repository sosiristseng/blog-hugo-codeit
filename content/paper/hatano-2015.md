---
title: "Hatano 2015 | Distinct Functional Roles of Cardiac Mitochondrial Subpopulations Revealed by a 3D Simulation Model"
date: 2020-10-23T00:04:20+08:00
tags: ["PDE"]
categories: ["Reading","Cardiomyocyte"]
---

[Sciwheel](https://sciwheel.com/work/#/items/3609754). [Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4457478/)[^Hatano2015]

<!--more-->

## Introduction
* Mitochondria located in specific cell regions are reported to have different morphological and biochemical properties => subsarcolemmal mitochondria (SSM) and interfibrillar mitochondria (IFM)
* IFM and SSM are differentially affected under pathological conditions

## Materials and Methods
### 3D cardiomyocyte model
Previous model[^Hatano2012]
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/1af0ec73-23a6-40f9-b4b8-fd72dff6e129/gr1_lrg.jpg)
* Added oxygen and myoglobin buffering
* compared simulated oxygen and NADH distributions with the experimental results of Takahashi et al

### Modeling SSM and IFM
* Mitochondria facing the surface sarcolemma were taken to be SSM and others were taken to be IFM
* 10% of the mitochondrial node volume was treated as cytosolic space (corresponding to intermembrane space). Ions and metabolites freely diffusable between through OMM.
* IFM have ∼50% higher oxidative capacity and TCA activity than SSM in reports.
    * equal model: same capacity
    * hetero model: 50% higher enzymatic activity in IFM

![tbl1](https://user-images.githubusercontent.com/40054455/86618472-8d79a200-bfeb-11ea-8d33-41d97829b630.png)

### Oxygen diffusion and oxidative phosphorylation
* myoglobin as an immobile oxygen buffer and adopted a fast equilibrium assumption
  ![eqn1 myoglobin saturation](https://user-images.githubusercontent.com/40054455/86618462-8b174800-bfeb-11ea-840a-39791951b1ea.png)
  ![eqn2 partial oxygen pressure (PO2)](https://user-images.githubusercontent.com/40054455/86618467-8c487500-bfeb-11ea-8733-f9b5d17dd101.png), α = 1.5 μM / mmHg
* Rates of oxygen consumption and proton pumping (complex IV activity) multiplied by the MM factor of oxygen.
* The governing equations are shown in the Appendix with rate constants obtained from the literature
### Simulation protocols
* simulation with the published experiment by Takahashi et al. measured intracellular oxygen and intramitochondrial NADH gradients. rat cardiomyocytes
* simulate electrical pacing, we applied a current pulse (100 μA/cm², duration 0.5 ms)

## Results
### Validation of the oxygen diffusion model
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/c5a62901-6725-44f2-b70d-eb5ab6bf9210/gr2_lrg.jpg)
* The simulated rate of oxygen consumption was 0.23 μM/ms, which is comparable to the rates observed experimentally (0.15 μM/ms in Fig. 2 C and 0.24 μM/ms in Fig. 2 D

### SSM and IFM responses to changes in contraction frequency
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/2cd7fdd1-09d2-4d8f-b4fc-b759e90ee888/gr3_lrg.jpg)
* Despite the higher NADH and inner membrane potential levels, IFM synthesized ATP at nearly the same rate as SSM. This strongly indicate a dominant effect of the local environment on the apparent functional differences between IFM and SSM

### Response to hypoxia
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/4245ae5a-63ce-411c-8b57-b819e1a31c61/gr4_lrg.jpg)
* Immediately below the sarcolemma, PO2 decreased to 0.042 mmHg because of the transportation barrier created by the sarcolemma, whereas in the core region, PO2 dropped to <10−5 mmHg
* proton pump activity in core IFM dropped to nearly zero, resulting in mitochondrial membrane potential deprivation, whereas SSM continued to function. ATPase activity dropped to minus values in core IFM
* creatine phosphate (CrP) decreased fairly rapidly, and after depletion ATP started to drop
* peak Ca2+ transient levels decreased after a latent peroid from depletion of SR Ca2+ content caused by depressed SR Ca2+-ATPase (SERCA) activity
### Comparing the hypoxic response of the hetero and equal models
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/238e4166-a176-4e64-8b3f-e2f2e0188f26/gr5_lrg.jpg)
* hetero (dotted line) and equal (solid line) models
* Under normoxic conditions, the contribution of SSM to ATP production was relatively small, only ∼9.5% in the equal model and 5.8% in the hetero model
* under hypoxic conditions, the role of SSM dramatically increased in both models, with >70% of ATP being produced in SSM in the later stage of hypoxia
* Regarding ATPase activity, IFM (especially outer IFM) showed less negative activity in the hetero model

## Discussion
### Validation of the model
* EC coupling validated previously[^Hatano2012]
* Oxygen and NADH gradients
### Effect of subcellular location on mitochondrial Ca2+ handling
* SSM showed lower Ca2+ levels, weaker NADH recovery, and higher ADP levels, indicating a dominant effect of the local environment
* IFM show higher Ca2+ accumulation, but species dependent
* But sarcolemmal Na+-Ca2+ exchanger distribution between the surface and t-tubules would change the mitochondrial Ca2+ environment
### Response to hypoxia
* steep oxygen gradients, core IFM stopped functioning and even started to consume ATP reserves, whereas in SSM function was upregulated
* ATP and CrP diffusion is fast enough to keep [ATP] constant throughout the cell under normoxic conditions
* ATP produced in SSM may preferentially serve to maintain the reactions of neighboring organelles and molecules, and sustain them for longer periods of time; contractile activity supported by IFM deteriorates quickly
### Possible differences in intrinsic properties between IFM and SSM
* IFM showed a higher NADH, inner membrane potential, and faster recovery after a change in the pacing frequency in the hetero model compared with the equal model
* the role of SSM in ATP production increased significantly under hypoxic conditions (upregulated by 5x)
### Study limitations
* Not including some components working in low-[ATP] conditions, i.e., glycolysis, adenylate kinase, acidosis, and ADP- and AMP-dependent reactions, including KATP channels and myosin ATPase
## Appendix
![eqn3 reaction-diffusion equation for oxygen](https://user-images.githubusercontent.com/40054455/86618469-8ce10b80-bfeb-11ea-8e27-962915f9f10d.png)
![tbla1](https://user-images.githubusercontent.com/40054455/86618474-8d79a200-bfeb-11ea-8fad-00819614d18f.png)

## Reference
[^Hatano2015]: Hatano A, Okada J, Washio T, Hisada T, Sugiura S. Distinct functional roles of cardiac mitochondrial subpopulations revealed by a 3D simulation model. Biophys J. 2015;108(11):2732-9. [PMC4457478](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4457478/).

[^Hatano2012]: Hatano A, Okada J, Hisada T, Sugiura S. Critical role of cardiac t-tubule system for the maintenance of contractile function revealed by a 3D integrated model of cardiomyocytes. J. Biomech. 2012;45(5):815-823. doi:10.1016/j.jbiomech.2011.11.022.
