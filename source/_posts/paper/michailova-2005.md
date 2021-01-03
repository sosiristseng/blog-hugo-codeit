---
title: "Michailova 2005 | Modeling regulation of cardiac KATP and L-type Ca2+ currents by ATP, ADP, and Mg2+"
date: 2020-10-23T00:24:39+08:00
tags: ["ODE"]
categories: ["Reading","Cardiomyocyte"]
mathjax: true
---

[Sciwheel](https://sciwheel.com/work/#/items/1270470)

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1305273/)[^Michailova2005]

<!--more-->

## Introduction

* Pathological changes of intracellular free and bound Mg2+, ATP, and ADP concentrations occur during ischemia, and reperfusion and the concentrations of these metabolites have been shown to affect the availability and activity of ATP-sensitive K+ and L-type Ca2+ channels and consequently cell excitability and contractility
*  the goals of this study were
    1. to formulate a new model for cardiac KATP current regulation by intracellular free ATP and MgADP that takes into account the octameric channel stoichiometry
    2. to formulate a new reduced-order model of the L-type Ca2+ channel
* The new model reproduces experimental data on the ATP dependence of KATP channel activity in the presence of normal ADP and Mg2+ and the effects of stimulated KATP current on cell excitability and contractility

## Mathematical model
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/2e5e4eff-68ae-47e8-b30f-eb60f8be60d7/gr1_lrg.jpg)
* whole-cell ionic-metabolic model is described in Michailova (2001), extenden from 1999 Winslow model
* the role of ATP and ADP as Ca2+ and Mg2+ buffers
* in our current whole-cell model the NKA current is not MgATP dependent

## Modeling KATP channel availability
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/5a3dd60c-fe7e-4335-83c8-abc3a547eb83/gr2_lrg.jpg)
*  there are four Kir6.2 sites that bind ATP independently with equal affinity, but that binding of only one molecule of ATP is sufficient to close the channel
*  channel activation by ADP requires the presence of Mg2+ (MgADP). simultaneous binding of two MgADP molecules to one SUR2A subunit is required to increase the channel open probability

$$
\begin{aligned}
I_{KATP} &= g_{KATP} (V-E_K)  \cr
g_{KATP} &= G_{KATP}f_{KATP}([K^+]_o / 5.4)^0.24  \cr
f_{ATP} &= M(K_{ATP}, [ATP]_i)^4  \cr
f_{MgADP}^\prime &= M([MgADP], K_{MgADP})^2  \cr
c_{MgADP} &= 1 - f_{MgADP}^\prime  \cr
f_{MgADP} &= 1 - c_{MgADP}^4  \cr
f_{KATP} &= P_0f_{ATP}(1 - f_{MgADP}) + P_df_{ATP}f_{MgADP}
\end{aligned}
$$

## MgATP regulation in a reduced-order model of the L-type Ca2+ channel
* Here we sought to formulate a simplified model of the L-type Ca2+ channel, which retains the properties of the more detailed equation M34 Markov model yet reduces the complexity
    1. the four channel subunits gate independently of one another
    2. voltage-independent activation gating occurs independently of the voltage-dependent conformational changes in the subunits
    3. voltage-dependent inactivation occurs independently of activation and Ca2+-dependent inactivation
    4. transitions between normal and Ca2+-inactivated modes occur much more slowly than voltage-dependent gating within a mode
$$
\begin{aligned}
\frac{d v}{d t}&=\alpha(1-v)-\beta v  \cr
\frac{d w}{d t}&=\alpha^{\prime}(1-w)-\beta^{\prime} w  \cr
x&=\frac{f}{f+g}  \\
\frac{d y}{d t}&=\left(y-y_{\infty}\right) / \tau_{\mathrm{y}}  \cr
\frac{d z}{d t}&=v_{\omega}(1-z)-v_{\gamma} z  \cr
v_{\omega}&=\omega \sum_{i=0}^{4} b^{-i} w^{i}(1-w)^{4-i}  \cr
v_{\gamma}&=\gamma\left[\sum_{i=0}^{4} a^{i} v^{i}(1-v)^{4-i}-a^{4} v^{4} x\right] \cr
P_{\mathrm{rom}}&=v^{4} y z \frac{f}{f+g}  \cr
f_{Ca} &= H([MgATP]_ss, K_{MgATPss}, 2.6)  \cr
K_{MgATPss} &= 1.4 mM
\end{aligned}
$$

![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/2064854130/2066106908/si100.gif)

## RESULTS
### Effects of ATP on IK(ATP) and ICa currents, contractile activity, and action potential
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/6499d25e-e52e-4217-837d-710da97e8ba8/gr3_lrg.jpg)
* KATP = 0.6mM, KMgADP = 0.4mM, G_KATP = 0.05 mS/μF, P0 = 0.08, PD = 0.8
* Simulations are generated in response to 1-Hz pulse and model outputs at the tenth stimulus are shown only. ADP_tot 200μM, Mg_tot 4.84mM, K_o 4mM, Na_o 138mM, Ca_o 2mM.
###### Dependence of KATP channel activity on ADP in the presence of Mg2+
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/45c7b090-b8ec-4ab8-a6eb-b07c5929a60c/gr4_lrg.gif)
###### Absolute levels of ATP and ADP regulate cardiac EC coupling independently of ATP/ADP ratio
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/1423d00d-2ca4-42ae-90a2-cd4c9e7b3ea8/gr5_lrg.gif)
![tbl1](https://user-images.githubusercontent.com/40054455/86704437-74064380-c047-11ea-88c8-aa38c969a858.png)

### Effects of cytosolic Mg2+ on cardiac EC coupling
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1305273/bin/biophysj00046284F06_HT.jpg)

### Metabolic inhibition
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1305273/bin/biophysj00046284F07_LW.jpg)
![tbl4](https://user-images.githubusercontent.com/40054455/86704442-75377080-c047-11ea-900d-35eb566ae2a9.png)
* During ischemia
    1. average cytosolic ATP remains in the millimolar range (normoxia ∼ 6.8 mM; 40-s ischemia ∼ 5.4 mM; 10-min ischemia ∼ 4.6 mM
    2. free cytosolic ADP increases from 15 to 30 or 99 μM after 40-s or 10-min ischemia
    3. total Mg2+ dose not change whereas normal Mg2+ increases (normal free Mg2+ ∼ 2mM)
## DISCUSSION
### KATP channel model
* there are four sites that bind ATP but only a single ATP molecule needs to bind to cause channel closure
* simultaneous binding of two MgADP molecules to one of SUR2A subunit is required to increase channel open probability
* there are two populations of sarcolemmal KATP channels open.
* Hopkins model:  one site specifically binds two MgADP molecules and increases channel opening. The other site binds either one molecule ATP or ADP and decreases channel opening
* the gating kinetics of the single KATP channel is not included into our ionic-metabolic model yet
### Cardiac KATP and L-type Ca2+ currents, cytosolic Mg2+, adenine nucleotide phosphates, and EC coupling
* the enhanced KATP current and markedly shortened current and AP-potential durations, were due to decreased free diastolic ATP and increased diastolic MgADP level
* its ability to simulate the modulation of ATP sensitivity of KATP channel by ADP in the presence of Mg2+. When free ADP is > 500 μM, channel inhibition is observed.
* Despite of the fact that Mg2+ is the most abundant divalent cation in the cell, little is known about intracellular Mg2+ homeostasis and mechanisms controlling [Mg2+]i. Assumption: total Mg2+ content is kept constant at the level necessary for enzyme and channel function
* Changes in Mg(0.2–1.8 mM) with total ATP and ADP normal, may have pronounced effect on IKATP. Increase in Mg => shortening of action potential duration (also in experiment)

## Reference
[^Michailova2005]: Michailova A, Saucerman J, Belik ME, McCulloch AD. Modeling regulation of cardiac KATP and L-type Ca2+ currents by ATP, ADP, and Mg2+. Biophys J. 2005;88(3):2234-49. [PMC1305273](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1305273/)
