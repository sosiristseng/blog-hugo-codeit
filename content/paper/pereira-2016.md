---
title: "Pereira 2016 | Computational Models of Reactive Oxygen Species as Metabolic Byproducts and Signal-Transduction Modulators"
date: 2020-10-23T00:33:34+08:00
tags: ["ROS"]
categories: ["Reading","Mitochondria"]

---

[Sciwheel](https://sciwheel.com/work/#/items/5591729)

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5126069/)[^Pereira2016]

<!--more-->

## Introduction
* At low levels, ROS function as a reactive second messenger
* High ROS levels, by contrast, cause damage to various biomolecules
* It is challenging to study experimentally how endogenous and exogenous sources of ROS are handled by the cell. context- and dose-dependent
![](https://www.frontiersin.org/files/Articles/232070/fphar-07-00457-HTML/image_m/fphar-07-00457-g001.jpg)

## ROS
* Mitochondrial: complex I, complex III
* Plama membrane: NADPH oxidase
* Cytosolic: xanthine oxidase, cyclooxygenases, NOS
* Peroxisome

## Challenges of Measuring ROS
*  sensors might miss low concentrations of H2O2 due to the endogenous enzyme **peroxiredoxin (thioredoxin peroxidase)**
* intracellular H2O2 diffusion through the cytosol, with a length scale of 4 μm and a time scale of 1 ms => degradation & signaling are localized
## ROS Production By Complex III of the ETC
* Selivanov: 400 redox state model. Bistability of complex III (a low ROS-producing state and a high ROS-producing state). The overall system evolves to the high ROS producing state either by an increase in succinate concentration, causing the reduction of ubiquinone to ubiquinol, or a decrease in oxygen content.

## ROS Production By Complexes I and III of the ETC
* Gauthier model: mitochondrial membrane potential, matrix pH, and ROS scavenging affect ROS production and control
    * potential increased 20 mV: complex III ROS production as a function of membrane potential switches from zeroth order (constant production) to first order (exponential production)
    * agree with experimental results reporting a threshold membrane potential of 153 mV, above which ROS production increases dramatically
    * pH-dependent mechanism of ROS generation experimentally observed by Selivanov
    * RET: complex I ROS production also increased with matrix alkalinization
    * redox-optimized ROS balance hypothesis (ROS levels are lowest at an intermediate mitochondrial redox potential)
* Gauthier model (imporved ): Integrating the ETC-ROS model discussed above into a mitochondrial energetic-redox model
    * Mismanaged mitochondrial Ca2+, NADH levels decrease drastically under simulated cardiac pacing, highlighting the link between **compromised Ca2+ and NADH**
    * Lower amounts of NADH lead to lower NADPH levels and a decreased ability to reduce scavenging enzymes for reuse, causing ROS to accumulate
* Bazil model (2016): ROS with OXPHOS coupled to ATP demand
    * ROS generation in complex III is higher than in complex I under physiological conditions
    * As ATP demand increases, the steady state production of ROS also increases, in line with experimental observations
    * RET (during reperfusion) by complex II hyperreducing the Q pool => profound ROS production

## ROS Production By the Mitochondrial Network (Park et al, 2011)
* ABM for mitochondrial networks
* uniformly distributed mitochondria, as seen in cardiomyocytes; irregularly distributed mitochondria, as in neurons; and sparsely distributed mitochondria, as found in white blood cells
* ROS production is blocked by antioxidant enzyme systems or becomes amplified by RIRR. Diffusion described as random walk.
* ROS propagation is faster in the cardiomyocyte model than in the irregular distribution model
* Cells with a low density of mitochondria have considerable ROS propagation after low levels of oxidative stress, while cells with a high density of mitochondria only show strong ROS propagation after high levels of oxidative stress

## ROS Production in Relation to Antioxidant Signaling
* NRF2 signaling: Cyclosporin A (CsA) => oxidative stress
* The model predicted that low doses of CsA yielded widespread oscillations throughout the network as cells metabolized the administered CsA and detoxified ROS before the next administration. At high doses, however, the cell is overwhelmed and the modeled network locks into an elevated state of ROS adaptation

## ROS Production in the Phagosome Membrane By NADPH Oxidase
* Olsen model: myeloperoxidase, melatonin, NADPH, and NADPH oxidase => ROS oscillate in the neutrophil

## ROS Production During WNT/β-Catenin Signaling
* Haack model: WNT/β-catenin signaling pathway with ROS. disruption of membrane lipid rafts inhibits WNT/β-catenin signaling, and also that ROS activate WNT signaling in the context of differentiation of human neural progenitor cells

## ROS Modulation of IL-4 Signaling
* The activated IL-4 receptor complex upregulates ROS through NADPH oxidase
* diminished STAT6 phosphorylation following IL-4 stimulation and ROS inhibition

## ROS Crosstalk with Insulin Signaling
* Smith and Shanley : differential equation model of insulin-stimulated ROS production
* Hydrogen peroxide alone caused modest glucose uptake and insulin alone caused strong glucose uptake, but hydrogen peroxide and insulin stimulation together were antagonistic, causing only moderate glucose uptake

## ROS Production As One Node in A Larger Network of Cardiac Fibroblast Signaling
* generation and handling of ROS pervades multiple pathways and can lead to counterintuitive cell outcomes
* ROS as part of a much larger signaling network to identify regulators of cardiac fibrosis
* A cardiac fibroblast signaling network model:logic-based differential equation
*
## Conclusion and Future Outlook
* we anticipate more sophisticated models that combine ROS handling and signaling concurrently
* There is also a need to build multiscale models that place ROS in the broader context of developing tissues, tumors, and infections
* Integration of ROS signaling into larger networks may allow researchers to predict outcomes of drug treatments that affect ROS generation

## Refrence
[^Pereira2016]: Pereira EJ, Smolko CM, Janes KA. Computational Models of Reactive Oxygen Species as Metabolic Byproducts and Signal-Transduction Modulators. Front Pharmacol. 2016;7:457. Published 2016 Nov 29. doi:10.3389/fphar.2016.00457. [PMC5126069](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5126069/).
