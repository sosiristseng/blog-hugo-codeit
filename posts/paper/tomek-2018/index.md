# Tomek 2018 | Modulation of Cardiac Alternans by Altered Sarcoplasmic Reticulum Calcium Release: A Simulation Study


[Sciwheel](https://sciwheel.com/work/#/items/5857174)[^Tomek2018]

<!--more-->

## Introduction
* Repolarization alternans, the alternation of long and short action potential durations (APD)

## Materials and Methods
![](https://www.frontiersin.org/files/Articles/407922/fphys-09-01306-HTML/image_m/fphys-09-01306-g001.jpg)
* HRd & ORd model
* Action potential duration (APD) alternans at a given time point was defined as the difference in APD90 (APD at 90% repolarization level)
* 2500 beats to reach quasi-stable state
* To modulate the key features of SR release dynamics, the time to peak release and release duration, we scaled the ryanodine receptor (RyR) release time constant. Also we scaled the L-type calcium current (ICaL) conductance in addition to the time constant to achieve a near–flat relationship between the time constant and total calcium released
![](https://www.frontiersin.org/files/Articles/407922/fphys-09-01306-HTML/image_m/fphys-09-01306-g002.jpg)
* changing the total amount of calcium released (SR release integral) by scaling ICaL (due to near-linear relationship)
![](https://www.frontiersin.org/files/Articles/407922/fphys-09-01306-HTML/image_m/fphys-09-01306-g003.jpg)

## Results
### Mechanisms of Alternans Driven by SR Cycling Refractoriness
* varied τ_tr, the time constant of the NSR→JSR diffusion in simulated cells. A reduction in the diffusion time constant (corresponding to accelerated NSR→JSR diffusion) attenuated alternans in APD and calcium transient. Blue: BCL = 260ms. Orange: BCL = 300.
![](https://www.frontiersin.org/files/Articles/407922/fphys-09-01306-HTML/image_m/fphys-09-01306-g004.jpg)
* key variables during alternans in the HeRd model: Ca in JSR. Determined by JSR Ca filling
![](https://www.frontiersin.org/files/Articles/407922/fphys-09-01306-HTML/image_m/fphys-09-01306-g005.jpg)

### Dynamics of JSR Release and Alternans: Beyond Amount Released
* we modulated the time constant of SR release. Lowering the time constant reduces the time to peak release and the release duration
![](https://www.frontiersin.org/files/Articles/407922/fphys-09-01306-HTML/image_m/fphys-09-01306-g006.jpg)
* We mapped the alternans threshold over a range of pairs of parameters of the SR release. prolonged release and longer time to peak facilitate alternans formation
![](https://www.frontiersin.org/files/Articles/407922/fphys-09-01306-HTML/image_m/fphys-09-01306-g007.jpg)

### Increased and Decreased Magnitude of SR Release Attenuates Alternans
![](https://www.frontiersin.org/files/Articles/407922/fphys-09-01306-HTML/image_m/fphys-09-01306-g008.jpg)
* Surprisingly, also sufficiently increased SR release (ICaL scaling factor >1.2) abolished alternans in the stable state after 2500 beats. the effects of ICaL scaling on alternans vulnerability in Figure ​Figure88 are mainly due to alterations in Jrel magnitude as quantified
* or large increase in ICaL conductance (scaling factor 1.3, purple trace in Figures 8C,D), the SR release drops to zero abruptly. could be an artifact of the model. the aspect crucial for alternans abolishment is the fact of depletion, not of the abrupt termination of release.
* Alternans with varied ICaL conductance in the ORd model.
![](https://www.frontiersin.org/files/Articles/407922/fphys-09-01306-HTML/image_m/fphys-09-01306-g009.jpg)
* full JSR depletion may be applied to gain insight the disappearance of alternans at rapid pacing in so called “eye-type” alternans
![](https://www.frontiersin.org/files/Articles/407922/fphys-09-01306-HTML/image_m/fphys-09-01306-g010.jpg)

## Discussion
* main findings
    1. Accelerated dynamics of SR release attenuate alternans via acceleration of the junctional SR refilling, while slow SR release promotes alternans.
    2. A sufficient increase in the magnitude of SR release may attenuate alternans, potentially explaining the formation of “eye-type” alternans
    3. Alternans in the studied models is mainly driven by refractoriness of calcium cycling and junctional SR refilling, supporting SR calcium cycling refractoriness (SRCCR) as a mechanism for alteranans.

### Calcium Driven by SR Cycling Refractoriness
* limited rate of diffusion between NSR and JSR preventing timely refilling of releasable calcium
* Increasing SERCA doe not help

### Release Dynamics Modulate Alternans Occurrence
* A further link between alternans vulnerability and release dynamics may be established via the activity of CaMKII, which increases the duration of calcium sparks, prolonging calcium release

### Calcium Amount Released and Alternans
* sufficiently strong inhibition or potentiation of calcium release can protect the calcium subsystem from alternans
* This phenomenon of full JSR depletion is relevant in understanding the principle of formation of eye-type alternans
* More experimental evidence is needed to clarify the JSR calcium load–release relationship during alternans and whether full functional JSR depletion may occurr. Current evidence suggests that functional JSR depletion in myocytes is only 60–80% at most

## Reference
[^Tomek2018]: Tomek J, Tomková M, Zhou X, Bub G, Rodriguez B. Modulation of Cardiac Alternans by Altered Sarcoplasmic Reticulum Calcium Release: A Simulation Study. Front Physiol. 2018;9:1306. Published 2018 Sep 19. doi:10.3389/fphys.2018.01306 [PMC6156530](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6156530/)

