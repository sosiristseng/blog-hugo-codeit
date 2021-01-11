---
title: "Ohara 2011 | Simulation of the undiseased human cardiac ventricular action potential: model formulation and experimental validation"
date: 2020-10-23T00:30:54+08:00
tags: ["ODE"]
categories: ["Reading","Cardiomyocyte"]
---

[Sciwheel](https://sciwheel.com/work/#/items/1270876). [Article](https://sciwheel.com/work/item/1270876/resources/3805229/pdf)[^OHara2011]

<!--more-->

## Model introduction
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g005)
- **ORd** (O’Hara-Rudy dynamic) model with new EP measurements for the L-type Ca2 +current, K+currents, and Na+/Ca2 +exchange current from undiseased human ventricle.
- Ca2+/calmodulin dependent protein kinase II (**CaMKII**) effects on ionic currents and Ca cycling
- Early afterdepolarizations (EADs) and alternans were reproduc
- All HH-type gating, no Markov-type ODEs for parameter constraint, efficiency and numerical stability
- No sigularities and condition statements
- Transmural Heterogeneity (endo, epi, M cells)

###  L-type Ca2+ Current (ICaL)
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g001)

### Transient Outward K+ Current (Ito)
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g002)

### Na+/Ca2+ Exchange Current (INaCa)
- Kang and Hilgemann [^Kang2004] model
- Slip allowed (stoichiometry > 3.0)
- 20% of the exchanger in the subspace

### Inward Rectifier K+ Current (IK1)
Voltage dependent, but not pacing rate dependent

### Rapid Delayed Rectifier K+ Current (IKr)
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g003)
Participation in AP shortening during steady state pacing at fast rate. (APD90 was a function of IKr conductance)
Voltage dependent, but not pacing rate dependent.

### Slow Delayed Rectifier K+ Current (IKs)
Ca2 + dependence of IKs was incorporated

### Fast Na+ Current and late Na+ current
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g004)
- nonfailing human ventricular data from Sakakibara et al
- Fast and late Na currents have long been understood to represent different gating modes.

### Na+/K+ ATPase Current (INaK)
Smith and Crampin model.
![eqn1](https://user-images.githubusercontent.com/40054455/86705650-aebcab80-c048-11ea-8612-33f0e40cf71c.png)
![](https://user-images.githubusercontent.com/40054455/86705667-b2e8c900-c048-11ea-94c2-b060c9c66b5b.png)

### Human AP Characteristics and APD
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g006 "human endocardial AP traces from experiments (small tissue preparations) and model simulations")

![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g007 "Undiseased human endocardial AP response to pacing protocols from experiments (small tissue preparations) and model simulations")

![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g008 "Pacing protocols with block of various currents")

![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g009 "Rate dependence of currents at steady state")

### Transmural Heterogeneity
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g010 "Transmural heterogeneity and validation of transmural cell type models")

## Early Afterdepolarization (EAD)
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g011)

## Na+ and Ca2+ Rate Dependence
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g012)

## Ca2+ Cycling and CaMK
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g013)

## Alternans
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g014)
* APD alternans appeared at CLs <300 ms (rates >200 bpm)

## Currents Participating in Steady State APD Rate Dependence and APD Restitution
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g015 "I–V curves during steady state rate dependent pacing at various CLs (A) and S1S2 restitution at various DIs (panel B)")

## Ionic Basis for APD Rate Dependence and Restitution
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g016 "Major causes of steady state APD rate dependence and S1S2 APD restitution")

## Comparison with Other Human Ventricular AP Models
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g017 "IKr deactivation is important for APD restitution at very short DIs")

![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002061.g018 "Comparison with other human ventricular AP models")

## Discussion
This model reproduces
- CDI versus VDI inactivation of ICaL
- Reformulated, detailed and accurate kinetics (using weighted time constants) for Ito,INaCa,IK1,IKr,IKs, fast INa, and late INa
- AP repolarization rate from 30% to 90% repolarization
- APD at all physiological pacing rates with/without block of major currents
- APD restitution with/without block of delayed rectifier currents
- transmural heterogeneity causing upright pseudo ECG T-wave
- early afterdepolarizations (EADs)
- effects of CaMK
- AP and Ca2+ transient alternans

## Limitations
- Direct measurement of INaK
- Sarkar and Sobie developed a method for quantitative analysis of parameter constraint and relationships between parameters and target outputs in AP model


[^OHara2011]: O’Hara T, Virág L, Varró A, Rudy Y. Simulation of the undiseased human cardiac ventricular action potential: model formulation and experimental validation. PLoS Comput. Biol. 2011;7(5):e1002061. doi:10.1371/journal.pcbi.1002061.

[^Kang2004]: Kang TM, Hilgemann DW. Multiple transport modes of the cardiac Na+/Ca2+ exchanger. Nature 2004;427(6974):544-548. doi:10.1038/nature02271. [Nature](https://www.nature.com/articles/nature02271)
