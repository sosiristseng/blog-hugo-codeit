---
title: "Gauthier 2012 | Toward an integrative computational model of the Guinea pig cardiac myocyte"
date: 2020-10-23T00:00:27+08:00
tags: ["ODE"]
categories: ["Reading","Cardiomyocyte"]
---

[Sciwheel](https://sciwheel.com/work/#/items/2896538)

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3389778/)[^Gauthier2012]

<!--more-->

## Introduction
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g001.jpg)

* Local control model of CICR: graded release, high gain, stable APs are possible. Biophysically realistic.

###### kinetic and steady-state properties of the LCC model
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g002.jpg)
* maximal peak of −32 μA/μF at +10 mV

###### the fraction of total SR Ca2+ released by an AP at varying SR loads.
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g003.jpg)

## Ion channels and Ca2+ cycling
* Based-on ECME model
* delayed rectifier (IK) : Zeng, 1995 (IKs + IKr)
* NCX: Weber, 2011
* A mitochondrial Na+-H+ exchanger: Wei, 2011
* ATP-dependent K+ current: Ferrero 1996
* For Ca removal, the SR Ca2+-ATPase (SERCa) takes up 65.9% of the transported cytosolic Ca2+, NCX removes 28.9%, and the sarcolemmal (SL) Ca-pump removes 5.1%
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g004.jpg)

## Results
### CICR during the action potential vs experiments
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g005.jpg)
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g006.jpg)
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g007.jpg)

### Response of LCC and RyR
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g008.jpg)
* Graded release is possible.

### Ca transient
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g009.jpg)
* Incorporation of the local control model of the CaRU into the myocyte model allows for the prediction of localized subspace Ca2+ levels
* During 1 Hz pacing, the predicted average subspace Ca2+ level peaks near 2 μM, four times higher than the peak of the cytosolic transient. Subspace Ca2+ for dyads with open LCCs and RyRs reaches a maximum of 45 μM during the AP plateau.

### APD restitution
* Quick pacing => incomplete recovery from inactivation of ICa,L and INa => shorter APD

![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g010.jpg)

### Frequency-dependence of APD and ECC
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g011.jpg)

### Mitochondrial energetics
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g012.jpg)
* a higher ADP:ATP ratio results from the increased ATP consumption at rapid contraction rates
*  an abrupt decrease in NADH before restoration to a new steady-state at the higher pacing frequency (TCA cycle and mitochondrial ca dynamics is slower)

### Uniporter block
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g013.jpg)
* After 75% of mitochondrial Ca2+ uniporters are blocked in the model, the cytosolic Ca2+ transient peak increases 51%, similar to experiments
* The significance of beat-to-beat buffering of cytosolic Ca2+ by the mitochondria
* the Ca2+ buffering properties of the mitochondria affect the amplitude of the cytosolic Ca2+ transient. This in turn modulates the amplitude of the force transient

## Discussion
*  biophysically based model of local control of SR Ca2+ release: gradedness of Ca2+ release, voltage-dependent ECC gain, without the need of expensive stochastic simulations
* Without a mechanistic description of this mechanism, common pool models are unstable because the strong negative feedback on ICa,L via CDI resulting from regenerative RyR Ca2+ release into the common pool essentially switches LCC trigger flux off prematurely

### Local control model predicts effects of AP shape on calcium-release
* the Ca2+ transient peaks during the late phase of the AP;  the force transient is also delayed, having a peak that occurs after the AP is repolarized
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g014.jpg)
* the relative timing of the Ca2+ transient cannot be reconstructed using a common pool model
* This model result emphasizes the role of the plateau potential in the nature of SR release triggering
* differences in AP morphology (Figure ​(Figure15A)15A) can result in very different trigger L-Type Ca2+ currents
![](https://www.frontiersin.org/files/Articles/25359/fphys-03-00244-r2/image_m/fphys-03-00244-g015.jpg)
* The canine AP has a significant early repolarization notch and a significantly longer APD. Canine [Ca]i transient peak is approximately aligned with the AP notch, while the guinea pig [Ca]i transient peak occurs during the late plateau phase
* Use of a local control model such as this one featuring AP shape-dependent release will have important implications regarding behavior of tissue level model electro-mechanics. e.g. transmural differences
* Among rabbit, canine, and human, all of which express Ito, the AP notch is more prominent in recordings from epicardial than endocardial myocytes
* The current model predicts that these differences in notch depth and initial plateau height may significantly influence the timing of Ca2+ release and force generation in these different species, emphasizing the importance of the inclusion of graded release in electromechanical models.
* The all-or-none release produced by such common pool models fails to capture the sensitivity of the intracellular Ca2+ transient, and thus force transient, to changes in AP shape

### Critique of the model
* IKs model resulting in APD restitution time constant different from experiments
* This model is unable to simultaneously achieve this frequency-dependent behavior and match the experimentally measured rate of AP restitution
* this model is not able to reproduce the Ca2+ restitution and related short-term interval-force relationships
* NSR and JSR are of the smae compartment in this model (experiment: diffusion time constant = 90ms)
* the concentrations of ions in close proximity to the sarcolemma may vary from those of the bulk cytosol => subsarcolemmal compartment, esp in atrial CMC models.
* An alternative approach to modeling graded release in deterministic myocyte models is to utilize more abstracted release descriptions e.g. ORd model: **Jrel is a function on ICaL**. But they cannot be used to predict the effects of events such as fundamental changes in RyR gating on ECC gain properties without additional assumptions

## Reference
[^Gauthier2012]: Gauthier LD, Greenstein JL, Winslow RL. Toward an integrative computational model of the Guinea pig cardiac myocyte. Front. Physiol. 2012;3:244. doi:10.3389/fphys.2012.00244. [PMC3389778](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3389778).
