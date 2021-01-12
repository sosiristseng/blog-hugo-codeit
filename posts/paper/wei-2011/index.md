# Wei 2011 | Mitochondrial energetics, pH regulation, and ion dynamics: a computational-experimental approach


[Sciwheel](https://sciwheel.com/work/#/items/1272741)[^Wei2011]

<!--more-->

## Introduction
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/c2b005cf-14f9-47b6-be57-3899491622e3/gr1_lrg.jpg)
* Ion regulation (H+, Na+, Ca2+, Pi) are incorporated into the guinea pig heart mitochondria model.
    * equilibrium constants and multiple acid-base equilibria of metabolites with H+
    * associations with Mg2+
    * dependence of IDH and MDH on pH
    * SDH as part of the ETC
    * parameters were either obtained directly from the literature or optimized by minimizing the differences between the model simulation and experimental data
    * Ionic fluxes was tested under steady-state and time-dependent situations
    * state 4 to state 3 transition: a highly energized (i.e., high ΔΨm) and reduced redox status of low respiration and ATP synthesis to high respiratory and ATP synthesis fluxes.
* Tested the model at the steady state by studying the dependence of respiratory and ATP synthesis fluxes on their driving forces (i.e., Δp, redox, and phosphorylation potentials)

## Results

### Steady-state behavior
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/5905cd08-cd63-42ce-a66b-89f76064955a/gr2_lrg.jpg)
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/1088481/8039203/si1.gif)
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/1088481/8039204/si2.gif)
* As ADPi increases, it is taken up into the matrix, raising the ADPm steady-state level. Higher ADPm decreases the phosphorylation potential, leading to an increase in ATP synthesis, dissipattion of the proton motive force, Δp, NADH consumption and a drop of its redox potential.
* E/F: substrate deprivation

### Calcium uniporter, NHE, and PiC fluxes in relation to pmf
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/5a5bc181-8358-46e7-9ad5-37fea4a40618/gr3_lrg.jpg)
* the flux through PiC decreases with Δp subsequent to the Pi demand for phosphorylation by the ATP synthase
* The range of flux values is rather narrow, but it agrees well with the range of Ca2+ uptake fluxes determined experimentally in isolated heart mitochondria

### Time-dependent behavior
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/4d20ec08-0128-411b-8e8f-c3a8cfb1340e/gr4_lrg.jpg)
* The apparent incomplete collapse of ΔΨm seen in the experimental data may be due to the dynamic range of the ΔΨm probe, TMRM, which is sensitive within the range of 130–210 mV under our experimental conditions

### Transition from state 4 to state 3
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/28fe3657-9719-459d-ab6d-8bc0a3c4daf4/gr5_lrg.jpg)
* simulated RCR of ∼2.5, similar to experiments.
* reversal of the H+ pumping direction upon uncoupling, as expected
* P/O ratio: 1.67 to 2.02 in Fig2. 0.5 in state 4 to 1.25 in state 3. negative upon uncoupling.

### Mitochondrial pH and Pi responses during energetic transitions
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/1a7ebb60-5570-4705-b650-9bc155d8522b/gr6_lrg.jpg)
* EXP: Addition of 2.0 mM Pi => increase of ΔΨm and a higher reduction of NADH
* MODEL: change in ΔΨm, but the level of NADH remained constant
* PiC: Pi/OH antiport, Pi uptake triggers intramitochondrial acidification, resulting in a decrease of the ΔpH component of Δp.
* large buffering capacity of H+ => pH_mito barly changes

## Discussion
* This model involves interactions between **energetics** (i.e., TCA cycle, respiration, and ATP synthesis fluxes) and the dynamics of several **ions**, including Ca2+, Na+, Pi, and H+
* The Δp is used for the import of respiratory substrates and Pi (driven by ΔpH), ADP in exchange for ATP through the ANT (driven by ΔΨm), volume regulation (K+, Na+, and anions), energetic signaling (Ca2+), and heat production (H+)
* Na+ levels increased (∼10%) during energization of the membrane after substrate addition, and decreased (∼13%) in state 3 after ADP addition. Na+ is also known to increase in cardiac mitochondria after episodes of ischemia/reperfusion. Mitochondrial NHE activity also appears to be required for steady-state Ca2+ cycling in energized mitochondria.
* The model does not account for direct activation of TCA cycle dehydrogenases by Pi, partly explain the lack of increase in NADH observed in the simulations after a pulse of Pi
* The addition of cyanide shows a close agreement for changes in ΔΨm, i.e., 10 mV (from ∼180 mV to ∼170 mV) as compared with 5 mV (from 165 mV to 160 mV) observed in the experiments

### Validation tests
* respiratory (VO2) and ATP synthesis (VATPsynthase) fluxes to the driving forces (Δp, AF1, Ares)
* simulation of experimental profiles of ΔΨm and NADH during the transition between states 2/4 and 3, hypoxia (mimicked by CN− addition), and uncoupling by DNP
* simulation of the increase in VO2 and VATPsynthase upon addition of ADP, decrease under hypoxia and reversal of the ATP synthase during uncoupling
* reproduction of changes in ΔΨm after Pi addition during state 2/4 respiration
* interconversion between ΔpH and ΔΨm after addition of Pi

## Strengths and limitations of the mitochondrial model
* optimized the model parameters by adjusting the kinetic constants to reproduce experimental measurements of state variables:
    * TCA cycle intermediates
    * H+ concentration (pH_mito > pH_cyto)
    * Na+ concentration in the matrix (close to the extramitochondrial)
    * steady-state levels of ΔΨm and NADH in state 4
    * fluxes of uniporter (Vuni) and respiratory rates (VO2)

* Differences: fast relaxation of the state variables observed in the experiments. Some processes are omitted, such as transport of K+ and its associated effect on mitochondrial matrix volume, and the metabolism of ROS. These processes consume Δp and redox potential (e.g., through transhydrogenase activity), resulting in an increase in respiration and a faster NADH consumption rate.

## Comparison with previous models of mitochondrial energetics
* Beard also presented a detailed model that encompassed ion transport, including Pi, K+, and H+. But oxidative phosphorylation rate expressions assume **linear** flow-force, not S-shaped. And it does not account for Na+ or Ca2+ transport or its effects on energy metabolism.

* The model exhibits an exponential relationship between mitochondrial and extramitochondrial Ca2+ concentrations, and also accounts for H+ dynamics, the acid-base equilibria of metabolites, and the pH dependence of thermodynamic constants.

## Acid-base equilibria and binding polynomials

For both cytoplasmic and mitochondrial compartments.[^Wei2011]
$$
\begin{aligned}
P_{ATP} &= 1 + \frac{[H^+]}{K_{a}^{ATP}} + \frac{[Mg^{2+}]}{K_{Mg}^{ATP}}  \cr
P_{ADP} &= 1 + \frac{[H^+]}{K_{a}^{ADP}} + \frac{[Mg^{2+}]}{K_{Mg}^{ADP}}  \cr
P_{Pi} &= 1 + \frac{[H^+]}{K_{a}^{Pi}}      \cr
P_{SUC} &= 1 + \frac{[H^+]}{K_{a}^{SUC}}    \cr
P_{H_2O} &= 1 + \frac{[H^+]}{K_w}     \cr
 [OH^-] &= K_{A}^{H_2O} / [H^+]     \cr
[ATP^{4-}] &= \Sigma ATP / P_{ATP}   \cr
[ADP^{3-}] &= \Sigma ADP / P_{ADP}   \cr
[HPO_4^{2-}] &= \Sigma Pi / P_{Pi}   \cr
[HATP^{3-}] &= [ATP^{4-}] \frac{[H^+]}{K_{a}^{ATP}}  \cr
[HADP^{2-}] &= [ADP^{3-}] \frac{[H^+]}{K_{a}^{ADP}}  \cr
[H_2 PO_4^-] &= [HPO_4^{2-}] \frac{[H^+]}{K_{a}^{Pi}} \cr
[MgATP^{2-}] &= [ATP^{4-}] \frac{[Mg^{2+}]}{K_{Mg}^{ATP}}  \cr
[MgADP^-] &= [ADP^{3-}] \frac{[Mg^{2+}]}{K_{Mg}^{ADP}}  \cr
\end{aligned}
$$

| Parameter       | Value | Unit | Description                                  |
| --------------- | ----- | ---- | -------------------------------------------- |
| $\delta_H$      | 1E-5  | -    | mitochondria $[H^+]$ buffering capacity |
| $pK_{a}^{ATP}$  | 6.48  | -    | pK of ATP acid dissociation constant         |
| $pK_{a}^{ADP}$  | 6.38  | -    | pK of ADP acid dissociation constant         |
| $pK_{a}^{Pi}$   | 6.75  | -    | pKa of phosphate acid dissociation constant  |
| $pK_{Mg}^{ATP}$ | 4.19  | -    | pK of ATP magnesium dissociation constant    |
| $pK_{Mg}^{ADP}$ | 3.25  | -    | pK of ADP magnesium dissociation constant    |
| $pK_{a}^{SUC}$  | 5.2   | -    | pK of succinic acid dissociation constant    |
| $pKw$           | 14    |      | pK of water acid dissociation constant       |

### Citrate synthase (CS)

$$
\begin{aligned}
J_{CS} &= \frac{k_{cat} E_T AB}{(1+A)(1+B)}  \cr
A &= \ce{[AcCoA]} / K_m^{AcCoA} \cr
B &= \ce{[OAA]} / K_m^{OAA}
\end{aligned}
$$

| Parameter        | Value   | Unit | Description                         |
| :--------------- | ------- | ---- | ----------------------------------- |
| $k_{cat}$        | 0.23523 | Hz   | Catalytic constant                  |
| $E_T$            | 400     | μM   | Enzyme concentration of CS          |
| $K_m^{AcCoA}$    | 12.6    | μM   | Michaelis constant for AcCoA        |
| $K_m^{OAA}$      | 0.64    | μM   | Michaelis constant for OAA          |
| $\ce{[AcCoA]}$   | 1000    | μM   | Acetyl CoA concentration            |
| $k_{cat}$ (cell) | 0.15891 | Hz   | Catalytic constant (cellular model) |

### Aconitase (ACO)

$$
\begin{aligned}
J_{ACO} &= k_f ([CIT] - [ISOC] / K_{eq})  \cr
\ce{[CIT]} &= \Sigma_{CAC} - [ISOC] - [\alpha KG]-[SCoA] - [SUC] - [FUM] - [MAL] - [OAA]
\end{aligned}
$$

| Parameter      | Value    | Unit | Description                            |
| -------------- | -------- | ---- | -------------------------------------- |
| $k_f$          | 0.11688  | Hz   | Forward rate constant of ACO           |
| $K_{eq}$       | 2.22     | -    | Equilibrium constant of ACO            |
| $\Sigma_{CAC}$ | 1300     | μM   | Sum of TCA cycle intermediates         |
| $k_f$ (cell)   | 0.078959 | Hz   | Forward rate constant (cellular model) |

### Isocitrate dehydrogenase, NADH-producing (IDH3)

$$
\begin{aligned}
J_{IDH3} &= \frac{k_{cat} E_T AB}{f_H AB + f_i B + f_a A + f_a f_i} \cr
f_H & = 1 + \frac{[H^+]_m}{K_{H1}} + \frac{K_{H2}}{[H^+]_m}  \cr
A &= [NAD] / K_{NAD} \cr
B &= ([ISOC] / K_{ISOC})^n  \cr
f_a &= \frac{K_A}{K_A + [ADP]_m} \frac{K_{CA}}{K_{CA} + [Ca^{2+}]_m}  \cr
f_i &= 1 + \frac{[NADH]}{K_{NADH}}  \cr
\end{aligned}
$$

| Parameter        | Value | Unit | Description                       |
| ---------------- | ----- | ---- | --------------------------------- |
| $k_{cat}$        | 11.88 | kHz  | Rate constant of IDH3             |
| $E_T$            | 109   | μM   | Concentration of IDH3             |
| $K_{H1}$         | 1E-9  | M    | Ionization constant of IDH3       |
| $K_{H2}$         | 9E-7  | M    | Ionization constant of IDH3       |
| $K_{NAD}$        | 923   | μM   | Michaelis constant for NAD        |
| $K_{ISOC}$       | 1520  | μM   | Michaelis constant for isocitrate |
| $n$              | 2     | -    | Cooperativity for isocitrate      |
| $K_A$            | 620   | μM   | Activation constant by ADP        |
| $K_{CA}$         | 0.5   | μM   | Activation constant for calcium   |
| $K_{NADH}$       | 190   | μM   | Inhibition constant by NADH       |
| $k_{cat}$ (cell) | 535   | Hz   | Rate constant (cellular model)    |

### Alpha-ketoglutarate dehydrogenase (KGDH)

$$
\begin{aligned}
J_{KGDH} &= \frac{k_{cat} E_T AB}{f_H AB + f_a (A + B)} \cr
f_H & = 1 + \frac{[H^+]_m}{K_{H1}} + \frac{K_{H2}}{[H^+]_m}  \cr
A &= [NAD] / K_{NAD} \cr
B &= ([\alpha KG] / K_{AKG})^n  \cr
f_a &= \frac{K_{MG}}{K_{MG} + [Mg^{2+}]_m} \frac{K_{CA}}{K_{CA} + [Ca^{2+}]_m}  \cr
\end{aligned}
$$

| Parameter        | Value | Unit | Description                    |
| ---------------- | ----- | ---- | ------------------------------ |
| $k_{cat}$        | 13.2  | Hz   | Rate constant of KGDH          |
| $E_T$            | 500   | μM   | Concentration of KGDH          |
| $K_{H1}$         | 4E-8  | M    | Ionization constant of KGDH    |
| $K_{H2}$         | 7E-8  | M    | Ionization constant of KGDH    |
| $K_{NAD}$        | 38700 | μM   | Michaelis constant for NAD     |
| $K_{AKG}$        | 30000 | μM   | Michaelis constant for αKG     |
| $n$              | 1.2   | -    | Hill coefficient for αKG       |
| $K_{MG}$         | 30.8  | μM   | Activation constant for Mg     |
| $K_{CA}$         | 0.15  | μM   | Activation constant for Ca     |
| $k_{cat}$ (cell) | 17.9  | Hz   | Rate constant (cellular model) |

### Succinate-CoA ligase (SL)

$$
\begin{aligned}
J_{SL} &= k_f ([SCoA][ADP]_m[Pi]_m - [SUC][ATP]_m[CoA]/K_{eq}^{app}) \cr
K_{eq}^{app} &= K_{eq} \frac{P_{SUC}P_{ATP}}{P_{Pi}P_{ADP}}
\end{aligned}
$$

| Parameter    | Value  | Unit    | Description                            |
| ------------ | ------ | ------- | -------------------------------------- |
| $k_f$        | 0.028  | μM * Hz | Forward rate constant of SL            |
| $K_{eq}$     | 3.115  | -       | Equilibrium constant of SL             |
| [CoA]        | 20     | μM      | Coenzyme A concentration               |
| $k_f$ (cell) | 0.0284 | μM * Hz | Forward rate constant (cellular model) |

### Succinate dehydrogenase (SDH)

See electron transport chain.

### Fumarate hydratase (FH)

$$
J_{FH} = k_f ([FUM] - [MAL] / K_{eq})
$$

| Parameter    | Value | Unit | Description                            |
| ------------ | ----- | ---- | -------------------------------------- |
| $k_f$        | 8.3   | Hz   | Forward rate constant                  |
| $K_{eq}$     | 1.0   | -    | Equilibrium constant                   |
| $k_f$ (cell) | 8.4   | Hz   | Forward rate constant (cellular model) |

### Malate dehydrogenase (MDH)

$$
\begin{aligned}
J_{MDH} &= \frac{k_{cat} E_T AB f_a f_i}{(1+A)(1+B)}  \cr
A &= \frac{[MAL]}{K_{MAL}}\frac{K_{OAA}}{K_{OAA} + [OAA]}  \cr
B &= [NAD] / K_{NAD}  \cr
f_a &= k_{offset} + \left( 1 + \frac{[H^+]_m}{K_{H1}} (1 + \frac{[H^+]_m}{K_{H2}})    \right)^{-1}  \cr
f_i &= \left( 1 + \frac{K_{H3}}{[H^+]_m} (1 + \frac{K_{H4}}{[H^+]_m})    \right)^{2}  \cr
\end{aligned}
$$

| Parameter        | Value    | Units | Description                          |
| ---------------- | -------- | ----- | ------------------------------------ |
| $k_{cat}$        | 124.2    | Hz    | Rate constant                        |
| $E_T$            | 154      | μM    |                                      |
| $K_{H1}$         | 1.131E-8 | M     | Ionization constant                  |
| $K_{H2}$         | 2.67E-2  | M     | Ionization constant                  |
| $K_{H3}$         | 6.68E-12 | M     | Ionization constant                  |
| $K_{H4}$         | 5.62E-9  | M     | Ionization constant                  |
| $k_{offset}$     | 0.0399   |       | Offset of MDH pH activation factor   |
| $K_{NAD}$        | 224.4    | μM    | Michaelis constant for NAD           |
| $K_{MAL}$        | 1493     | μM    | Michaelis constant for malate        |
| $K_{OAA}$        | 31       | μM    | Inhibition constant for oxaloacetate |
| $k_{cat}$ (cell) | 125.9    | Hz    | Rate constant for cellular model     |

### Aspartate aminotransferase (AAT)

$$
J_{AAT} = k_f [OAA][GLU] \frac{k_{ASP}K_{eq}}{k_{ASP}K_{eq} + k_f[\alpha KG]}
$$

| Parameter    | Value  | Units | Description                            |
| ------------ | ------ | ----- | -------------------------------------- |
| $k_f$        | 21.4   | Hz    | Forward rate constant                  |
| $k_{ASP}$    | 0.0015 | Hz    | Rate constant of aspartate consumption |
| $K_{eq}$     | 6.6    |       | Equilibrium constant                   |
| [GLU]        | 30000  | μM    | Glutamate concentration                |
| $k_f$ (cell) | 21.7   | Hz    | Forward rate constant (cellular model) |

[^Wei2011]: Wei AC, Aon MA, O'Rourke B, Winslow RL, Cortassa S. Mitochondrial energetics, pH regulation, and ion dynamics: a computational-experimental approach. Biophys J. 2011;100(12):2894-903. [PMC3123977](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3123977/)

