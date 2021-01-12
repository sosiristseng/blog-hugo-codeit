# Gauthier 2013 | An integrated mitochondrial ROS production and scavenging model: implications for heart failure


From the series of articles:

* Gauthier2013A: [Sciwheel](https://sciwheel.com/work/#/items/2897916). [Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3882515/)
* Gauthier2013: [Sciwheel](https://sciwheel.com/work/#/items/1239950). [Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3752118/)
* Kembro2013: [Sciwheel](https://sciwheel.com/work/#/items/1269530). [Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3552263/)

<!--more-->


## Introduction

* heart failure (HF): increased mitochondrial reactive oxygen species (ROS) production (4) and decreased antioxidant capacity
* regulation of ATP is carried out by ADP and Ca2+ signals
* Cytosolic Na+ levels have been shown to be elevated in HF (9–11), and contribute to mitochondrial ROS production (less Ca_mt => less NADH and NADPH => more ROS)

## Methods

### Model description
* ETC-ROS model`[Gauthier2013]`
    * scaling ROS production according to Aon et al.
    * slight changes to complex I for the cellular model
* ME-R model`[Kembro2013]` for ROS scavenging

![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/cbc59fc9-8805-40b3-a11d-5f86c7b0c11c/gr1.jpg)

### Computational methods
* 37 nonlinear ordinary differential equations, MATLAB, CVODE

### Model integration
* add explicit dependence on succinate and malate and inhibition by oxaloacetate to the equation for succinate dehydrogenase
* state 4 respiration (energized with substrates, but in the absence of ADP) vs state 3 respiration (energized with substrates in the presence of ADP)
![tbl1](https://user-images.githubusercontent.com/40054455/86617944-a0d83d80-bfea-11ea-9687-d563e2f4e650.png)

### Parameter fitting for mitochondrial model in the myocyte
To reproduce kinetic data on ROS emission from isolated myocytes, some parameters were refit
* **NADP+ (IDH2)** was refit using in vitro parameters from Popova et al. 2007
* The **random bi-bi** enzyme kinetics model describing the activity of the **THD** based on the randomly ordered binding of two substrates and the randomly ordered unbinding of two products presented in Kembro et al. was modified to satisfy the thermodynamic constraint from Sazanov and Jackson
* Kinetic parameters for **glutathione peroxidase (GPX)** were refit to improve GSH sensitivity as compared to GSH-dependence data from Aon et al. 2010
* Michaelis-Menten constant of **glutathione reductase (GR)** for NADPH was increased to improve sensitivity over the range of observed NADPH values in the model

### Stimulus protocols
* [Ca2+]i transients were simulated as rectangular pulses of Ca2+ diastolic level of 0.1–1 μM with a width of 200 ms
* Cytosolic ADP was increased from a basal level of 0.1–1.0 mM with a time constant of 2 min to simulate the energy consumption by the contractile machinery in the cytosol
* For the myocyte model simulations, pH and mitochondrial phosphate were held constant.
    * PiC and NHE do not go well with whole cell model
    * Matrix phosphate not buffered
    * Other pathways of proton leak

## Results

### Altered Ca2+ regulation by Ru360 increases ROS
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/f42d89c5-8158-479c-b4a2-16145d2ecf69/gr2.jpg)
* if mitochondrial Ca2+ regulation is altered by a decrease in mCU flux, mitochondrial Ca2+ uptake is then severely compromised, as shown in the model (Fig. 2 C, black) and in experiment
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/5db5535a-fc57-46ee-b7e7-c715e3708df6/gr3.jpg)
* NADH becomes oxidized, decreasing NADPH levels, GSH becomes more oxidized; TrxR and Trx are similar.
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/59adfca9-8146-42d9-b0d9-51c00256c196/gr4.jpg)
* Elevated [Na+]i increases ROS levels
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/58129af0-6ab2-40f0-96d2-897fd34c6de6/gr5.jpg)
* Elevated [Na+]i limits mitochondrial Ca2+ uptake and depletes scavengers
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/fce4dd67-21dd-465b-883b-9b1a2a1b1cd0/gr6.jpg)
* Block of mNCE with CGP reduces ROS overflow in high [Na+]i conditions.
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/db7b86a6-ede2-477b-8580-fb265004fcca/gr7.jpg)

### Increased GSH pool reduces ROS overflow
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/9413c59c-9690-44ad-945c-270e8b612f67/gr8.jpg)
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/a88cb93a-56a5-4382-93d9-9ad8494cd239/gr9.jpg)

## Discussion
### Model predictions

* NADH levels drop for the mCU inhibition and elevated [Na+]i protocols, NADPH becomes more oxidized than NADH and the GSH and Trx scavenging systems become compromised.  (PMF)-dependence and reversibility of the THD are key to this behavior
* αKGDH plays a larger part in NADH control than IDH
* The absolute concentrations of GSSG and GSH are more important in analyzing the enzyme kinetics of the scavenging reactions. the amount of increase in H2O2 after onset of pacing is very sensitive to the total amount of GSH and GSSG available for pools near 1 mM
* Deficiencies in either pathway ( Trx and GSH ) can be partially compensated by the other, but both depend on NADPH supply.
* ETrx remains more negative than EGSH, reflecting a greater reducing potential for Trx compared to GSH

### Cellular control of ROS production
* separating the role of ROS production from the role of ROS scavenging presents a challenge.
* ROS production for the 90% mCU inhibition and elevated [Na+]i protocols will decrease after the workload transition, due to NADH oxidation and ΔΨ depolarization that occur during ADP addition.
* Older model: ROS from unstable semiquinone (SQ) on the cytosolic-side quinone binding site of complex III
  Alternatively: O2 gain reduced from transient SQ,  from reduced heme bL (more consistent with experiment, that SQ is rare)
* corrects the legacy value of 10 mM total NAD+/NADH pool from Magnus and Keizer to the 1 mM value used in Wei et al.
    * better control of NAD+- and NADH-dependent TCA cycle enzymes
    * good agreement with the ≈0.82 mM NAD pool measured
* the ROS production model used here still requires a highly reduced Q pool. Not consistent with measurements (bell-shaped dependence)

### Previous modeling and critique of the model
* builds on the well-validated scavenging network of Kembro et al. (17), but with dynamic ROS production adapted from Gauthier et al
* Achieving quantitative agreement between the model and the experimental data is hindered by the inability to calibrate experimental fluorescence signals representing some signaling components and the inability to measure other components at all
    * Q pool redox state is difficult to monitor continuously
    * The ROS production component of the cellular model is difficult to validate experimentally
    * Much remains unknown about the mitochondrial environment within the cel
* Changes in ATP, Pi, pH, and the pmf will affect the other ionic species of the mitochondria (Ca2+, Na+, H+) via the mitochondrial ion circuits
    * PiC, mNCE, and mNHE
    * The model break in the cellular model @ high pacing freqs, clamped in thses simulations
* Other processes are still unaccounted
    * β-adrenergic activation and mitochondrial isoform of PKA (cAMP-dependent) regulation of C1 and C4
    * redox modulation of transporters
    * exponential dependence of IMM conductance
    * mitochondrial volume dynamics and potassium dynamics
* These simulations do not represent a comprehensive analysis of all the processes involved in HF.

## A computational model of reactive oxygen species and redox balance in cardiac mitochondria
Gauthier, 2013

### redox-optimized ROS balance (R-ORB) hypothesis
* ROS levels are minimized in an intermediate cellular redox environment,
* Energy output is maximal
* Substrate -> NADH -> NADPH -> GSH -> Trx
* Too reduced: high level of reduction of the ETC complexes => increases ROS emission
* Too oxidized: decrease in NADPH and ROS scavenging capacity => increases ROS emission

### ROS from complex I
* FMN cluster in the hydrophilic arm
* Q-site at the interface of the protein’s matrix and membrane domains

### ROS from complex III
* ROS release to both sides of the IMM
* High ROS production from complex III occurs during forward electron transport (FET).

## Methods
### Model description
* complexes II–IV were modified from Demin et al.
* A thermodynamic model of complex I was constructed (see Fig. 1 B) based on the whole ETC model of Magnus and Keizer; rate constants were parameterized to match respiration and ROS production data from Aon et al.
* 23 parameters were obtained from experimental results or previous models and 39 parameters were adjusted based on experimental data
![fig1](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/390298e2-c6ff-4c85-9587-fdf258561912/gr1.jpg)

### Model reconstructions
![fig2](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/b94fca81-e9eb-47e9-a1db-1743aed57f71/gr2.jpg)
* The ETC model presented here includes variables describing the concentrations of ubiquinone, ubiquinol, and ubisemiquinone, along with the oxidation states of cytochrome c and the redox centers in complex III
    * high- and low-potential b-hemes (bH and bL) & cytochrome c1
* the reduction in the ubiquinone redox potential that occurs at higher ΔΨm as the concentration of ubiquinone (Q) falls and ubiquinol (QH2) increases
* rat heart maintains a lower NAD+/NADH ratio from 1 to 16 (38,39), liver attains ratios from 30 to 100
* typical ΔΨm-dependent reduction of the b-hemes, the increased reduction of bL plays a critical role in the mechanism of complex III ROS production in the model.
* ΔΨm dependence of the redox states of cytochromes c1 and c: oxidation of cytochrome c1 and c increases with ΔΨ over the range 150–180 mV. [ATP]/[ADP]-ratio-induced inhibition of complex IV?

### Control of ROS production
![fig3](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/3f77b4c7-fd87-42c9-8833-d15d69e4aa04/gr3.jpg)
* When complex I rates are fitted to guinea pig cardiac mitochondrial data from Aon et al
* ROS production in complex III exhibits higher rates for state 4 than for state 3
* For the RET conditions in state 4 in the presence of succinate, 72% of ROS production is derived from complex I
* mitochondrial succinate levels have been measured at 0.3 mM (45), much lower than the 4–10 mM used to induce RET (9,15,22) in isolated mitochondria, and that complex I substrates are always present in cells, it is unlikely that physiological conditions favor RET in vivo under nonischemic conditions

## Model predictions
### Control of ROS production
![fig4](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/bf0c4e43-1dca-4748-82bf-f0a01ca72f3e/gr4.jpg)
* ROS production has been shown to be highly dependent on ΔΨm, in state 4, succcinate oxidation.
* Reduction of cyt b-hemes as ΔΨm increases.
* Decreasing ΔΨm using an uncoupler would also be expected to oxidize the overly-reduced NAD+/NADH couple, the decrease in ROS shown in Fig. 4 is consistent with the R-ORB hypothesis

![fig5](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/9c031388-59ba-466c-a626-7fb4983b25ec/gr5.jpg)
* ROS production from complexes I and III during FET increases with matrix alkalinization
* RET-derived ROS production from complex I also exhibits matrix pH dependence
* Under state 3 respiration, in the presence of succinate, an increase in matrix pH will elevate complex-I-derived ROS
#### Control of ROS production by respiratory blockers
![fig6](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/2c89a5dc-70d1-4a69-904a-70bd2b9874a2/gr6.jpg)

#### Interplay of ROS production and scavenging systems
![fig7](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/169d45c6-4f1d-4ea5-a240-eee5a35cc3d1/gr7.jpg)
* U-shaped dependence of ROS levels on redox environment follows closely that proposed in the R-ORB hypothesis
* Model ΔΨm at this redox optimum is 152 mV, similar to the nearly minimal ROS production at 153 mV observed by Korshunov

## Discussion
* This model is shown to reproduce
    1. experimental data measuring the ΔΨ dependence of the redox potential of the Q pool and the oxidation states of the b-hemes and cytochromes c1 and c
    2. experimental results describing the dependence of the respiratory flux from complex I or complex II substrates on ΔΨm
    3. measurements of ROS production as a function of substrate concentration and ΔΨm
* This model predits dependence of ROS production on ΔΨ, matrix pH, NAD+/NADH redox potential, and inhibition of complexes I and III

* Detailed description of redox-dependent electron transport processes in the model
* Although the model of complex I does not include explicit electron transfer reactions like the complex III model, each state transition does have a mechanistic basis.

* The explicit inclusion of reactions requiring **protons** leads to some interesting predictions regarding the **pH dependence** of ROS production.
* The complex I model was constrained using the data from Aon et al. some difference of ROS producing rate from others's experiments.

### Validation of the redox-optimized ROS balance hypothesis
* The presence of a minimum in H2O2 emission at an intermediate redox environment and the 1:4 ratio of H2O2 emission for the maximally reduced environment in this protocol compared to the most oxidized environment is in good agreement with the experimental data of Aon et al.
* ΔΨm between 150 and 155 mV, similar to state 3 ΔΨm values for isolated mitochondria (9) and to the ΔΨm value shown by Korshunov et al. However, this ΔΨm range is higher than the typical mitochondrial operating conditions in vivo, which are closer to 100–130 mV.
* R-ORB hypothesis, shows the importance of the interplay between ROS production and scavenging

### Mechanism of ROS production from complex I
* Complex I ROS production was modeled as originating from a redox center in the hydrophilic arm of the protein,  generalized implementation of the hypothesis. => FMN site (IF)
* In the absence of ubiquinone or ubiquinol, the model predicts a dependence of ROS production on NADH redox potential.
* the midpoint potential of this NADH dependence closely matches the two-electron reduction potential of the complex I FMN
* complex I’s quinone-binding site (IQ) ?
    * The model described here was modified to test this Q-linked ROS production hypothesis by removing the superoxide-generating reaction connecting states 4 and 2 of the complex I model (see Fig. 1 B) and replacing it with a reaction connecting state 7 (reduced enzyme bound to Q) to state 2
    * the ability of the Q-linked ROS production model to reproduce the data were very similar
    * this modeling experiment was unable to distinguish between the two mechanisms.

### Mechanism of ROS production from complex III
* reduction of oxygen by the cytosol-side semiquinone radical from a highly reduced ubiquinone pool and high proton motive force

#### Alternative proposals: Little semiquinone, reduced bL to transfer electrons to O2 instead
* Dröse and Brandt: Bell shaped dependence (max Vsox for Q pool is 25% oxidized). Reduced heme bL to oxidized ubiquinol to form a **transient semiquinone**, which reduces oxygen to form superoxide
* Borek et al: ROS production without a significant accumulation of semiquinone at the Qo site
* may lead to different ΔΨ dependence of the electron carrier redox states
* **subject to further refinements**

## Critique of the model
* The model presented here only accounts for superoxide release from the **Qo site**
    * semiquinone at Qi is considered thermodynamically stable
    * the concentration of semiquinone at Qi does increase with membrane potential as well as matrix alkalinization

* The **complex IV** model included here is a relatively simplistic description of an enzyme with a wide variety of properties
    * allosteric ATP inhibition
    * variable Km for O2
    * intrinsic uncoupling at high ΔΨm
* disparity in cytochrome c oxidation due to complex IV issues

## Integrating mitochondrial energetics, redox and ROS metabolic networks: a two-compartment model

### Introduction
Kembro et al.
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/9ba23353-03e5-4e5e-96be-a6102de88bda/gr1_lrg.jpg)
* mitochondrial energetic-redox (ME-R) model
    * four main redox couples (NADH/NAD+, NADPH/NADP+, GSH/GSSG, Trx(SH)2/TrxSS).
        * 2 of 3 mitochondria-dependent NADPH-producing mechanisms
    * Scavenging systems—glutathione, thioredoxin, superoxide dismutase, catalase
    * Both mitochondrial matrix and extra-matrix compartments
    * Transport between compartments of ROS species (SOX and H2O2) as well as GSH
* The model is able to simulate:
    * shape and order of magnitude of H2O2 emission and dose-response kinetics with inhibitors of the GSH or Trx scavenging systems
    * steady and transient behavior of ΔΨm and NADH
* The mode stems from previous models[^Wei2011][^Cortassa2004]

### Kinetic modeling of the antioxidant defenses
Model parameters: https://www.cell.com/biophysj/fulltext/S0006-3495(12)05055-2

### Thioredoxin system
* Thioredoxin reductase (TrxR1 extra-matrix, and TrxR2 mitochondrial): bisubstrate MM (similiar to glutathione reductase)
* Peroxiredoxin (Prx): Dalziel kinetics

### Glutathion system
* glutathione peroxidase (GPx) and glutathione reductase (GR): ditto

### NADPH-generating systems
* NADP-dependent IDH2:  eversible reaction ruled by Michaelis-Menten kinetics with two-substrates according to the mechanism proposed by O’Leary and Limburg
* proton-coupled THD: The THD activity was modeled according to the mechanism proposed by Hoek and Rydstrom[^Hoek1988] and Sasanov and Jackson[^Sazanov1994]

### Exp methods
* guinea pig heart mitochondria

### Assay of mitochondrial respiration
* mitochondrial respiration: Seahorse[^Aon2012]
* bioenergetic variables and ROS detection: wavelength scanning fluorometer (Quantamaster)
    * NAD(P)H: 340nm -> 450nm
    * ΔΨm: TMRM; 100 nM
    * H2O2: Amplex Red
### Results
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/b901cb60-0f2a-4d78-b936-51167ddff343/gr2_lrg.jpg "Energetic-redox transitions: time-dependent and steady-state behavior")
* EXP: NADH and ΔΨm attain maximal values of 100% reduction and ∼170 mV, respectively.
* Model: 96% NADH and ΔΨm ∼193 mV

#### Experimental and modeling results of respiration, maximal H2O2 emission (after inhibition of GSH/Trx systems), ΔΨm and NADH in isolated heart mitochondria from guinea pig
Table2: https://www.cell.com/action/showFullTableHTML?isHtml=true&tableId=tbl2&pii=S0006-3495%2812%2905055-2

![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/c809da7c-0b14-4d6e-9daa-98349f64f9ff/gr3_lrg.jpg "Dynamic response")
* EXP: As a caveat, the range of ΔΨm monitored by TMRM extends from 130–140 mV to ∼220 mV
* Model: Following ADP addition, ΔΨm depolarizes 20 mV (from 170 to 150 mV) and NADH oxidizes, able to reproduce the overall dynamic profile of NADH and ΔΨm observed experimentally

![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/eb8ca115-94ae-4fe3-9e03-d03d300a013f/gr4_lrg.jpg "Dynamic response to ADP pulses")

![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/48343c2a-f552-4b57-bcf4-1754a5c8bf3e/gr5_lrg.jpg "Uncoupler-elicited transitions")
Increase vO2, decrease in ΔΨm and NADH

### ROS and antioxidant systems
GSH/Trx systems continuously scavenge ROS produced in the respiratory chain, thereby **decreasing the rate of H2O2 emission** typically observed in isolated mitochondrial studies under conditions of forward electron transport (FET).

![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/63fbdf7e-ac33-4c2b-bd85-2944cabc45aa/gr6_lrg.jpg "Dose-response relationships")
Selective inhibition of TrxR with auranofin (AF) (42), or depletion of GSH with 2,4 dinitrochlorobenzene (DNCB)

### Steady-state behavior of the redox environment
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/2024911106/2044622329/si1.gif)
* NADH/NAD+, NADPH/NADP+, GSH/GSSG, and Trx(SH)2/ TrxSS
* relationships between redox couples and substrates:
    ![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/66e9d687-55eb-4ce7-9f58-df844269069b/gr7_lrg.jpg)
* In our model, the total GSH concentration has been adjusted to the mM range (1–3 mM) in the matrix. NADH/NAD+ is mainly to fuel energy provision through the respiratory chain, whereas NADPH/NADP+ contributes electrons to the antioxidant system, however, αKG/ISOC ratio linked to NADPH via IDH2, and THD.

## Discussion
* a two-compartment computational model of energetic-redox-ROS metabolism, combined with experimental validation.

### Able to:
1. steady-state behavior of ΔΨm and NADH during transitions from deenergized to energized states elicited by gradual **G/M** addition
2. The transient ΔΨm and NADH dynamics accompanying the state 4 to 3 transition in mitochondrial respiration by single and mutiple **ADP** addition
3. The response of mitochondrial respiration and energetic-redox variables (ΔΨm, NADH) upon titration with an **uncoupler**
4. The overall kinetics of H2O2 emission rates after titration experiments performed in mitochondrial suspensions with inhibitors of the GSH/Trx scavenging systems
5. The model is able to simulate oscillatory dynamics (RIRR) in agreement with the mechanism described previously
6. Duplication of antioxidant defense systems in multiple compartments can be viewed as an efficient salvage mechanism in response to oxidative bursts

### Compartmentation, dynamics, and interdependence of redox metabolism
Redox couples are interdependent systems
* NADH <-> NADPH -> GSH -> Trx
* GSH and Trx scavenging systems exhibit a well-orchestrated interaction, functionally relieving each other when the antioxidant capacity of either is overwhelmed
* SOX generation at electron carriers will be kinetically controlled, most SOX production takes place in the mitochondrial electron transfer chain and is restricted to the complexes that handle the most reduced thermodynamic potentials (complex I and III)
* The present ME-R model with antioxidant arrays in both compartments renders O2⋅− and H2O2 levels in the pM to nM range
* In different cellular compartments, different redox states are present. The bulk of NADP is present as NADPH in liver mitochondria.

* Prev EXP: partial GSH depletion triggers cell-wide mitochondrial oscillations in intact cardiomyocytes.

### The redox environment and energy metabolism
Redox-optimized ROS Balance model: under high energy demand, and despite large respiratory rates, ROS emission levels are kept to a minimum by ROS scavenging systems.
* extends the role of **NADH** beyond its well-known function as an intermediary between substrate catabolism and ΔΨm.

### Previous modeling and model limitations
* SOX generation = a fraction of vO2 (shunt) => unable to simulate the increase in ROS levels when mitochondria evolve into state 4 respiration (high pmf)
* K+ movements are not taken into account
* a linear instead of an exponential dependence of the leak current on ΔΨm
* experimental system corresponds to the average behavior of a heterogeneous mitochondrial population
* does not consider NADH transfer from the cytoplasm into mitochondria or the flow of NADPH from mitochondria (no shuttle for these)
* deterministic model: simple, law of big numbers prevails over stochastic fluctuations

