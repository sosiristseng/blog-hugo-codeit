---
title: "Mullins 2013 | A Mathematical Model of the Mouse Ventricular Myocyte Contraction"
date: 2020-10-23T00:26:01+08:00
tags: []
categories: ["Reading","Cardiomyocyte"]
---

[Sciwheel](https://sciwheel.com/work/#/items/6000123)

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3650013/)[^Mullins2013]

<!--more-->

## Introduction
* Changes in one of the subsystems can lead to abnormal behavior in others
    * Dysfunction of the L-type Ca2+ channel =>  affects Ca2+ handling in cardiac cells [1], [2] resulting in cardiac arrhythmias
* Heterogeneities in cellular electrical activities in the heart, dysfunction of K+ channels, or acidosis can also produce pro-arrhythmic behavior
* Instability of Ca2+ dynamics (alternans) can lead to the action potential alternans [5] and alternans in mechanical contraction
* Force generation involves conformational changes in thick (myosin) and thin (actin, tropomyosin, and troponin) filaments. most mathematical models use a significantly simplified description of this process.

###### Schematic diagram of the mouse model cell and Markov model for force generation.
![](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0063141.g001)

* New model by Land et al. (2012) adjusted the cellular contraction model of Rice et al. (2010)
    * body temperature (310°K, or +37°C)
    * absolute values are larger in the model
    * did not study contraction force-frequency relationships in the cellular level
* Here:
    * new electromechanical model for mouse ventricular myocyte contraction at room temperature (298°K, or +25°C)
    * incorporated a myocyte contraction model from Rice et al
    * the importance of using **variable sarcomere lengths**

## Methods

* Rice model adjusted model parameters to fit experimental data on myocyte contraction obtained for room temperatures
* links Ca2+ dynamics and myocyte contraction
* two nonpermissive tropomyosin states (N0 and N1) and four permissive tropomyosin states (P0, P1, P2, and P3)
* All transition rates in the model are Ca2+-independent, except for kNP, which depends on the concentration of troponin with Ca2+ bound to a low-affinity binding site
* twitch contraction, where Fcontrn is time-dependent: Hooke’s law (SL0 = initial value of SL)
![eqn9](https://user-images.githubusercontent.com/40054455/86704669-b4fe5800-c047-11ea-8cb8-8b39f558a9b1.jpg)

* variable cell length: (L0 = 100 µm)
![eqn10](https://user-images.githubusercontent.com/40054455/86704674-b596ee80-c047-11ea-866d-8ca43378971d.jpg)

* stimulated with different frequencies using a stimulus current (Istim = 80 pA/pF, τstim = 0.5 ms) for at least 200,000 ms to reach a quasi-steady state

* 51 ordinary differential equations

## Results

### Steady-state Force-calcium Relationships
![](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0063141.g002)
* an increasing sigmoid function of calcium concentration
* able to reproduce a shift in Ca2+ sensitivity for steady-state force-calcium relationships shown for three sarcomere lengths

### Dynamic Behavior of Contraction Force
![](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0063141.g003)
* pacing @ 0.5 Hz
* endocardial cells show larger [Ca2+]i transients than epicardial cells
* significant differences in the experimental data obtained from different experimental groups on the time behavior of force, both in peak values and residual forces
* But clear similarity in the time-to-peak values and relaxation of the simulated forces

![](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0063141.t001)

* The model includes **changes in sarcomere length** during myocyte contraction

### Force-frequency Relationships
![](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0063141.g004)
* the simulated amplitudes of [Ca2+]i transients for epicardial and endocardial cells are verified by the experimental data obtained by Dilly et al.
*  able to reproduce peak contraction force-frequency relationships for mouse ventricular myocytes in the frequency range from 0.5 to 2.0 Hz

###### Simulated time courses for contraction forces, sarcomere lengths, and sarcomere shortenings for three different resting sarcomere lengths (1.9, 2.1, and 2.3 µm) for epicardial and endocardial cells
![](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0063141.g005)
* increase in the resting sarcomere length increases twitch force and relative sarcomere shortening

### Constant versus Variable Sarcomere Length
*  a variable SL when calculating the transition rate from non-permissive to permissive states, as well as in the detachment rates in permissive states in this model
* constant SL replaced the variable SL in the calculation of the normalized sarcomere length:
![eqn12](https://user-images.githubusercontent.com/40054455/86704676-b62f8500-c047-11ea-94b3-87628862ab49.jpg)
![eqn13](https://user-images.githubusercontent.com/40054455/86704677-b62f8500-c047-11ea-9d0a-081606c77d67.PNG)
![](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0063141.g006)
* The peak force when using a constant SL is clearly higher, while the residual force appears to be about the same
* Frequency dependence is similar
![](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0063141.g007)

### Frequency Dependence of dL/dt and dF/dt
![](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0063141.g008)
*  dL/dt and dF/dt also show frequency dependence
* The epicardial cell demonstrates a monotonic increase in the magnitudes of peak values for dL/dt and dF/dt in the frequency range from 0.25 to 4 Hz
* the endocardial cell shows a biphasic behavior in the peak magnitudes of the derivatives: an increase when the stimulation frequency changes from 0.25 to 2 Hz, and a decrease in the frequency range from 2 to 4.0 Hz
![](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0063141.g009)
* the model showed somewhat slower relaxation, thus lower values of +dL/dtmax, than experimental data (solid symbols)
![](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0063141.g010)
* Simulated data for time-to-peak force shows good agreement with the experimental data
* while time-to-50% relaxation are somewhat longer in the simulated data

## Discussion
* Mice's contraction rate is about 10 Hz, faster than the rabbit (4 Hz) and human (1 Hz). APD in mouse ventricular myocytes is also considerably shorter (APD50 ∼ 4.5 ms in mice versus ∼200 ms in rabbits and ∼300–400 ms in humans.
![](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0063141.g011)
* In mice, the peak value of Ca2+ transient occurs after almost complete repolarization of action potential
* In larger species, such as rabbit, time scaling of the action potential, [Ca2+]i and contraction force transients is different

* Mouse ventricular myocytes, unlike other species, demonstrate biphasic frequency dependence of intracellular [Ca2+]i transient and peak force
* The model for an epicardial cell was also able to reproduce this physiological phenomenon.
* However, our model for the endocardial cell does not show biphasic behavior in the frequency-dependence of both peak [Ca2+]i transients and peak contraction force, but at least qualitatively, reproduced saturation and even decrease in sarcomere shortening and contraction force amplitude at 4-Hz stimulation
* the endocardial cells demonstrate significantly larger [Ca2+]i transients, and our modeling predicts larger contraction force and shortening in these ventricular myocytes.
* Simulations with variable sarcomere length produce significantly smaller contraction force than the simulations with constant sarcomere length despite the same time course and amplitude of [Ca2+]i transient during twitch
* The only difference between Rice Models 4 and 5 is the modulation of the k− ltrpn rate by generated force. Because Model 4 and Model 5 yielded an approximately equal description of myocyte contraction, we implemented Model 4 in our electrophysiological model, as Model 5 led to unstable solutions.

### Limitations
* the model uses a simplified description of the relationships between contraction force and cellular shortening in the form of Hook’s law, while the real dependence is more complicated
* It does not describe the effects of cellular shortening on Ca2+ transients, as does the model of Rice et al
* did not take into account intracellular spatial inhomogeneities of Ca2+ concentration and crossbridge binding sites (requires PDE)

## Reference
[^Mullins2013]: Mullins PD, Bondarenko VE. A mathematical model of the mouse ventricular myocyte contraction. PLoS ONE 2013;8(5):e63141. doi:10.1371journal.pone.0063141. [PMC3650013](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3650013)
