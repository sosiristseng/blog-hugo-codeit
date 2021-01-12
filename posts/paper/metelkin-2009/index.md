# Metelkin 2009 | Modeling of ATP–ADP steady‐state exchange rate mediated by the adenine nucleotide translocase in isolated mitochondria


[Sciwheel](https://sciwheel.com/work/#/items/6151277).[^Metelkin2009]

<!--more-->

## Introduction of Adenine nucleotide translocase (ANT)
* Catalyzes the reversible exchange of ADP for ATP with a 1:1 stoichiometry across the inner mitochondrial membrane (IMM).
* Rate depends on mitochondrial membrane potential (ΔΨm) and ATP/ADP ratio of both sides
* A kinetic model of mitochondrial phosphorylation
    * the model of adenine nucleotide exchange across the mitochondrial membrane by Metelkin et AL.
    * the model of F0/F1‐ATPase developed previously by Demin et al.
    * simple steady‐state model of the phosphate carrier
    * validated using data obtained from intact isolated rat liver mitochondria
## Methods
* The rate of appearance of ATP in the medium following addition of ADP to energized mitochondria is calculated from the measured rate of change in free extramitochondrial magnesium

## Results
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/4644bcaf-f497-4ae5-8d02-f934ea864863/febs_7394_f1.gif)
* The synthesis of ATP occurs at a potential from −100 mV or higher. At membrane potential values from 0 mV to −100 mV, the rate of ATP production by mitochondria is close to zero.
* Within the physiological range, ATP production is controlled by ΔΨm
* Two paramaters, cSYN and cANT have been chosen in such a way as to provide minimal deviation between experimental data (circles)
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/33f0d52e-6065-4d6e-b18c-fd8059caf2cc/febs_7394_f2.gif)

## Nigericin decreases the ATP–ADP steady‐state exchange rate mediated by ANT
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/8f400376-4601-482f-9540-86f67d544dd2/febs_7394_f3.gif)
* Nigericin is an **ionophore** that mediates the electrically neutral exchange of **otassium ions for protons**, **eliminating the pH gradient** across the mitochondrial membrane and causing a **compensatory increase in ΔΨm**.
* decreased the ATP–ADP steady‐state exchange rate mediated by ANT significantly, even though it hyperpolarized mitochondria by 15 mV. Predicted by the model.
* decrease in Pi flux through the inner mitochondrial membrane, due to the collapse of ΔpH caused by nigericin, reducing ATP synthase activity, then ATP export

## matrix ATP and ADP values and the dependence of Pi on ΔpH
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/7ed29ea0-d24f-46e9-9b2f-7fbc3c6d813a/febs_7394_f4.gif)
* State3 (high ADPi, lower ΔΨ) -> state4 (low ADPi, higher ΔΨ)
* Measured matrix ATP and ADP concentrations from mitochondrial matrix extracts by HPLC
* At 0 mV, rat liver mitochondria: 3.64 ± 0.34 mm AMP, 8.23 ± 0.65 mm ADP, and 0.51 ± 0.05 mm ATP
* At -170 mV, rat liver mitochondria: 2.57 ± 0.67 mm AMP, 2.98 ± 0.41 mm ADP (predicted 2.2 mm), and 7.11 ± 1.55 mm ATP (predicted 9.8 mm)
* Other experiments report that a wide range of matrix ATP/ADP ratios during state 3, ranging from **0.01 to 4.5** or even in the **8–12** range. For mitochondria in situ or in vivo, most investigators agree with the **1–3** ratio range
* A great proportion of the matrix adenine nucleotides is **bound to proteins**. The relationship between the measured total ATP/ADP ratio and free intramitochondrial ATP/ADP ratio is difficult to predict.
* In the model, concentration of matrix Pi can be increased substantially, owing to an increase in ΔpH

## Predictions of the direct‐reverse profile of ADP–ATP exchange by ANT as a function of ΔΨm
* ANT reverses, bringing ATP into the matrix in exchange for ADP, driven by a ΔΨm less negative than approximately **−100 mV**
* The directionality of ANT is thermodynamically governed by the concentrations of free nucleotides (ATP4− and ADP3−) across the IMM. Free nucleotides:

![](https://wol-prod-cdn.literatumonline.com/cms/attachment/5fd916e2-fb40-4ade-b886-77377b2145a4/febs_7394_f5.gif)

## Kinetic behavior of the model resulting from consecutive addition of uncoupler and ADP
![](https://wol-prod-cdn.literatumonline.com/cms/attachment/c72d3c0c-9cd9-48fd-b8bc-6e02d313d023/febs_7394_f6.gif)

# Model descriptors

## Adenine nucleotide translocase (ANT)

$$
\begin{aligned}
V_{ANT} &= \frac{E_{ANT}}{\Delta}(k_2 \cdot q \cdot [ATP^{4-}]_m \cdot \phi_D - k_3 \cdot [ADP^{3-}]_m \cdot \phi_T)  \cr
\phi_D &= [ADP^{3-}]_i / K_D^{ADP}  \cr
\phi_T &= [ATP^{4-}]_i / K_D^{ATP}  \cr
q &= \frac{k_3K_D^{ADP}}{k_2K_D^{ATP}} \cdot V_N^{-1}(\Delta\Psi) \cr
K_D^{ADP} &= K_{D0}^{ADP} \cdot V_N^{-1}(3 \delta_D \Delta\Psi) \cr
K_D^{ATP} &= K_{D0}^{ATP} \cdot V_N^{-1}(4 \delta_T \Delta\Psi) \cr
k_2 &= k_2^0 \cdot V_N^{-1}((-3 \alpha_1 - 4 \alpha_2 + \alpha_3)\Delta\Psi)  \cr
k_3 &= k_3^0 \cdot V_N^{-1}((-4 \alpha_1 - 3 \alpha_2 + \alpha_3)\Delta\Psi)  \cr
\Delta &= (1 + \phi_D + \phi_T) ([ADP^{3-}]_m + q \cdot [ATP^{4-}]_m)
\end{aligned}
$$

## Complex V (ATP synthase)

$$
\begin{aligned}
V_{ATPase} &= V_{max}^{C5} \left( \frac{H_o}{K_{H_o}}E_{N}^{-1}(X\Delta\Psi) \right)^n \frac{N}{D} \cr
N &= \phi_{MgADP} \phi_{Pi} - \phi_{MgATP} K_{eq}^{\prime} \left( \frac{H_o}{H_i}E_{N}^{-1}(\Delta\Psi) \right)  \cr
D &= 1 + \phi_{MgADP} \phi_{Pi} \phi_{H_o} + \phi_{MgATP} \phi_{H_i}  \cr
K_{eq}^{\prime} &= \frac{K_{MgT}^{C5}K_{eq}^{C5}K_{Mg}^{ATP}}{K_{MgD}^{C5} K_{Pi}^{C5}K_{Mg}^{ADP}} \cdot \frac{10^{-4}}{10^{-4} + K_{a}^{Pi}}  \cr
\phi_{MgADP} &= [MgADP] / K_{MgD}^{C5}  \cr
\phi_{MgATP} &= [MgATP] / K_{MgT}^{C5}  \cr
\phi_{Pi} &= [Pi] / K_{Pi}^{C5}  \cr
\phi_{H_o} &= H_o / K_{H_o}^{C5}  \cr
\phi_{H_i} &= H_i / (K_{H_i}^{C5} E_{N}^{-1}((1-X)\Delta\Psi))  \cr
\end{aligned}
$$

## Parameters

| Symbol                  | Value                      | Units            | Description |
| ------                  | -----                      | -----            | ----------- |
|$F$                      | $96485$                    | $C/mol$          | Faraday constant|
|$T$                      | $310$                      | $K$              | Absolute temperature|
|$R$                      | $8.314$                    | $J/molK$         | Universal gas constant|
|$pH_o$                   | $7.25$                     |                  | pH in experimental volume|
|$pH_i$                   | $7.30$                     |                  | pH in matrix under phosphorylating conditions|
|$C_{mito}$               | $7.8 \cdot 10^{-6}$        | $F/mg$           | Capacitance of inner mitochondrial membrane|
|$\Sigma[Mg^{2+}]_o$      | $1$                        | $mM$             | Total magnesium concentration in experimental volume|
|$[Mg^{2+}]_i$            | $0.35$                     | $mM$             | Buffered magnesium concentration in the matrix|
|$\Sigma[Pi]_o$           | $10$                       | $mM$             | Total inorganic phosphate concentration in experimental volume|
|$V_o$                    | $2$                        | $mL$             | Experimental volume|
|$\Sigma[A]_i$            | $12$                       | $mM$             | Total concentration of adenylates (ATP + ADP) in the matrix (may vary considerably in the range 2.7–22 mM|
|$K_a^{Pi}$               | $6.13 \cdot 10^{-5}$       | $mM$             | Dissociation constant for H+ and phosphate (pKa = 7.2)|
|$K_{Mg}^{T}$             | $0.114$                    | $mM$             | Dissociation constant for magnesium and ATP|
|$K_{Mg}^{D}$             | $0.906$                    | $mM$             | Dissociation constant for magnesium and ADP|
|$K_{hyd}^{F1}$           | $2.23 \cdot 10^{8}$        | $mM$             | Equilibrium constant of ATP hydrolysis. ΔG0′ = −30.5 kJ/mol|
|$c^{F1}$                 | $22$                       |                  | Correction factor characterizing activity of ATP synthase in a particular mitochondrial preparation|
|$n^{F1}$                 | $3$                        |                  | H+/ATP ratio|
|$X^{F1}$                 | $0.9$                      |                  | Parameter of H+‐ATP synthase electrostatic profile|
|$X_n^{F1}$               | $1 - X^{F1}$               |                  | Parameter of H+‐ATP synthase electrostatic profile|
|$V_{max}^{F1}$           | $1.2 \cdot 10^{-4}$        | $nmol/(min·mg)$  | Maximal reaction rate of F1Fo ATPase|
|$K_{Ho}^{F1}$            | $3 \cdot 10^{-5}$          | $mM$             | Dissociation constant for extramitochondrial proton of  F1Fo ATPase|
|$K_{Hi}^{F1}$            | $1 \cdot 10^{-6}$          | $mM$             | Dissociation constant for matrix proton of  F1Fo ATPase|
|$K_{MgD}^{F1}$           | $5.56 \cdot 10^{-3}$       | $mM$             | Dissociation constant for MgADP of F1Fo ATPase|
|$K_{MgT}^{F1}$           | $0.926$                    | $mM$             | Dissociation constant for MgATP of F1Fo ATPase|
|$K_{Pi}^{F1}$            | $0.355$                    | $mM$             | Dissociation constant for phosphate of F1Fo ATPase|
|$c_{ANT}$                | $48$                       | $mmol/mg$        | Effective coefficient (characterizes the amount of ANT dimer per mg of total mitochondrial protein)|
|$k_2^{ANT,0}$            | $0.18$                     | $Hz$             | Constant of direct ANT exchange|
|$K_{To}^{ANT,0}$         | $0.057$                    | $mM$             | Constant of reverse ANT exchange|
|$K_{Do}^{ANT,0}$         | $0.051$                    | $mM$             | Constant of reverse ANT exchange|
|$\alpha_1$               | $0.268$                    |                  | Parameters of ANT electrostatic profile|
|$\alpha_2$               | $-0.205$                   |                  | Parameters of ANT electrostatic profile|
|$\alpha_3$               | $0.187$                    |                  | Parameters of ANT electrostatic profile|
|$\delta_T$               | $0.07$                     |                  | Parameters of ANT electrostatic profile|
|$\delta_D$               | $0.005$                    |                  | Parameters of ANT electrostatic profile|
|$k_{O_2}$                | $0.005$                    |                  | The empirical coefficients of membrane potential generation|
|$K_{O_2}$                | $1.45 \cdot 10^{-12}$      |                  | |
|$\beta_{O_2}$            | $0.36$                     |                  | |
|$k_{leak}$               | $0.438$                    | $nmol/ (min·mg)$ | The empirical coefficients of membrane leakage description |
|$\beta_{leak}$           | $1.05$                     |                  | The empirical coefficients of membrane leakage description |

[^Metelkin2009]: Metelkin E, Demin O, Kovács Z, Chinopoulos C. Modeling of ATP-ADP steady-state exchange rate mediated by the adenine nucleotide translocase in isolated mitochondria. FEBS J. 2009;276(23):6942-6955. doi:10.1111/j.1742-4658.2009.07394.x. https://febs.onlinelibrary.wiley.com/doi/full/10.1111/j.1742-4658.2009.07394.x

