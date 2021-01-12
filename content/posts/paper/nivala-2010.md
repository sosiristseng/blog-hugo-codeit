---
title: "Nivala 2010 | Linking flickering to waves and whole-cell oscillations in a mitochondrial network model"
date: 2020-10-23T00:27:15+08:00
tags: ["ODE", "ROS"]
categories: ["Reading","Mitochondria"]
math:
  enable: true

author: Nivala et al."
authorLink: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3207179/"
description: "Linking flickering to waves and whole-cell oscillations in a mitochondrial network model"
---

[Sciwheel](https://sciwheel.com/work/#/items/1240136)[^Nivala2011]

<!--more-->

## Introduction
* In contrast to the cell-wide waves, spontaneous transient depolarizations of individual mitochondria, called flickers, have been widely observed, and tend to occur randomly with variable depolarization durations

* In previous studies Aon et al. coined the term *mitochondrial criticality*, in which the mitochondrial network becomes very sensitive to small perturbations of ROS at the critical state

## Methods
### Single-mitochondrion model
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/caf7b2e6-4c7f-4253-9631-8886f261972b/gr1_lrg.jpg)
* (A) The single-mitochondrion model
* (B) Four-state Markov model of the IMAC: closed (C), open (O), inactivated (I), and refractory (R)
* (C) The network model
* (D) Representation of a single mitochondrion as a 3 × 3 grid
* (E) Two-state Markov model of shunt parameter.

* Including matrix, intermembrane space, and cytosol
* Ordinary differential equations (ODEs) are used to describe the membrane potential (Ψ) across the inner membrane and the superoxide concentrations
* superoxide released into the matrix and intermembrane spaces at 85% and 15%, respectively
* Superoxide diffuses freely across the outer membrane at the rate VSO,IC. However, superoxide cannot diffuse across the inner membrane except through the opening of IMACs

#### Superoxide production and diffusion rate
* the Nerst potential component has been replaced with the more
general formulation of the Goldman-Hodgkin-Katz equation

$$
\begin{aligned}
V_{sox} &= shunt * 0.85 * (1 - 0.4 \cdot Hill(SO_m, 0.45, 2)) * 6 * Hill(\Delta\Psi, 250, 5)  \cr
V_{IMAC} &= 800 \frac{N_O}{N_{IMAC}} * (0.0782 + \frac{7.82}{1 + e^{0.07 (4 + \Delta\Psi)}}) * \Delta\Psi \cr
V_{ROS}^{tr} &= 0.5 * V_{IMAC} * (SO_{i} * \frac{SO_{m} - e^{F \Psi / RT}}{1 - e^{F \Psi / RT}})  \cr
V_{S O, I C}&=k_{S O I, C}\left(4 S O_{I}-\sum_{j=1}^{4} S O_{C, j}\right)
\end{aligned}
$$

* we modeled the rate r->c to have a second-order dependence on the concentration of superoxide in the matrix: when SOM is high, the IMAC is more likely to be in state C

#### Markov model of IMAC dynamics
Units in Hz. α=0.4 and β=10,000 (1/ mM^2 s)
$$
\begin{array}{l}{k_{R \rightarrow C}=k_{I \rightarrow O}=\alpha^{*} S O_{M}^{2}} \cr {k_{C \rightarrow O}=k_{R \rightarrow I}=\beta * S O_{I}^{2}} \cr {k_{O \rightarrow I}=k_{C \rightarrow R}=0.1} \cr {k_{I \rightarrow R}=k_{O \rightarrow C}=100.0}
\end{array}
$$

$$
\begin{array}{l}{\frac{d p_{C}}{d t}=-\left(k_{C \rightarrow O}+k_{C \rightarrow R}\right) * p_{C}+k_{R \rightarrow C} * p_{R}+k_{O \rightarrow C} * p_{O}} \cr {\frac{d p_{O}}{d t}=-\left(k_{O \rightarrow I}+k_{O \rightarrow C}\right) * p_{O}+k_{C \rightarrow O} * p_{C}+k_{I \rightarrow O} * p_{I}} \cr {\frac{d p_{I}}{d t}=-\left(k_{I \rightarrow O}+k_{I \rightarrow C}\right) * p_{I}+k_{O \rightarrow I} * p_{O}+k_{R \rightarrow I} * p_{R}} \cr {\frac{d p_{R}}{d t}=-\left(k_{R \rightarrow I}+k_{R \rightarrow C}\right) * p_{R}+k_{I \rightarrow R} * p_{I}+k_{C \rightarrow R} * p_{C}}
\end{array}
$$

$$
p_{C}+p_{O}+p_{I}+p_{R}=1
$$

* It should be noted that the Markov model of the IMAC and the reaction rates are **phenomenological**, as quantitative information is limited.

**Parameters**

| Symbol            |  Value               | Units          | Description  |
| --------          | --------             | --------       | -----------  |
|$g_{IMM}$          | $19.2$               | $V/s$          | Conductance of IMM|
|$V_{P, \Psi}$      | $3.5$                | $V/s$          | Charge rate of ETC|
|$k_{SOD,m}$        | $0.08$               | $mM/s$         | Rate constant of SOD, mitochondrial|
|$k_{SOD,i}$        | $0.006$              | $mM/s$         | Rate constant of SOD, intermembrane space|
|$k_{SOD,c}$        | $0.006$              | $mM/s$         | Rate constant of SOD, cytosolic|
|$K_{m,SOD}$        | $0.002$              | $mM$           | Michaelis constant for superoxide of SOD|
|$V_{P, \Psi}$      | $3.5$                | $V/s$          | Charge rate of ETC|
|$G_L$              | $0.0782$             | $mM/V$         | Leak Conductance of IMAC|
|$G_{max}$          | $7.82$               | $mM/V$         | Integral conductance of IMAC|
|$\alpha$           | $0.4$                | $Hz \cdot mM^{-2}$  | Transition rate constant of IMAC|
|$\beta$            | $10000$              | $Hz \cdot mM^{-2}$  | Transition rate constant of IMAC|
|$k_{SO, IC}$       | $5$                  | $Hz$           | Diffusion rate of superoxide between intermembrane space and cytosol|
|$D_{SO}$           | $1$                  | $\mu m^2 / s$   | Diffusion constant of superoxide in the cytosol|


###  2D mitochondrial network model
* 100 × 20 grid of mitochondria
* Because each individual mitochondrion has the dimensions 0.9 μm × 0.9 μm, the spatial scale of the network model is 90 μm × 18 μm, which are approximately the dimensions of an average myocyte
* mitochondrial superoxide production displays a bistable behavio: production switches between high and low states
* matrix superoxide buildup is required for IMACs to open to result in membrane potential oscillations
* transient depolarizations tend to occur randomly in space and time
### Numerical methods
* ODE & PDE: FE method, Δt = 0.0002s
* Markov model: Gillespie's algorithm
* The IMAC channel dynamics occur on a millisecond timescale
* Model is written in CUDA
## Results
### Dynamics of a single IMAC
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/89e91fd1-37fe-4005-8986-78b2e36e7cac/gr2_lrg.jpg)
* the channel exhibits a bursting behavior: remains closed for a long period and then enters into a mode of flipping quickly between closing and opening
* The 108-pS channel in mitoplasts (a candidate for IMAC) showed similar behavior: bursting type, time scale in ms
###  Depolarization dynamics of a single mitochondrion
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/75fbe59e-2626-485a-9484-54af318c7079/gr3_lrg.jpg)
* During low shunt conditions: both SOM and SOI very low => No RIRR
* Under high shunt conditions, ROS accumulate in matrix => higher steady state of superoxide in the intermembrane space => positive-feedback effect of RIRR
* the transient depolarizations of a single mitochondrion are not periodic, but more or less random

![Close-up of a single depolarization for the single-mitochondrion model](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/62e29bff-ab1e-42a8-b619-72fa2ecfa21f/gr4_lrg.jpg)
* The onset of RIRR is extremely fast and accounts for the steepness during the initial depolarization

![ISI distributions for the single-mitochondrion model under different conditions](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/8f0b20eb-c3bd-49cf-9376-e2a0ab18c60d/gr5_lrg.jpg )
* interspike intervals (ISIs)
* When NIMAC is increased to 100 (same total conductance), the average ISI increases and the distribution is slightly broadened
* an increase in the number of channels increases the oscillation frequency and narrows the distribution (more periodic)
* Increasing shunt increases the oscillation frequency and narrows the distribution

###  Spatiotemporal dynamics of the mitochondrial network
![Mitochondrial flickering and waves in a 2D network](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/e2059385-5b0e-4981-a06d-e3e12f438db0/gr6_lrg.jpg)
![Distribution of cluster sizes of depolarized mitochondria => self-organized criticality](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/c469f5a8-fd73-48f7-88c7-56a00e7baada/gr7_lrg.jpg )
* p = 0.25, the distribution was close to an exponential distribution (y = 8951e^−0.6256x)
* for p = 0.4, the distribution exhibited a stronger power-law (y = 12847e^−0.0914x x−1.5713)
* for p = 0.6, this distribution was close to a pure power-law distribution (y = 4585x^−1.6455)
* The power-law distribution indicates that the system can exhibit all size scales, a property of critical phenomena in statistical physics
![Periodicity and rhythmicity of whole-cell membrane potential](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/32541592-8756-4a0d-af31-8a27127e4f0a/gr8_lrg.jpg)
* the single mitochondrion flickering is more random and less frequent than the depolarization of the network
* coupling between mitochondria through RIRR causes synchronized mitochondrial depolarizations, and thus periodicity in the average membrane potential
* ACF = autocorrelation function,  the correlation between a signal at time t and a later time (t + lag time)
#### The conduction velocity of mitochondrial depolarization waves
* Aon : 22 μm/s  (IMAC)
* Brady: <0.1 μm/s (mPTP)
* This paper: both ΨM oscillations and slow waves, and wave velocities ranged from 0.1 to 2.2 μm/s
* enhancing superoxide dismutase activity decreases wave velocity
![Effects of superoxide dismutase activity on whole-cell Ψ oscillations](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/c69ea01b-1ae6-4043-8359-8ffe3231fb20/gr9_lrg.jpg)

* Stronger coupling causes an earlier transition from flickering to waves and oscillations.

## Discussion
* a Markov model of the IMAC in a single mitochondrion and a mitochondrial network to simulate mitochondrial flickering
* The periodicity of the flickering depends on the total number of IMACs in the mitochondrial membrane and the superoxide production rate (coupling strength)
* The mitochondrial criticality is reached via the dynamics of self-organized criticality

### Mechanisms?
* mPTP opening triggered by sarcoplasmic reticulum (SR) calcium release or ROS release
* transient depolarizations or flickering may be caused by different mechanisms under different conditions (single blocker ineffective)
* Our IMAC model was partially based on the experimental observations of Borecky et al (108-pS channel)
* This model depends strongly on the random behavior of the channels, the depolarizations occur nonperiodically, simulating the flickering behavior. Deterministic ODEs cannot attain this.
* the spatiotemporal dynamics in our model is similar to the dynamics of **calcium (Ca) signaling** in experiments and computer modeling: Ca signaling hierarchy of quarks, sparks, macrosparks (or spark clusters), abortive (short lived) waves, and persistent waves are also governed by the dynamics of self-organized criticality
* oscillations are not governed by clocks or pacemakers but are stochastic in nature

### Model critique
A simple mitochondrial model only includes the RIRR of the IMAC and ROS production and dismutation

[^Nivala2011]: Nivala M, Korge P, Nivala M, Weiss JN, Qu Z. Linking flickering to waves and whole-cell oscillations in a mitochondrial network model. Biophys J. 2011;101(9):2102-11. [PMC3207179](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3207179/)
