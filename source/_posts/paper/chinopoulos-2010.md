---
title: "Chinopoulos 2010 | Forward operation of adenine nucleotide translocase during F0F1-ATPase reversal: critical role of matrix substrate-level phosphorylation"
date: 2020-10-22T18:26:01+08:00
tags: ["ANT", "ATP synthase"]
categories: ["Reading", "Mitochondria"]
mathjax: true
---

[Sciwheel](https://sciwheel.com/work/#/items/1605967).

[Article](www.ncbi.nlm.nih.gov/pmc/articles/PMC2887268/)[^Chinopoulos2010]

<!--more-->

## Introduction
* Mitochondrial ATP synthase (F0F1-ATPase) is able to synthesize and to hydrolyze ATP in the mitochondrial matrix.
* Adenine nucleotide translocase (ANT) and ATP-Mg/Pi carrier link matrix and ouside A pool.
* Both ANT and F0F1-ATPase catalyze reversible processes; their directionality is governed by the mitochondrial membrane potential (ΔΨm) and their respective “reversal potential” (Erev).

![eqn1 Reversal potential of ANT](https://user-images.githubusercontent.com/40054455/86616245-260e2300-bfe8-11ea-9296-7ebc012bcde1.png)
![eqn2 Reversal potential of ATP synthase](https://user-images.githubusercontent.com/40054455/86616251-27d7e680-bfe8-11ea-9fd8-b65bd0708bff.png), where pKa2 = 7.2

    * Depends on free ATP/ADP ratio (exnergetic state), Mg, Pi, and ΔΨm
    * ΔΨm is more negative than Erev_ATPase and Erev_ANT, ATP is synthesized in the matrix and ANT operates in the “forward” mode and vice versa.s
* A decrease in ΔΨm due to electron transport chain (ETC) inhibition or to an increase in the inner membrane permeability stops ATP synthesis and allows the ATP synthase to reverse.
* ΔΨm could be in a range where **ANT and F0F1-ATPase function in opposite directions** (ΔΨm range more positive than Erev_ATPase but more negative than Erev_ANT)
    * ATP sythase hydrolyzes ATP while ANT still export ATP, ATP comes from substrate-level phosphorylation: the mitochondrial phosphoenolpyruvate carboxykinase (PEPCK) and the succinate-CoA ligase (SUCL)

## Material and methdos
* rat and rabbit livers and hearts as well as rat cortical neurons
* Determination of [Mg2+]free by Magnesium Green fluorescence => ANT rate by changes of ATP/ADP (different affinity for Mg)
* ΔΨm: safranine O

## Results
### Computational estimations of Erev_ATPase and Erev_ANT
![eqn3 Free ATP](https://user-images.githubusercontent.com/40054455/86616253-28707d00-bfe8-11ea-8df5-9a132dab5564.png)

[L]t is the total ATP concentration, i.e., $\ce{[ATP^4−] + [HATP^3−] + [MgATP^2−] + [HMgATP−]}$

* both ANT and the F0F1-ATPase handle the measured free [ATP] and [ADP]

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2887268/bin/z380071078190001.jpg)

* F1F0-ATPase could indeed hydrolyze ATP without the assistance of the reverse operation of ANT in mitochondria (B region)
* at ∼−100 mV, the ANT was only minimally functional or it did not reverse, which is in accordance with the ADP-ATP steady-state exchange activity/ΔΨm relationship

### Addressing the role of IF-1 on the directionality of F0-F1 ATPase and ANT in isolated rabbit heart and liver mitochondria

* IF-1 inhibits the consumption of ATP by the F0F1-ATPase in low ΔΨm
* **Rabbit heart** exhibits the highest expression of IF-1 with the highest affinity for the ATPase, whereas rabbit liver exhibits very low expression of IF-1, almost similar to that of rat liver and heart, which exhibit low affinity for the ATPase.
    * rabbit liver mitochondria exhibited symmetric ATP production and consumption rates, as opposed to mitochondria from rabbit heart, which exhibited diminished rates of ATP consumption compared with ATP production

### KATP channel activity to indicate cytosolic energy state in neurons
* application of either rotenone, stigmatellin, or NaCN alone failed to result in KATP channel activity
    * cytosolic ATP level remained unchanged AFTER inhibition of the ETC
    * cytosolic ATP was not consumed by mitochondria with impaired ETC
    * mitochondria consumed cytosolic ATP, but a rebound increase (Pasteur effect) in the glycolytic ATP output compensated adequately

## Discussion
* F1Fo-ATPase is able to work in reverse without the concomitant reversal of ANT
* matrix substrate-level phosphorylation could be critical in providing ATP for the reversed F1Fo-ATPase,
maintaining ΔΨm at a suboptimal level, where mitochondria are depolarized, but not sufficiently for the ANT to reverse. This would assist in preserving the ATP pool produced by glycolysis, which is evidently crucial for the survival chances of cells due to maintenance of the function of the vital ATP-dependent transporters, such as Na+/K+-ATPase and Ca2+-ATPase
* when depolarization is severe enough, i.e., when ΔΨm is less negative than the Erev_ANT, a condition observed in the presence of adequate amount of an uncoupler, mitochondria could consume extramitochondrial ATP translocated from the cytosol by the ANT
* Inhibition of the respiratory chain of in situ mitochondria failed to activate in all cells the cytosolic ATP sensing mechanisms activated by a drop in [ATP] levels. Moderate loss of ΔΨm not enough to reverse ANT.

## Reference
[^Chinopoulos2010]: Chinopoulos C, Gerencser AA, Mandi M, et al. Forward operation of adenine nucleotide translocase during F0F1-ATPase reversal: critical role of matrix substrate-level phosphorylation. FASEB J. 2010;24(7):2405-2416. doi:10.1096/fj.09-149898.[PMC2887268](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2887268/)
