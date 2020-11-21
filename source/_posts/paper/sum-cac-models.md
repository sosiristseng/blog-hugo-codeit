---
title: "Summary | Mathemetical modeling of the citric acid cycle (CAC)"
date: 2020-10-23T00:47:32+08:00
tags: ["calcium", "citric acid cycle"]
categories: ["Reading","Summary"]
---

Mathemetical modeling of the citric acid cycle (CAC)

<!--more-->

## Abbreviations
* CAC: [Citric acid cycle](https://en.wikipedia.org/wiki/Citric_acid_cycle) = tricarboxylic acid (TCA) cycle = Krebs cycle
* Pyr: pyruvate
* PDH : pyruvate dehydrogenase
* CS: citrate synthase
* ACO: aconitase
* IDH: isocitrate dehydrogenase
  * IDH1: NADPH-dependent, soluable
  * IDH2: NADPH-dependent, mitochondrial
  * IDH3: NADH-dependent, mitochondrial
* KGDH: alpha ketoglutarate dehydrogenase
* SL: succinate-CoA ligase = Succinyl CoA synthetase (SCS) = succinate thiokinase (STK)
  * ATP-dependent
  * GTP-dependent
* SDH: Succinate dehydrogenase = succinate-coenzyme Q reductase (SQR) = respiratory Complex II
* FH: Fumarate hydratase
* MDH: Malate dehydrogenase. Not the same as malic enzyme, which is CO₂-forming
* AAT: Aspartate aminotransferase = AST = glutamic-oaa transaminase (GOT)

## ECME model
* Cardiac mitochodria[^Cortassa2003], full cycle CAC
* CAC reaction rates enhanced by calcium and ADP
* Coupled with cardiac electrophysiology models later on

## Nguyen model
* Cardiac mitochodria[^Nguyen2007], full cycle CAC
* Focused on effects of calcium and proton dynamics on CAC fluxes

## Mogilevskaya and Demin model
* Salicylate inhibition of TCA cycle in hepatocytes[^Mogilevskaya2006]
* Latter half cycle of the CAC, with AST shunt and kg-malate carrier
* SDH with random order bi-bi reaction and depencdece to ubiquinone
* [Model description](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2651525/pdf/10867_2006_Article_9015.pdf)

## Berndt model
* Neuron cell model[^Berndt2012]
* Full cycle of CAC (Pyruvate as the sole substrate)
* Study the inhibition on KGDH (e.g. in Alzheimer's disease or other neurodegerative diseases)
* Along with electron transport chain model, but no mitochodnrial calcium dynamics
* [Model description](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3376505/bin/757594.f1.pdf)

## Wu and Beard model
* Liver and heart mitochondria[^Wu2007]. [Schema](http://www.jbc.org/content/282/34/24525/F1.expansion.html)
* Along with Oxidative Phosphorylation (OxPhos), Metabolite Transport, and Electrophysiology
* 70~ish state variables and excessive binding polynomials
* [Model description](http://www.jbc.org/content/282/34/24525.full.pdf+html?with-ds=yes)



## Reference
[^Mogilevskaya2006]: Mogilevskaya, E., Demin, O., & Goryanin, I. (2006). Kinetic model of mitochondrial Krebs cycle: unraveling the mechanism of salicylate hepatotoxic effects. Journal of Biological Physics, 32(3–4), 245–271. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2651525

[^Berndt2012]: Berndt, N., Bulik, S., & Holzhütter, H.-G. (2012). Kinetic Modeling of the Mitochondrial Energy Metabolism of Neuronal Cells: The Impact of Reduced α-Ketoglutarate Dehydrogenase Activities on ATP Production and Generation of Reactive Oxygen Species. International journal of cell biology, 2012, 757594. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3376505

[^Wu2007]: Wu, F., Yang, F., Vinnakota, K. C., & Beard, D. A. (2007). Computer modeling of mitochondrial tricarboxylic acid cycle, oxidative phosphorylation, metabolite transport, and electrophysiology. The Journal of Biological Chemistry, 282(34), 24525–24537.

[^Cortassa2003]: Cortassa, S., Aon, M. A., Marbán, E., Winslow, R. L., & O'Rourke, B. (2003). An integrated model of cardiac mitochondrial energy metabolism and calcium dynamics. Biophysical journal, 84(4), 2734–2755. doi:10.1016/S0006-3495(03)75079-6 https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1201507/

[^Nguyen2007]: Nguyen, M.-H. T., Dudycha, S. J., & Jafri, M. S. (2007). Effect of Ca2+ on cardiac mitochondrial energy production is modulated by Na+ and H+ dynamics. American Journal of Physiology. Cell Physiology, 292(6), C2004-20. https://www.physiology.org/doi/full/10.1152/ajpcell.00271.2006
