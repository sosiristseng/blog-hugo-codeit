# Zhou 2009 | Modeling Cardiac Action Potential Shortening Driven by Oxidative Stress-Induced Mitochondrial Oscillations in Guinea Pig Cardiomyocytes


[Sciwheel](https://sciwheel.com/work/#/items/2896328)[^Zhou2009]


<!--more-->

## Introduction
* The failure of the mitochondrial network to maintain ΔΨm underlies reperfusion arrhythmias.
* Sarcolemmal adenosine triphosphate (ATP)-sensitive potassium current (IK,ATP) in cardiac myocytes active under metabolic stress. With transient decreases in NADH fluorescence.
* It alters the cardiac action potential and refractory period, might contribute to an arrhythmogenic substrate during ischemia-reperfusion
* KATP channels are directly gated by intracellular ATP and Magnesium adenosine diphosphate (MgADP) and have low probability of opening under normal conditions. When ATP/ADP ratio decreases, open probability of these channels increases, setting membrane potential close to the equilibrium potential for K+.
* Substrate deprivation or localized **laser flash** can trigger **cellwide oscillations** or **collapse of mitochondrial membrane potential** in isolated cardiomyocytes, which can be interrupted or prevented either by employing **ROS scavengers** or applying **ligands of the mitochondrial benzodiazepine receptor**, which are known inhibitors of an **inner membrane anion channel (IMAC)**
* The mechanism involves mitochondrial reactive oxygen species (ROS) triggering the activation of IMAC in a positive feedback loop causing energy dissipation and the uncoupling of oxidative phosphorylation.
* Uncoupled mitochondria consume intracellular ATP stores, driving the activation of the KATP channel (11) and consequently producing significant changes in the action potential duration (APD).
* The processes cannot be easily understood without a comprehensive model as a tool, and technically very difficult to simultaneously measure metabolites, ions, metabolic fluxes, and currents in experiments on cardiomyocytes.

## Methods
### Model
* ECME model[^Cortassa2006] + RIRR[^Aon2003][^Cortassa2004] + KATP channel model[^Ferroro1996] (w/o gating)
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/4e788746-584a-43c9-9dc1-25016dc8390b/gr1_lrg.jpg).
See supporting material.
* The model parameters were either obtained directly from the literature or determined by minimizing the differences between model simulations and experimental data.
* The parameters of the RIRR model and KATP channel model were modified slightly from those in the original models.
* Oxidative stress was induced by increasing the fraction of ROS produced from the electron transport chain as a byproduct of respiration (**shunt**).

### KATP Model
![eqn01](https://user-images.githubusercontent.com/40054455/86727096-b63a7f80-c05d-11ea-882a-c562136dbb1c.png)
![eqn02](https://user-images.githubusercontent.com/40054455/86727101-b6d31600-c05d-11ea-9e75-ec7608199461.png)
![eqn03](https://user-images.githubusercontent.com/40054455/86727104-b76bac80-c05d-11ea-87c5-c5b64eb12f48.png)
![eqn04](https://user-images.githubusercontent.com/40054455/86727105-b76bac80-c05d-11ea-8af9-1998a227b9cd.png)

## Results
### Comparison of model-simulated KATP current with experimental data
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/4b83608a-172d-43c8-a3b6-dc949373467f/gr2_lrg.jpg)
* KATP current was inhibited by an increase ATP and the ability of ATP to suppress KATP current was significantly reduced by increasing [ADP]
* increasing [K]o decreases the current

### Oxidative stress-induced mitochondrial oscillations
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/41b7792b-c5b1-4fc7-84b8-5844c67d71b9/gr3_lrg.jpg)
* Oxidative stress triggered sustained oscillations in [ROS]i, [ROS]m, ΔΨm, and [NADH]
* when ΔΨm depolarizes, there is a significant decrease in the rate of mitochondrial ATP production, which switches over to net ATP consumption

### Shortening of APD during mitochondrial depolarization
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/681a96e4-1b19-4367-ab0b-155b7d899ef0/gr4_lrg.jpg)
* ROS triggered oscillations in ΔΨm produced phasic changes in cytosolic ATP concentration, sarcolemmal KATP current, and APD. Moderate decrease in ATP concentration (from 7.9 mM to 7.08 mM) when ΔΨm is depolarized.  But threefold increase in the ADP/ATP ratio (from 0.018 to 0.056) was responsible for the activation of the KATP channels.
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/4dd3adb8-ea0b-4dc5-9574-a577507c5b85/gr5_lrg.jpg)
* The action potential morphology was also affected by KATP channel density, oxidative stress, and F1Fo ATPase activity.

### Effect of elevated energy demand on mitochondrial oscillations and cellular electrophysiology
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/3de4e7a0-6eee-48cb-957e-5f0914395fd4/gr6_lrg.jpg)
* force was suppressed when KATP current increased during ΔΨm depolarization
* Increasing pacing frequency significantly decreased the dynamic and steady-state cytoplasmic ATP concentrations.

![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/6ee74473-b034-40cc-8f37-3ba4fe6902d2/gr7_lrg.jpg)
* Faster pacing shortened the cycle length of ΔΨm oscillation.
* Faster pacing significantly increased the amplitude of KATP current

## Discussion
* The first time to our knowledge, a computational framework to examine the nonlinear emergent properties of the cardiac cell under oxidative stress

### Coupling between depolarization of ΔΨm, KATP current activation, and action potential morphology
* KATP channels have a low open probability under physiological conditions, but are rapidly activated during ischemia or metabolic inhibition.
* The increased K+ conductance tends to lock the resting membrane potential close to the equilibrium potential for K+ (EK).
* Mitochondrial uncoupling accelerates KATP current activation because the drop in ΔΨm causes the ATP synthase to run in reverse, thus consuming cytoplasmic ATP and decreasing the phosphorylation potential.
* During the phase of mitochondrial depolarization, the AP shortened by almost 75% (Fig. 4) and the intracellular Ca2+ transient amplitude (not shown) and force production decreased.
* A feedforward effect of pacing frequency on the mitochondrial oscillator was also observed.
* Michailova and McCulloch (33) and Michailova et al. (34) further explored the role of free Mg2+, MgATP, and MgADP on IK,ATP, ICa, and [Ca2+]i in a canine cell model. Either increases in free cytosolic Mg2+ (0.2–5 mM) with fixed Mg-nucleotide concentrations, or decreases in the ATP/ADP ratio with fixed total Mg2+, could activate IK,ATP and systematically change the APD, Ca2+ current, and the Ca2+ transients (35).

### Limitations
* Substrate metabolism (glucose, fatty acids)
* More ion homeostasis (H+, Na+)
* ROS generation
* Energized phosphate transfer (Creatine kinase and adenylate kinase)
* KATP channels can be locally regulated. More efficient response is achieved when ADP is increased through the mitochondrially bound creatine kinase reaction.


# References
[^Zhou2009]: Zhou L, Cortassa S, Wei AC, Aon MA, Winslow RL, O'Rourke B. Modeling cardiac action potential shortening driven by oxidative stress-induced mitochondrial oscillations in guinea pig cardiomyocytes. Biophys J. 2009;97(7):1843-52. [PMC2756351](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2756351/)

[^Cortassa2006]: Cortassa S, Aon MA, O'Rourke B, et al. A computational model integrating electrophysiology, contraction, and mitochondrial bioenergetics in the ventricular myocyte. Biophys J. 2006;91(4):1564-89. [PMC1518641](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1518641/)

[^Aon2003]: Aon MA, Cortassa S, Marbán E, O’Rourke B. Synchronized whole cell oscillations in mitochondrial metabolism triggered by a local release of reactive oxygen species in cardiac myocytes. J. Biol. Chem. 2003;278(45):44735-44744. doi:10.1074/jbc.M302673200.

[^Cortassa2004]: Cortassa S, Aon MA, Winslow RL, O'Rourke B. A mitochondrial oscillator dependent on reactive oxygen species. Biophys J. 2004;87(3):2060-73. [PMC1304608](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1304608/)

[^Ferroro1996]: Ferrero JM, Sáiz J, Ferrero JM, Thakor NV. Simulation of action potentials from metabolically impaired cardiac myocytes. Circulation research 1996;79(2):208-221. doi:10.1161/01.RES.79.2.208. [AHA](https://www.ahajournals.org/doi/10.1161/01.RES.79.2.208)

