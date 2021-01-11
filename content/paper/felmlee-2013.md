---
title: "Felmlee 2013 | Mechanism-based pharmacodynamic modeling"
date: 2020-10-22T23:52:58+08:00
tags: []
categories: ["Reading"]
math:
  enable: true
---

[Sciwheel](https://sciwheel.com/work/#/items/5848333)

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3684160/)

<!--more-->

## Introduction
* diseases and both types of drug responses may emerge from perturbations of singular complex interconnected networks
## Modeling Requirements
* Useful pharmacodynamic models are based on plausible mathematical and pharmacological exposure–response relationships
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3684160/bin/nihms472103f1.jpg "Basic components of pharmacodynamic models")
* relevant biological fluid (e.g., plasma, Cp) or the biophase (Ce)
*
## Practical Modeling Approaches
* A good graphical analysis (along with a priori knowledge of drug mechanisms) may be used to narrow down the number of structural models
* good initial parameter estimates can reduce the likelihood of falling into local minima
* fitting a model to concentration–time profiles in relevant biological fluids
* Although simultaneous PK/PD modeling is desirable, this can still be a formidable challenge for complex models

### Simple Direct Effect Models
* Emax model: The full Hill equation, or sigmoid Emax model, incorporates a curve-fitting parameter, γ, which describes the steepness of the concentration–effect relationship

$$
E=E_{0} \pm \frac{E_{m a x} \times C_{\mathrm{p}}^{\gamma}}{\mathrm{EC}_{50}^{\gamma}+C_{\mathrm{p}}^{\gamma}}
$$

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3684160/bin/nihms472103f2.jpg)

* linear slope of the effect:
$$
m=\frac{E_{\max } \times \gamma}{4}
$$

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3684160/bin/nihms472103f3.jpg "Direct effect model of tacrolimus-induced changes of QTc intervals in guinea pigs")

### Biophase Distribution
* in vivo pharmacological effects will lag behind plasma drug concentrations: hysteresis, or a temporal disconnect in effect versus concentration plots
*  drug effect through a hypothetical effect compartment
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3684160/bin/nihms472103f4.jpg "Biophase model structure")

* The biophase model is only suitable for describing delayed responses due to drug distribution

### Indirect Response Models
* The four basic models include inhibition of production (Model I) or dissipation (Model II) of response or stimulation of production (Model III) or dissipation of response (Model IV)

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3684160/bin/nihms472103f5.jpg)

#### Model 1
$$
\frac{\mathrm{d} R}{\mathrm{d} t}=k_{\mathrm{in}}\left(1-\frac{I_{\mathrm{max}} \times C_{\mathrm{p}}}{\mathrm{IC}_{50}+C_{\mathrm{p}}}\right)-k_{\mathrm{out}} \times R
$$

#### Model 2
$$
\frac{\mathrm{d} R}{\mathrm{d} t}=k_{\mathrm{in}}-k_{\mathrm{out}}\left(1-\frac{I_{\mathrm{max}} \times C_{\mathrm{p}}}{\mathrm{IC}_{50}+C_{\mathrm{p}}}\right) R
$$

#### Model 3
$$
\frac{\mathrm{d} R}{\mathrm{d} t}=k_{\mathrm{in}}\left(1+\frac{S_{m a x} \times C_{\mathrm{p}}}{\mathrm{SC}_{50}+C_{\mathrm{p}}}\right)-k_{\mathrm{out}} \times R
$$

#### Model 4
$$
\frac{\mathrm{d} R}{\mathrm{d} t}=k_{\mathrm{in}}-k_{\mathrm{out}}\left(1+\frac{S_{\mathrm{max}} \times C_{\mathrm{p}}}{\mathrm{SC}_{50}+C_{\mathrm{p}}}\right) R
$$


* The basic indirect response models can be extended to incorporate a precursor compartment (P)
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3684160/bin/nihms472103f6.jpg)

![image](https://user-images.githubusercontent.com/40054455/96898411-40e6a380-14c2-11eb-9b17-be0d12f169e4.png)

### Signal Transduction Models
* a lag between drug concentration and observed effects owing to time-dependent signal transduction: **delayed differential equations** (DDEs)?
* rate of initial transit compartment (M1)
$$
\frac{\mathrm{d} M_{1}}{\mathrm{d} t}=\frac{1}{\tau}\left(\frac{E_{m a x} \times C_{\mathrm{p}}}{\mathrm{EC}_{50}+C_{\mathrm{p}}}-M_{1}\right)
$$
For the ith compartment:
$$
\frac{\mathrm{d} M_{i}}{\mathrm{d} t}=\frac{1}{\tau}\left(M_{i-1}-M_{i}\right)
$$
* e.g. Chemotherapy-induced myelosuppression
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3684160/bin/nihms472103f7.jpg)

### Irreversible Effect Models
$$
\frac{\mathrm{d} R}{\mathrm{d} t}=-k \times C \times R
$$
* This approach is only applicable for non-proliferating cell populations, but may be extended to incorporate cell growth
$$
\frac{\mathrm{d} R}{\mathrm{d} t}=k_{s} \times R-k \times C \times R
$$
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3684160/bin/nihms472103f8.jpg)
* The irreversible effect model can also be adapted to include the turnover or production and loss of a biomarker
$$
\frac{\mathrm{d} R}{\mathrm{d} t}=k_{\mathrm{in}}-k_{\mathrm{out}} R-k \times C \times R
$$

### More Complex Models
#### The time-course of paraoxon inactivation of in vitro whole blood cholinesterase (WBChE)
$$
\frac{\mathrm{d} E_{\mathrm{A}}}{\mathrm{d} t}=-\left(\frac{k C_{\mathrm{PO}}}{\mathrm{EC}_{50, \mathrm{PO}}+C_{\mathrm{PO}}}\right) E_{\mathrm{A}}+k_{r} E_{\mathrm{I}}
$$
$$
\frac{\mathrm{d} E_{I}}{\mathrm{d} t}=\left(\frac{k C_{\mathrm{PO}}}{\mathrm{EC}_{50, \mathrm{PO}}+C_{\mathrm{PO}}}\right) E_{A}-\left(k_{r}+k_{\mathrm{age}}\right) E_{1}
$$
* The reactivation of this in vitro system by PRX was modeled as an indirect response
$$
\frac{\mathrm{d} E_{\mathrm{A}}}{\mathrm{d} t}=-\left(\frac{k C_{\mathrm{PO}}}{\mathrm{EC}_{50, \mathrm{PO}}+C_{\mathrm{PO}}}\right) E_{\mathrm{A}}+k_{\mathrm{r}}\left(1+\frac{E_{\mathrm{max}} C_{\mathrm{PRX}}^{h}}{\mathrm{EC}_{50, \mathrm{PRX}}^{h}+C_{\mathrm{PRX}}^{h}}\right) E_{\mathrm{I}}
$$
$$
\begin{aligned} \frac{\mathrm{d} E_{\mathrm{I}}}{\mathrm{d} t}=\left(\frac{k C_{\mathrm{PO}}}{\mathrm{EC}_{50, \mathrm{PO}}+C_{\mathrm{PO}}}\right) & E_{\mathrm{A}}-k_{\mathrm{r}}\left(1+\frac{E_{\mathrm{max}} C_{\mathrm{PRX}}^{h}}{\mathrm{EC}_{50, \mathrm{PRX}}^{h}+C_{\mathrm{PRX}}^{h}}\right) E_{\mathrm{I}} \cr &-\left(k_{\mathrm{age}} E_{\mathrm{I}}\right) \end{aligned}
$$
* the toxicodynamic biomarker, expiratory time (TE), was linked to apparent active enzyme (EA) according to the following nonlinear transfer function
$$
T_{\mathrm{E}}=T_{\mathrm{E}}^{0}+\frac{E_{\mathrm{max}, T_{\mathrm{E}}}\left(\frac{E_{0}}{E_{\mathrm{A}}}-1\right)^{n}}{E_{50}^{n}+\left(\frac{E_{0}}{E_{\mathrm{A}}}-1\right)^{n}}
$$

## Prospects
* The future of mechanism-based pharmacodynamic modeling for both therapeutic and adverse drug responses is promising for model-based drug development and therapeutics
* A diverse array of models is available with a minimal number of identifiable parameters to mimic mechanisms and the time-course of therapeutic and adverse drug effects
* Network-based systems pharmacology models have shown utility for understanding drug-induced adverse events (e.g. FBA, FVA)
