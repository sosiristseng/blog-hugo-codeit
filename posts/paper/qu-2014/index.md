# Qu 2014 | Nonlinear and stochastic dynamics in the heart


[Sciwheel](https://sciwheel.com/work/#/items/3943300)[^Qu2014]

<!--more-->

## Introduction
* Sudden cardiac death (SCD) is not only a problem of biology and medicine, but also a problem of physics and mathematics

## The normal heart rhythm and arrhythmias
![fig1](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f1.jpg "The normal heart structure and function")
### Arrhythmias and anti-arrhythmic therapies
![fig2](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f2.jpg "Transitions in cardiac arrhythmias")
### Multi-scale regulation of the heart
![fig3](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f3.jpg)
* Time spans from milliseconds to years and length scales from nanometers to centimeters
* complex action potential and Ca2+ dynamics emerge via bifurcations and dynamical instabilities
## Nonlinear and stochastic dynamics in the heart
### Nonlinear dynamics of heart rhythms and heart rate variability
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f4.jpg "Complex ECG dynamics during sinus rhythm")
* the RR interval in a normal heart is not truly periodic, but shows variation called heart rate variability (HRV). In diseased conditions such as heart failure, the variability may be diminished. => higher risk of SCD
### Alternans
* electrical alternans (ECG) and APD alternans
* when the slope of the APD restitution curve (see Section 6.1.1 for definition) is greater than one, a bifurcation from regular beating (period-1) to alternans (period-2) occurs
* Ca2+ alternans can alternate in-phase, or out-of-phase from instability caused by bi-directional coupling of voltage and Ca2+

###  Regular and irregular premature excitations
* premature ventricular contractions (PVCs)
* automaticity, early afterdepolarizations (EADs), and delayed afterdepolarizations (DADs)

###  Ventricular arrhythmias and electrical wave dynamics
![fig5](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f5.jpg)
![fig6](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f6.jpg)
* normal excitations of the heart are target waves originating from the SAN
* a PVC is a focal excitation from the Purkinje fiber or the ventricles
* circulating repetitively around an obstacle (anatomical reentry)
* spiral wave: functional reentry
![fig7](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f7.jpg)

### Nonlinear dynamics at sub-cellular scales
* Ca2+ sparks and Ca2+ waves
* can alter action potential dynamics, such as EADs and DADs
* this transition is similar to a second-order phase transition in which criticality occurs
![fig8](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f8.jpg "Intracellular Ca2+ cycling dynamics in ventricular myocytes")

### Transitions in the heart
* Bifurcations via dynamical instabilities: APD alternans or Ca2+ alternans
* Thermodynamic phase transitions and criticality: Ca2+ sparks / waves
* Transitions between multiple solutions: sinus rythm, reentry, spiral wave
* Synchronization in SAN
* Wave competition or entrainment: slower oscillation frequencies will always be taken over by the faster waves
* Dynamical transients: a sudden change in heart rate can induce transient alternans

## Biophysics of excitable cells and mathematical modeling of the heart
### Electrical circuit theory of excitable cells
#### Nernst potential
$$
\frac{c_{i}}{c_{o}}=\frac{p_{i}}{p_{o}}=\frac{e^{-e \phi_{i} / k T}}{e^{-e \phi_{o} / k T}}
$$
$$
E=\phi_{i}-\phi_{o}=-\frac{k T}{e} \ln \frac{c_{i}}{c_{o}}=-\frac{R T}{F} \ln \frac{c_{i}}{c_{o}}
$$
$$
E=-\frac{R T}{z F} \ln \frac{c_{i}}{c_{o}}
$$
![fig9](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f9.jpg)
#### Hodgkin-Huxley model
$$
C_{m} \frac{d V}{d t}=-\left(I_{i o n}+I_{s t i}\right)
$$
![fig10](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f10.jpg)
#### FitzHugh-Nagumo model
* simplified excitable medium
$$
\begin{aligned}
\frac{d u}{d t}&=\varepsilon\left(u-\frac{1}{3} u^{3}-v\right) \cr
\frac{d v}{d t}&=u-\beta v+a
\end{aligned}
$$
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f11.jpg)
* The stabilities of the fixed points are determined by the eigenvalues of the Jacobian:
$$
J=\left( \begin{array}{cc}{\varepsilon f_{u}^{\prime}} & {-\varepsilon} \cr {1} & {-\beta}\end{array}\right)
$$
### The cardiac action potential and modeling
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f12.jpg "The cardiac action potential and excitation-contraction coupling")
#### Action potential models
* There have been over 100 cardiac action potential models developed [137], most of them are available at CellML (http://models.cellml.org/cellml)
* Variety of cell types, species
* From 1994 Luo-Rudy model to recent ones
* In most cases, it is not possible to reproduce or code the model into a computer program from the original publication due to typographical errors in parameters values, units, and even equations
* Since most of the models were fit to one set of experimental data and/or at a certain pacing cycle length (PCL), the robustness and parameter sensitivity have not been well-tested
* The first and second generation models are low dimensional models developed phenomenologically based on whole-cell data. Not useful for transitions near cirticality like Ca2+ sparks to Ca2+ wave.
* Some of the models may be very sensitive to initial conditions and parameter changes, and some may require very small time steps
* a model with more physiological details is better at relating dynamical features to specific molecular properties, but not necessarily better at illuminating the mechanisms underlying the dynamical features (harder to fit)
### Modeling electrical wave conduction in tissue and organ
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f13.jpg)
* Modeled as aniostropic RD-type PDE
### Stochastic modeling
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f14.jpg)
* Stochastic ion channel openings and closings are modeled using Markov transitions
* ion channels have been modeled using Markov models with deterministic simulations to generate the whole cell current
### Sub-cellular modeling
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f15.jpg)
* SR
* CaRU
* mitochondria
### Some notes on experimental technologies
* voltage clamp, patch clamp, and optical mapping
## Dynamics at the molecular and sub-cellular scales
### Power-law distribution of ion channel closed times
*  the closed time distribution (but not the open time distribution) exhibits a power-law with a unique −3/2 exponent
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f16.jpg)

* By solving the Master equation, they were able to obtain a closed-time distribution with a −3/2-power law, p(τ) ∝ τ−3/2, under the conditions that the number of closed states is very large
* The relationship is also in On-off intermittency, a noise or chaos induced bursting behavior in nonlinear systems
$$
\frac{d x}{d t}=[a+\xi(t)] x-x^{3}
$$
The distribution of the dwell time τ around x=0 (the off state) can be analytically derived as
$$
p(\tau) \propto \tau^{-3 / 2} e^{-\left(a^{2} / 4 D\right) \tau}
$$
### Dynamics of Ca2+ sparks
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f17.jpg)
* Ca2+ sparks are considered as the elementary Ca2+ release events for Ca2+ signaling in heart cells, and collective behavior of CaRU
* A spark is not a purely random event, but since the number of RyRs in a CRU is limited (~100 RyRs), stochasticity still has a very important influence on Ca2+ sparks
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f18.jpg)

### Criticality in the transition from Ca2+ sparks to waves and oscillations
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f19.jpg "Phase transition and criticality in Ca2+ signaling")
* when Ca2+ in the cell is low or the CRU coupling is weak, the system is dominated by quarks and sparks, and the spark cluster size distribution is exponential
* As Ca2+ level increases, the distribution changes toward a power-law
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f20.jpg "Transition to whole-cell Ca2+ oscillations")
* at low Ca2+ levels, the system is dominated by random quarks and sparks
* Close to the critical state, Ca2+ waves occur occasionally which result in Ca2+ spikes at the whole-cell level and irregular Ca2+ oscillations
* Close to criticality, the distribution of the inter-spike interval exhibits a fat-tail while at the high Ca2+, the distribution becomes Gaussian
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f21.jpg "Power-law clustering in an agent-based model")
* the CRU network in the real cell is not homogeneous [229], and thus self-organization of spark clusters is also not uniform in space
## Nonlinear dynamics in single myocytes
###  APD alternans and chaos
* TW(T-wave)A is a manifestation of APD alternans in the ECG
* Source: EP & Ca cycling
#### APD restitution
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f22.jpg)
* In most cases, APD is shorter at faster heart rates
#### APD alternans and chaos induced by steep APD restitution
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f23.jpg)
* The steady state becomes unstable when
$$
slope =\left.\frac{d f}{d d_{n}}\right|_{d=d_{s}}=-\left.\frac{d f}{d a_{n}}\right|_{a=a_{s}}>1
$$
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f24.jpg "Effects of cardiac memory on APD alternans")
* memory can both inhibit and promote APD instabilities
#### Hysteresis
* one observes an overlap region in which two action potential behaviors co-exist for the same PCL
### Intracellular Ca2+ alternans
* Ca2+ and voltage are bi-directionally coupled
* the regulation of Ca2+ cycling system is also very complex, and includes positive feedback loops (CICR) => alternans
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f25.jpg "Steep fractional SR Ca2+ release as a mechanism of Ca2+ alternans")
#### A mean-field theory of Ca2+ alternans
$$
f\left(\alpha, \beta, \gamma, N_{k}\right)=1-\left[1-\alpha \gamma\left(1-\beta N_{k} / N_{0}\right)\right]^{M}
$$
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f26.jpg)
* The steep fractional Ca2+ release mechanism was challenged by experimental studies
* three critical properties of a CRU or a Ca spark
    * randomness
    * refractoriness
    * recruitment
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f27.jpg "From microscopic to macroscopic alternans (from disorder to order)")
*  the mean-field theory of Ca2+ alternans links the microscopic (spark) behaviors to the macroscopic (alternans) behaviors
####  Alternans dynamics due to voltage and Ca2+ coupling
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f28.jpg)
*  APD and Ca2+ alternate in-phase: electromechanically concordant alternans
*  One of the important tasks of computational modeling is to identify characteristics of alternans that can be used to infer the origins of instabilities, which is not a trivial task in real cells
#### Mechanisms of sub-cellular discordant Ca2+ alternans
* Obs: Ca2+ alternates out of phase at the two end of the cells
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f34.jpg "Mechanisms of EAD chaos")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f30.jpg "Turing instability induced sub-cellular discordant Ca2+ alternans")
* In most realistic conditions, both Ca2+-to-APD and APD-to-Ca2+ couplings are positive, and thus the Turing instability may not occur naturally in real cells. Sub-cellular discordant Ca2+ alternans could develop after they changed APD-to-Ca2+ coupling from positive to negative
* Other mechanisms: Ca2+ wave occurring during pacing can reverse the phase in one region
### Early afterdepolarizations (EADs)
#### Early afterdepolarizations and irregular dynamics
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f31.jpg)
*  EADs arise from a dual Hopf-homoclinic bifurcation
#### A bifurcation theory of EADs
$$
\begin{aligned}
I_{Q S S}(V, x) &=\overline{G}_{N a} m_{\infty}^{3} h_{\infty} j_{\infty}\left(V-E_{N a}\right)+\overline{G}_{C a, L} d_{\infty} f_{\infty}(V \cr
&-E_{C a} )+I_{0}(V)+\overline{G}_{K} x x_{1}\left(V-E_{K}\right)
\end{aligned}
$$
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f32.jpg)

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f33.jpg "Chaotic dynamics of EADs")
### Delayed afterdepolarizations (DADs)
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f35.jpg)
* During a Ca2+ wave, Ca2+ concentration is elevated, which increases INCX and other Ca2+-sensitive currents (electrogenic) => triggers rested Na channel => DADs
## Electrical wave dynamics in tissue and organ
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f36.jpg "Conduction in cardiac tissue")
### Dynamical repolarization pattern formation in tissue
#### Spatially discordant alternans
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f37.jpg)
* all cells in the tissue may alternate in the same phase (in-phase) or alternate in the opposite phase (or antiphase) to the cells in neighboring regions
####  Chaos synchronization
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f38.jpg)
### Initiation of reentry
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f39.jpg "Induction of reentry around an obstacle")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f40.jpg "Induction of reentry by a strong stimulus")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f41.jpg "Unidirectional conduction block in heterogeneous tissue")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f42.jpg "Induction of reentry due to discordant alternans")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f43.jpg "Induction of PVC and reentry by EADs in a 2D heterogeneous tissue")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f44.jpg "Reentry initiation via spatiotemporal chaotic dynamics")
###  Dynamics of reentry in cardiac tissue and organ
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f45.jpg "Quasi-periodicity in a ring of cardiac tissue")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f46.jpg "Spiral wave dynamics in generic excitable medium")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f47.jpg "Characteristics of a stable spiral wave in cardiac tissue")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f48.jpg "Spiral wave dynamics in a homogeneous 2D tissue model")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f49.jpg "Spiral wave drift and dynamics in heterogeneous 2D tissue models")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f50.jpg "Dynamics of scroll waves in 3D tissue models")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f51.jpg "Effects of tissue thickness on scroll wave stability")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f52.jpg "Fiber rotation induced scroll wave twist and breakup")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f53.jpg "Computer simulation of scroll wave dynamics in a dog heart")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f54.jpg "Negative filament tension")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f55.jpg "Effect of APD restitution on spiral wave stability in a rabbit heart")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f56.jpg "Frequency distribution during fibrillation in real hearts")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f57.jpg "Bistable spiral wave conduction in the FHN model")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f59.jpg "Bi-excitability")
* a: INa; b: iCaL
### Formation of focal excitations in cardiac tissue
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f60.jpg "PVC formation in tissue with DAD cells")
* 79 DADs cells in the center of a 400-cell cable results in no PVC. b. 80 DADs cells in the center of the same cable result in a PVC
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f61.jpg "Oscillations induced via coupling of normal excitable cells and non-excitable cells")
* Fibroblasts are small and non-excitable cells which play an important role in cardiac mechanics and wound repair. They also develop gap junction coupling with myocytes causing myocyte depolarization
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f62.jpg "Chaos synchronization induced focal excitations")

## Nonlinear dynamics of the pacemaking system
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f63.jpg "SAN oscillations and abolishment")
* But SAN oscillation is regulated by two coupled voltage and Ca2+ oscillators, not just one
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f64.jpg "Voltage and Ca2+ oscillation in SAN cells")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f65.jpg "Phase locking and chaos in periodically paced pacemaker cells")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f66.jpg "Fractal heart rate variability")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f67.jpg "Heart rate variability in cultured monolayers")
## Control and termination of arrhythmias
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f69.jpg "Controlling APD alternans")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f70.jpg "Spontaneous termination of spiral turbulence")
*  waves run into refractory tissue, and drift off the tissue border
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f71.jpg "Fibrillation duration versus tissue size and stability")
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f72.jpg "Fast pacing induced termination of arrhythmias")
* Domination of fast waves
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f73.jpg "Low energy defibrillation in a computer model")
* Depolarizations as obstacles
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f74.jpg "Low energy defibrillation in the real heart")
## Conclusions and perspective
* Unlike many other human diseases, the transition from normal sinus rhythm to arrhythmias, particularly atrial and ventricular arrhythmias, is a change in the dynamical state of the same heart which does not necessarily require a change in the properties of the heart itself

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/bin/nihms600810f75.jpg)

* Lethal ventricular arrhythmias, such as VF, are “rare” and random events
* Even if computational power were not limiting, high-dimensional cardiac models are too complex to systematically analyze the dynamics arising from the complex nonlinear interactions
    * Use Nonlinear dynamics and statistical physics
*  The data available for model parameters: 1) are limited and 2) vary from lab to lab and from experiment to experiment
* Finally, the ultimate goal of understanding the underlying mechanisms of arrhythmias is to use them for arrhythmia risk stratification and development of effective therapeutics.
## Reference
[^Qu2014]: Qu Z, Hu G, Garfinkel A, Weiss JN. Nonlinear and Stochastic Dynamics in the Heart. Phys Rep. 2014;543(2):61-162. [PMC4175480](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4175480/)

