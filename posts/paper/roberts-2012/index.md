# Roberts 2012 | Computational approaches to understand cardiac electrophysiology and arrhythmias


[Sciwheel](https://sciwheel.com/work/#/items/76000).[^Roberts2012]

<!--more-->

## Introduction
* customizable modeling platforms: Continuity(404 NOT FOUND), CHASTE and OpenCMISS

## Models to Address Ion Channel-Based Mechanisms of Cardiac Arrhythmia
* For diseases like long-QT (LQT) syndrome (LQTS), Brugada syndrome (BrS), and isolated cardiac conduction disorder (ICCD)
    * Increase in late Na => prolongation of the AP duration (APD) and consequent QT interval prolongation
* mutations at multiple loci can produce the same phenotype (56, 186), or a single mutation at a particular locus can surprisingly result in different phenotypes => need for Computational modeling
* potassium current defects: hERG (IKr) defect => longer QT interval
* estrogen also reduces Ikr => longer QT interval => arrythmia
![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.303.issue-7/ajpheart.01081.2011/production/images/large/zh40201205410001.jpeg)
* progesterone appears to shorten the QT interval and reduce arrhythmia incidence associated with LQTS

## Models of Normal and Pathological Cardiac Regulation by Subcellular Signaling
* CaMKII signaling => multiple ion channels and pumps (HRd model)
![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.303.issue-7/ajpheart.01081.2011/production/images/large/zh40201205410002.jpeg)
* β-adrenergic signaling cascade => INa, IKs, RyRs, SERCA, the Na-K pump, troponin I, glycolysis, cross-bridge formation
* PKA and CaMKII-dependent modulation : β-adrenergic enhancement of calcium transients was assisted by a synergistic relationship between PKA and CaMKII-dependent phosphorylation of multiple targets (Soltis-Saucerman model)
![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.303.issue-7/ajpheart.01081.2011/production/images/large/zh40201205410003.jpeg)

## Models of EC Coupling
* Arrhythmogenic phenomena including delayed afterdepolarizations (DADs) and EADs, premature ectopic beats, alternans, and initiation of ventricular tachycardias and fibrillation are all linked to aberrant calcium dynamics
* accurate representation of calcium dynamics and EC coupling is among the most complicated aspects of cardiac electrophysiology modeling
    * Negative feedback: VDI, CDI
    * Positive feedback: RyR activation, EC coupling gain
    * SR leak
* cardiac diad where L-type calcium channels and RyRs are found in close proximity and even within the SR
* Trans' SERCA model[^Tran2008] includes dependence on myoplasmic and SR calcium concentrations and allows for variable calcium-proton transport ratios
* NCX: voltage, sodium and calcium concentration dependence, as well as slippage
* mechanisms of SR calcium release and the propagation of calcium waves?

## Metabolic Links to Electrical Dysfunction
* defects in cell metabolism and mitochondrial function have also been implicated in the genesis of arrhythmias
### ROS-induced ROS release (RIRR)
* The mitochondria also exhibit complex behavior such as traversing waves of membrane depolarization
    * ROS-induced ROS release (RIRR)
    * altered intracellular calcium dynamics (via MCU)
    * collapse of mitochondrial membrane potential (ΔΨ)
    * mitochondrial permeability transition pore (mPTP)
    * mitochondrial ATP-sensitive potassium channels (mKATP)
![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.303.issue-7/ajpheart.01081.2011/production/images/large/zh40201205410004.jpeg "The ECME-RIRR model")

### Metabolic stress that results from myocardial ischemia and reperfusion (I/R)
![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.303.issue-7/ajpheart.01081.2011/production/images/large/zh40201205410005.jpeg)
* Ion inbalance (Na, Ca, K, H)
* Increased mitochondrial-derived ROS from RET due to succinate accumulation during ischemia

## Perturbations in Channel Function Alter Cardiac Dynamics
* Cell level alteration of ion dynamics related to arrythmia prediction

## Source-Sink Relationships and Propagation of Arrhythmia Triggers
* In a tissue level => PVCs, which serve as arrhythmia triggers

## Tissue Structure and the Role of Geometry
![](https://www.physiology.org/na101/home/literatum/publisher/physio/journals/content/ajpheart/2012/ajpheart.2012.303.issue-7/ajpheart.01081.2011/production/images/large/zh40201205410006.jpeg)

## Models to Predict Drug Therapy Effects
* computer-based drug screening
* flecainide => reduced excitability => Proarrhythmic conduction block. (lidocaine is safer in this case)
* atrial-specific sodium channel modeling (6, 153) and focusing on specific drugs such as lidocaine (147), flecainide (147), ranolazine (148, 153), and bupivacaine (212) in detailed models
* Models can be used to quickly survey a large range of drug compounds and concentrations under different conditions of pacing protocol, heart rate, and additional conditions
* An additional advantage of computational models is that many parameters can be monitored throughout a simulation
* many drugs are promiscuous and interact with proteins other than the intended targets and that biological systems exhibit many nonlinear dependencies across multiple scales of time and space
* Furthermore, computational approaches potentially allow certain problems associated with animal studies to be circumvented

## Computational Models to Guide Ablation Procedures and Biological Pacemakers
## Patient-Specific Modeling
## Validation of Model Predictions Is Necessary
* In silicon models not only reproduce previously observed physiological behavior but also yield predictions that are correct and can guide further experimental work
## Utility of Computational Modeling Studies in the Clinical Setting
* direct use of patient data and guiding procedures
* Making use of computational tools in a different way, a technique called noninvasive electrocardiographic imaging (ECGI), reconstructs an electrical activation map by merging ECGI data with a reconstruction of a patient's heart from CT scan images

## Reference
[^Roberts2012]: Roberts BN, Yang P-C, Behrens SB, Moreno JD, Clancy CE. Computational approaches to understand cardiac electrophysiology and arrhythmias. Am. J. Physiol. Heart Circ. Physiol. 2012;303(7):H766-83. doi:10.1152/ajpheart.01081.2011. [PMC3774200](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3774200).

[^Tran2008]: Tran K, Smith NP, Loiselle DS, Crampin EJ. A thermodynamic model of the cardiac sarcoplasmic/endoplasmic Ca(2+) (SERCA) pump. Biophys. J. 2009;96(5):2029-2042. doi:10.1016/j.bpj.2008.11.045.

