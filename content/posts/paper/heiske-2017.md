---
title: "Heiske 2017 | Comprehensive mathematical model of oxidative phosphorylation valid for physiological and pathological conditions"
date: 2020-10-23T00:05:44+08:00
tags: ["ODE"]
categories: ["Reading","Mitochondria"]
author: "Heiske et al."
authorLink: "https://febs.onlinelibrary.wiley.com/doi/full/10.1111/febs.14151"
description: "Comprehensive mathematical model of oxidative phosphorylation valid for physiological and pathological conditions"
---

[Sciwheel](https://sciwheel.com/work/#/items/5897992)[^Heiske2017]


<!--more-->

## Introduction
* Various models have hence been established to address different problems with respect to the mitochondrial energy metabolism.
    * Magnus and Keizer have used *two complementary rate equations* to describe the respiratory chain activity, one for calculating the *oxygen consumption* and the other one for *assessing the flux of the translocated protons*
    * All equations included a dependency on the membrane potential ΔΨ, and Cortassa et al. modified these equations in order to take into account also ΔμH
    * Yugi and Tomita: impact of ΔμH was not considered
    * Korzeniewski and Zoladz and Beard:  rate equation based on equilibrium thermodynamics or on mass action law. Do not exhibit saturation kinetics
* develop an OXPHOS model, where each OXPHOS complex is described by a separate rate equation, which *reproduces the enzyme kinetics* over a wide range of *substrate and products* concentrations, as well as *ΔμH*
* Michaelis–Menten type rate equation based on a sequential random binding mechanism, respecting thermodynamics

## Results
### Model
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/53240f54-73e5-4d4c-81da-474cc02f9387/febs14151-fig-0001-m.jpg)
![tbl1](https://user-images.githubusercontent.com/40054455/86618625-d3cf0100-bfeb-11ea-9945-6e23b7e1fedf.png)
![tbl2](https://user-images.githubusercontent.com/40054455/86618628-d5002e00-bfeb-11ea-90dc-e0e4e78d6592.png)
![tbl3](https://user-images.githubusercontent.com/40054455/86618630-d5002e00-bfeb-11ea-95f6-14d45f3e986b.png)
* derived from the previous models of Beard and Korzeniewski and Zoladz
* modified the rate equations for some reactions in order to take into account classical kinetic parameters and to respect thermodynamics

### Rate equations for the OXPHOS complexes and influence of the electrochemical potential difference
* the kinetics of complex I in the absence of the electrochemical potential difference ΔμH can be well described by a **Henri–Michaelis–Menten** type rate equation based on random binding

* general reaction scheme:
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/d6a0c8b5-1707-43da-8842-bfa925e7f6c1/febs14151-math-0033.png)

* In the absence of ΔμH:
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/72e3bb4e-9dea-4445-bb0d-741e15206ceb/febs14151-math-0034.png)

* Haldane relationship:
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/aa9807a5-c200-49b5-977f-21fa716267cb/febs14151-math-0038.png)

* equilibrium constant is related to the Gibbs energy of reaction
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/16aaade2-0509-41d7-a4db-e0ffc97433d2/febs14151-math-0040.png)

* Under the influence of the electrochemical potential difference
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/30c961e3-fa47-4f0f-b295-2a43b2357900/febs14151-math-0043.png)

* The resulting Haldane equation
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/51e4407f-b872-45cf-93ca-248f4bb5f13f/febs14151-math-0044.png)

* modulate the maximum rates k and the Km by an exponential expression
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/f1eabcb1-354e-4806-bdb4-c1435cb332b2/febs14151-math-0045.png)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/f1ccbe04-9bb6-4eba-aaa7-c3ebc52b9453/febs14151-math-0046.png)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/ec385b2c-b005-4862-a5e2-083acebc1ced/febs14151-math-0047.png)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/2893aae9-b682-4051-b65d-5a56f8749a9f/febs14151-math-0048.png)

* distribution of ΔGH
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/7538d400-4c98-45bf-974c-15517e74f04c/febs14151-fig-0002-m.jpg)

* Satisfying the thermodynamic relationship
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/6e2c1fd9-10f4-414e-b02b-5fc1de02b6c9/febs14151-math-0059.png)

* General forms of reaction rates
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/965bccc8-48fc-430a-8551-976f58ef908a/febs14151-math-0062.png)

### Rate equations of ETC complexes
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/f0a7fa2e-357f-4a61-89c4-d4c68e9060b2/febs14151-tbl-0004-m.jpg)

### Rate equation for the ADP/ATP carrier (AAC, ANT)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/32544b21-b2e3-4e27-8695-77c686c18083/febs14151-math-0063.png)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/27424cbd-540f-4e56-819d-4ae8af294fe3/febs14151-math-0064.png)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/156230de-4cc7-41ec-ba0e-dfecfe1bc679/febs14151-math-0065.png)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/d29af708-09eb-4b29-8807-32c8d5adf80f/febs14151-math-0066.png)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/1a5d3fff-7ee9-48c1-938d-1abcd846b6e9/febs14151-math-0067.png)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/1f62f6b9-c69b-4ff2-ba0b-6aed90ebc12c/febs14151-math-0068.png)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/b2f2d6f4-ff6b-4c87-8d07-4522f6a242bb/febs14151-math-0069.png)


### Rate equation for the proton leak
* Korzeniewski and Zoladz model (exponential relationship)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/8cae820c-7e5c-4a7f-84ef-b4b0b4aac8cb/febs14151-math-0073.png)

### Rate equation for the Pi/OH exchange
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/4ac6fed5-6655-42f9-86b0-2bf3f8b8e0b2/febs14151-math-0074.png)

### Rate equation for the adenylate kinase reaction
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/2cdf96e9-c5c4-4dde-bdff-d9c623957ceb/febs14151-math-0076.png)

### Parameters of the OXPHOS complexes
![tbl5-1](https://user-images.githubusercontent.com/40054455/86618637-d6c9f180-bfeb-11ea-86ba-59a926a3ed6a.png)
![tbl5-2](https://user-images.githubusercontent.com/40054455/86618640-d7628800-bfeb-11ea-88bd-29b9d6fdff53.png)

### Model parameters
![tbl6](https://user-images.githubusercontent.com/40054455/86618641-d7fb1e80-bfeb-11ea-9602-3ea3751b0fe6.png)

### Mitochondrial geometry and contents
![tbl7](https://user-images.githubusercontent.com/40054455/86618647-d9c4e200-bfeb-11ea-88c0-95483179e790.png)

### Kinetic parameters of the respiratory chain (class A)
* initial rate measurements on complex III and complex IV on bovine heart mitochondria
###### Complex III
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/aad31e81-ad31-46d7-ae22-9eb7658ca1fa/febs14151-fig-0003-m.jpg)
###### Complex IV
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/f13d96a3-45f5-485f-8e1e-9ccd9affae08/febs14151-fig-0004-m.jpg)

### Parameters values taken from literature data (class B)
* kinetic constants for the ATP synthase and the AAC, dissociation constants of mADP, mATP, and phosphate

### Empirical parameters (class C)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/c4579330-144f-4e8b-a350-38c4948705d9/febs14151-fig-0005-m.jpg)

## Model validation
* model can reproduce the Bose dataset, and is able to describe the steady‐state fluxes through the OXPHOS complexes under phosphorylating and nonphosphorylating conditions

###  Mitochondrial ATP production
* how tight the mitochondrial ATP production is coupled to the respiratory chain activity. This efficiency can be characterized by the *P/O ratio*
* The P/O ratio obtained at steady state was 2.64 which is in the range of experimental determined values 47 and which is very close to 2.67, the theoretical maximum
* only an **exponential‐shaped proton leak** flux in function of ΔΨ can correctly reproduce a near zero leak flux at state 3 as well as the given leak flux at state 4
###  Flux–force relationship
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/0a120738-8052-43e8-a4ea-3022eeba1908/febs14151-fig-0006-m.jpg)

* uncouplers
* respiration substrate
* ADP (from 0 to 1.3 mM)
* ATP synthase inhibitor
* inhibition of the ETC (complex I)
* in good agreement with the experimental flux–force curves of Amo and Brand 49 (Fig. 6A) and those of Hafner et al. 50 (Fig. 6B)

###  Simulation of time courses
![tbl8](https://user-images.githubusercontent.com/40054455/86618662-e3e6e080-bfeb-11ea-8aee-1f77f49a4d96.png)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/8cfe35d4-32bc-46ed-9309-d07507eaecc7/febs14151-fig-0007-m.jpg "Extension of the differential equation system of the OXPHOS model")

###  Flux control coefficients
* Flux control coefficients (FCCs):

![](https://wol-prod-cdn.literatumonline.com/cms/attachment/4c325308-bf85-4670-9c4c-2de803025c13/febs14151-math-0206.png)

approximated by

![](https://wol-prod-cdn.literatumonline.com/cms/attachment/464813c1-cdc4-4ad3-ba30-1049b330984a/febs14151-math-0208.png)

![tbl9](https://user-images.githubusercontent.com/40054455/86618663-e47f7700-bfeb-11ea-8ea8-3c9de2ed0452.png)

* The FCCs of C1, C3, and C4, the ATP synthase, and the AAC are in good agreement with the experimental data. The FCC for the PiOH is lower in our model (due to lower Km)

### Application to threshold curves
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/e7937271-73fb-4f37-a7ff-305031516f30/febs14151-math-0211.png "Inhibition")
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/7539e924-993e-4172-a19b-f6373745821b/febs14151-math-0216.png "Antimycin A effects")
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/f8eeda12-baa1-4f68-93d2-997922084a7c/febs14151-math-0217.png "Antimycin A effects")
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/6d823512-85f0-4c2b-b871-0fe4cf4819f5/febs14151-math-0220.png "oligomycin effects")
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/1070c4e5-81d6-4f9f-98d3-37451e3954cc/febs14151-math-0221.png "oligomycin effects")
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/77687bd7-7f00-4d6d-a946-2fcb1fe11234/febs14151-fig-0008-m.jpg "threshold curves at state 3")
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/23899329-2d50-40bd-a140-2176ce60a9c3/febs14151-fig-0009-m.jpg "threshold curves at state 4")
* This corresponds to the tendencies observed experimentally for complex I and III in rat liver mitochondria 60 and for complex IV in human hepatic cancer cell line (HepC2)

## Discussion

### New OXPHOS rate equations
* generic OXPHOS rate equation based on a Henri–Michaelis–Menten‐like rate equation, with influence of ΔμH as well as the substrate and product affinities (Km)
* new generic rate equation could be adapted to the number of substrate and products and to the stoichiometric factors of each respiratory chain complex
* For complex III, we did not take into account both ubiquinone sites (ubiquinone_o and ubiquinone_i). Using one apparent Km for ubiquinone and one for ubiquinol was thus more convenient and lead to satisfactory results for the description of the initial rate measurements
* these new rate equations are able to reproduce the steady‐state kinetics experimentally found for respiratory chain complexes I, III, and IV in the absence of ΔμH
* The approach respects thermodynamics and allows us to reproduce realistic flux–force relationships
### Model parameterization
* a large part of the parameters (class A and B) correspond to classical kinetic parameters which can be determined experimentally
* used the dataset of Bose in order to estimate the class C parameters
* the number of ζ and γ (free energy distribution in polarized mitochondria) to adjust can be importantly reduced (six parameters less to adjust), as the Km values of ubiquinone and ubiquinol of both, complexes I and III, and those of ADP and ATP of the ATP synthase were found to be insensitive to the membrane potential
### Activation of complex III by phosphate
* activation of the respiratory chain upon addition of Pi (experimental data of Bose)
* for simplicity we modeled only complex III to be influenced by Pi, similar as it has been done by Beard

### Model validation
* the model was able to describe well the large dataset of Bose et al. 17, comprising respiration rates, ΔΨ, matricial proton concentrations, and the redox states of NADH and cytochrome c
* correct P/O ratio of 2.64
* the simulated time courses of ΔΨ, O2, and the redox state of NADH showed a realistic behavior and were in good agreement with experimental data
* successfully confronted our model with different experimental datasets
### Application to threshold curves and future applications
* simulate threshold curves and predicted thereby the influence of an inhibition of a given OXPHOS system component on the respiratory flux
* For state 4 respiration, the simulated thresholds were higher than for state 3
* These good agreements could not be obtained when using OXPHOS rate equation based on mass action as described by Beard

##  Materials and methods
###  Conversion of catalytic activities (nmol·min−1·mg mito. prot.−1) into model rate constants (mol·s−1·(L mito. water space)−1
* 1 g mitochondrial protein corresponds to 2.28 mL mitochondrial water diffusion space

![](https://wol-prod-cdn.literatumonline.com/cms/attachment/06fba5fb-d35c-497d-bd9b-925960f5a0d3/febs14151-math-0231.png)

f_prot = 7.3E-6

### Conversion of respiration rates in nmol O2·min−1·nmol cytochrome a−1 into model rate constants (mol·(L mito. water space)−1·s−1)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/7e6d48fc-116d-4880-86d1-4f7503fe8c0f/febs14151-math-0232.png)

*  fcyta: the cytochrome a content in mammalian heart mitochondria. Its value was estimated within the above given range together with other adjustable model parameters

### Comparison of Km* values with literature Km values
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/0fc2c95e-fb9d-4764-a0cc-3fa41f4e7b27/febs14151-math-0237.png)
* we make the approximations that k is the same for both kinetic models, and that for [S] = Km, we have v = k/2
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/1f0481e0-8433-4892-ab36-66b4b5adce4f/febs14151-math-0242.png)

## Reference
[^Heiske2017]: Heiske M, Letellier T, Klipp E. Comprehensive mathematical model of oxidative phosphorylation valid for physiological and pathological conditions. FEBS J. 2017;284(17):2802-2828. doi:10.1111/febs.14151. [FEBS](https://f1000.com/fulltext/doi/10.1111/febs.14151).
