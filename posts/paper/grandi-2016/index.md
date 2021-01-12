# Grandi 2016 | Anti-arrhythmic strategies for atrial fibrillation: The role of computational modeling in discovery, development, and optimization


[Sciwheel](https://sciwheel.com/work/#/items/6117351)[^Grandi2016]

<!--more-->

## Introduction
* Atrial fibrillation (AF) is the most prevalent cardiac arrhythmia (1-2%)
* age is the most powerful predictor of AF risk
* AF markedly increases risk for cerebrovascular stroke and thrombo-embolic events
* often coexists with other pathologies, such as heart failure (HF) and left ventricular dysfunction
* progression from sporadic paroxysmal AF (pAF) to persistent or chronic (cAF) forms
* increased ectopic firing of atrial cells and impulse reentry through atrial tissue
    * cellular level:  focal ectopic/triggered activity = early and delayed afterdepolarizations (**EADs** and **DADs**)
    * tissue level: Reentry (shorter action potential duration (**APD**) and effective refractory period (**ERP**), and APD alternans), slow conduction velocity (**CV**) and heterogeneous conduction, fibrotic regions
* modulated by the **autonomic nervous system (ANS)**, which has a profound influence on the occurrence of AF
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5140742/bin/nihms-817291-f0001.jpg)
* Current therapies:  treating the faulty heartbeat, reducing risk of tachycardia-induced cardiomyopathy and/or stroke
    * Rhythm control by antiarryhthmatics, low efficacy and with side effects
* human atrial myocyte models review [^Heijman2016]
    * More recent models (Grandi and Koivumaki): Na & Ca handling
    * centripetal Ca diffusion in atrial myocytes, unlike ventricular ones (uniform)
    * sympathetic and vagal stimulation

## Ionic anti-AF targets
### K channels
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5140742/bin/nihms-817291-f0002.jpg)
* slow, rapid, and ultrarapid delayed rectifier (IKs, IKr and IKur)
* transient-outward (Ito)
*  inward-rectifier K currents
    * basal IK1
    * acetylcholine-dependent (IK,ACh)
    * ATP-sensitive K current (IKATP)
* small-conductance Ca-activated K (SK) current (IK,Ca)
* hyperpolarization-activated cyclic nucleotide-gated current (‘funny’ current; If)
* two-pore-domain K (K2P): TREK1 (K2P2.1) and TASK1 (K2P3.1)
* AF-selective drug should exert potent effects on fibrillating atria without significantly impacting ventricular tissue during normal heart rates i.e. **IKur, IK,ACh, IK2P, and IK,Ca**

#### IKur
* The reduction in **Ito and IKur** explains the slight prolongation in earlier phases of the AP of cAF patients
* block of IKur results in prolongation and elevation of the AP plateau, which augments the Ca transient amplitude that would elicit a positive inotropic effect
* Sensitivity analysis: APD changes negatively or positively correlate with IKur block depending on **the degree of remodeling**

#### IK1
* increased in cAF vs. nSR human atrial myocytes
* IK1 as one of the most relevant currents in the perpetuation of reentrant mechanisms both in experiments and simulations
* the effect of IK1 blockade: to lengthen APD and ERP and therefore reduce the dominant frequency (DF)

#### IK,ACh
* GIRK1 and GIRK4 subunits, expressed in atrial and nodal cells
* Activated by (phosphorylation of) PKC
* Activation of IK,ACh hyperpolarizes atrial resting membrane potential (RMP), and shortens APD and ERP

#### IK,Ca
* SK activation is Ca-dependent (mediated by **calmodulin** tethered to the channel), during fast pacing or tachyarrhythmias (e.g. AF), when Ca accumulation
* Both SK hyperactivity and suppression have been implicated in AF in canine atrial tissue
    * hyperactivity: shortening of APD and ERP
    * suppression: increasing the occurrence of EADs, increasing APD heterogeneity leading to alternans
*  role of IK,Ca in human atrial physiology and AF is not well understood
* simulations: IK,Ca is protective against triggered events (EADs, DADs, triggered activity), but contributes to a reentrant substrate (favoring ERP shortening and alternans)

#### K2P channels
* TWIK1 and TASK1 K channles: be regulated by pH, oxygen, stretch, temperature, drugs, lipids, and second messengers
* upregulation of IK2P (as in the cAF) contributes to APD shortening in AF

#### Na/K pump current
* Na/K ATPase has also been implicated in the effects of amiodarone, and cardiac glycosides

### Na channels
* NaV1.5: fast INa with late component (INaL)
* Specific Na channel block has been demonstrated to effectively terminate AF both experimentally and in mathematical models =>  increasing rotor core size and decreasing reentry frequency
* atrial selectivity to certain Na blockers are new treatment directions
* Flecainide, Vernakalant and ranolazine
* INaL is significantly increased in cAF patients, mediated by CaMKII
* increase in INaL could potentially cause cellular Na and Ca overload and lead to contractile dysfunction and electrical instability

### Na and K channel “polytherapy”
* Amiodarone: blocking voltage-gated K channels as well as β-adrenergic receptors, Na and Ca channels, reducing arrhythmia triggers
* Synergic use of ranolazine => reduced required dose and side effects with the same treatment effects
* Synergistic reduction of Na-dependent parameters (peak INa, upstroke velocity, and CV) and were associated with a more rapid termination of AF, and reduced AF inducibility
* blocking IKr => prolonged QT => increased the risk of TdP

### Ca channels
* L-type calcium current (ICaL) reduction in human cAF is well established

### RyR channels
* Spontaneous Ca release events and Ca waves through leaky ryanodine receptor in cAF
* One potential contributor to RyR hyperactivity may be **oxidative stress**, CaMKII-dependent
* Ca overload => elimination of Ca via inward Na-Ca exchange current could lead to cell depolarization and cause DADs
* CaMKII inhibition may reduce the propensity for atrial arrhythmias in cAF patients

### Gap junction channels
* AF-related remodeling involves reduction in gap junctions via decreased connexin expression and distribution
* Small-molecule drugs enhancing gap junction conductance, such as rotigaptide, have been developed as potential treatments
* The role remain unclear

### Summary
![tbl1](https://user-images.githubusercontent.com/40054455/86618030-c6fddd80-bfea-11ea-95c6-8d8cf2c804eb.png)
* Computational modeling can provide an integrative framework to overcome some of the complexities.
* multiscale understanding of how ionic, structural, and neurohormonal remodeling conspire to promote and sustain AF
* Quantitative understanding by EP simulations
* **Molecular modeling** of ion channel structures and drug components has proven useful to predict the behavior of novel compounds
* **Population-based** computational approaches have been recently developed. Computation permits one to build “populations of drugs” and use parameter sensitivity analyses to define optimal theoretical channel blockers (those with safer profile and broader therapeutic window)

## Non-pharmacological rhythm-control therapies
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5140742/bin/nihms-817291-f0003.jpg)
* Biophysical modeling and simulation strategies have long been used to understand electrical cardioversion[^Trayanova2014]
### The research pipeline and preclinical development
### Computational cardiology
* Electrical cardioversion
* Electrical mapping and frequency analysis
* Ablation modeling

## Upstream therapy approaches
### Renin-Angiotensin-Aldosterone System (RAAS)
* ACEI and ARB => antifibrotic and antifibrillatory
* aldosterone?
### Oxidative Stress and Inflammation
* elevated level of reactive oxygen species (ROS) in AF atrium
* correlation between oxidative stress and ERP shortening in animal models
* there are surprisingly little mechanistic data linking changes in redox homeostasis to the associated cellular dysfunction
* inflammation and fibrosis have been linked to changes in the redox system
* treatment with anti-oxidant/anti-inflammatory agents has been shown to reduce atrial electrical remodeling, fibrosis, and AF in animal models
#### ROS and CaMKII inhibitors
* Oxidation of CaMKII is increased in AF patients

## Research Horizons
### Exploring multi-physics simulation in AF
* multiscale human atrial electrophysiology with mechanics & hemodynamics
### Clinical decision support and integration with other modalities
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5140742/bin/nihms-817291-f0004.jpg)
*  An overall ambition is to integrate existing tools and related datasets presently at our disposal

## References
[^Grandi2016]: Grandi E, Maleckar MM. Anti-arrhythmic strategies for atrial fibrillation: The role of computational modeling in discovery, development, and optimization. Pharmacol. Ther. 2016;168:126-142. doi:10.1016/j.pharmthera.2016.09.012. [PMC5140742](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC5140742)

[^Heijman2016]: Heijman J, Erfanian Abdoust P, Voigt N, Nattel S, Dobrev D. Computational models of atrial cellular electrophysiology and calcium handling, and their role in atrial fibrillation. J Physiol. 2015;594(3):537-53. [PMC5341705](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5341705/)

[^Trayanova2014]: Trayanova NA, Rantner LJ. New insights into defibrillation of the heart from realistic simulation studies. Europace. 2014;16(5):705-13. [PMC4010179](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4010179/)

