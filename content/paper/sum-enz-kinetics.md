---
title: "Modeling of enzyme kinetics: a summary"
date: 2020-10-23T00:48:05+08:00
tags: []
categories: ["Reading","Summary"]
math:
  enable: true
---

Modeling of enzyme kinetics

<!--more-->

## Basic principles
For modelling enzyme catalytic cycle
* Structual and stiochiometric data
  * Rate equations of elementary reactions
  * Reaction graph (cycle) of enzyme stages
* Reduction of rate equations
  * Law of mass equation[^LawofMass]
  * Quasi-equilibrium (slow-fast kinetics)
  * King-Altman method[^King1956][^Qi2009]
  * Py-substitution[^Loriaux2013]
* Satisfies available experimental data
  * Literature of kinetic constants (Km, Ki, Keq, free energy)
  * Databases: BRENDA[^BRENDA]
  * Experiments of both V0 and time series
* Dependence of substrate, product, pH, and temperature

## Examples
Slide Player [example](https://slideplayer.com/slide/6341522/)

Tilde (~) means _specific concentrations_ ($x / K_x$)

### Random Bi-Bi

$$
\begin{aligned}
v &= \frac{V_f\widetilde{A} \widetilde{B} - V_b\widetilde{P} \widetilde{Q}}{1 + \widetilde{A} + \widetilde{B} + \widetilde{A} \widetilde{B} + \widetilde{P} + \widetilde{Q} + \widetilde{P} \widetilde{Q}}
\end{aligned}
$$

### Ordered Bi-Bi
E <=> EA <=> EAB <-> EPQ <=> EQ <=> E
Cleland
$$
\begin{aligned}
v &= \frac{V_f\widetilde{A} \widetilde{B} - V_b\widetilde{P} \widetilde{Q}}{1 + \widetilde{A} + \alpha_A\widetilde{B} + \alpha_Q\widetilde{P} +\widetilde{Q} + \alpha_Q\widetilde{A}\widetilde{P} + \alpha_A\widetilde{B}\widetilde{Q} + \widetilde{P} \widetilde{Q} + \widetilde{A} \widetilde{B} \widetilde{P} + \widetilde{B} \widetilde{P} \widetilde{Q} } \cr
\widetilde{A} &= \frac{a}{K_i^A}  \cr
\widetilde{B} &= \frac{b}{K_m^B}  \cr
\widetilde{P} &= \frac{p}{K_i^P}  \cr
\widetilde{Q} &= \frac{q}{K_m^Q}  \cr
\alpha_A &= \frac{K_m^A}{K_i^A} \cr
\alpha_Q &= \frac{K_m^Q}{K_i^Q} \cr
\end{aligned}
$$

### Theorell-Chance mechanism
The Theorell-Chance mechanism is a simplified version of an ordered mechanism where the steady-state level of central complexes is very low. Therefore, the rate equatioin is identical with the ordered mechanism, except that the terms in **ABP** and **BPQ** are missing from the denominator.[^Leskovac2006]

### Ping Pong Bi-Bi
E <=> EA <=> FP <=> F <=> FB <=> EQ <=> E

$$
\begin{aligned}
v &= \frac{V_f\widetilde{A} \widetilde{B} - V_b\widetilde{P} \widetilde{Q}}{\widetilde{A} + \alpha_A\widetilde{B} + \widetilde{P} + \alpha_P\widetilde{Q} + \widetilde{A}\widetilde{B} + \widetilde{A}\widetilde{P} + \alpha_A\widetilde{B}\widetilde{Q} + \widetilde{P} \widetilde{Q} } \cr
\widetilde{A} &= \frac{a}{K_i^A}  \cr
\widetilde{B} &= \frac{b}{K_m^B}  \cr
\widetilde{P} &= \frac{p}{K_i^P}  \cr
\widetilde{Q} &= \frac{q}{K_m^Q}  \cr
\alpha_A &= \frac{K_m^A}{K_i^A} \cr
\alpha_P &= \frac{K_m^P}{K_i^P} \cr
\end{aligned}
$$

## Allosteric enzymes

### Hill models
$$
\begin{aligned}
  \frac{v}{V_{max}} &= \frac{\phi}{1 + \phi}  \cr
  \phi &= (\frac{x}{k})^n
\end{aligned}
$$

### MWC models
$$
\begin{aligned}
  v &= \frac{nV_S(1 + \frac{V_T}{V_S}Q)}{1+Q} \cr
  Q &= L_0 \left( \frac{1 + Effector / K_{ef}^T}{1 + Effector / K_{ef}^R} \frac{E_R}{E_T} \right)^n
\end{aligned}
$$

## Reference

[^BRENDA]: <https://www.brenda-enzymes.org/>

[^Qi2009]: Qi, F., Dash, R. K., Han, Y., & Beard, D. A. (2009). Generating rate equations for complex enzyme systems by a computer-assisted systematic method. BMC Bioinformatics, 10, 238. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2729780

[^Loriaux2013]: Loriaux, P. M., Tesler, G., & Hoffmann, A. (2013). Characterizing the relationship between steady state and response using analytical expressions for the steady states of mass action models. PLoS Computational Biology, 9(2), e1002901. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3585464

[^King1956]: King, E. L., & Altman, C. (1956). A Schematic Method of Deriving the Rate Laws for Enzyme-Catalyzed Reactions. The Journal of physical chemistry, 60(10), 1375–1378.

[^Leskovac2006]: Leskovac, V., Trivić, S., Pericin, D., & Kandrac, J. (2006). Deriving the rate equations for product inhibition patterns in bisubstrate enzyme reactions. Journal of Enzyme Inhibition and Medicinal Chemistry, 21(6), 617–634. https://www.tandfonline.com/doi/full/10.1080/14756360600829381?scroll=top&needAccess=true&

[^LawofMass]: <https://en.wikipedia.org/wiki/Law_of_mass_action>
