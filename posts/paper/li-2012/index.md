# Li 2012 | Mechanisms by which Cytoplasmic Calcium Wave Propagation and Alternans Are Generated in Cardiac Atrial Myocytes Lacking T-Tubules—Insights from a Simulation Study


[Sciwheel](https://sciwheel.com/work/#/items/6252573).[^Li2012]

<!--more-->

## Introduction
* the mechanisms underlying Ca2+ wave propagation and [Ca2+]i alternans in cardiac myocytes lacking t-tubules (atrial cells in small mammals) are still unclear
* Here: biophysically detailed computer model for Ca2+ release and Ca2+ wave propagation in cardiac myocytes lacking t-tubules

## Methods
### Mathematical model of Ca2+ wave propagation in atrial myocytes
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/0f01ab35-e172-412f-81b2-b8cf56e530d4/gr1_lrg.jpg)
* Adapted from Tao et al. equations to simulate Ca2+-wave propagation in atrial myocytes that lack t-tubules
* A cell divided into 13 elements with a spatial resolution of 2 μm
### Stimulation protocol and simulated intracellular Ca2+-wave propagation
* on each voltage-clamp pulse, Ca2+ influx via VOCCs triggered CICR at the peripheral units, resulting in large [Ca2+]i transients in these regions
* localized [Ca2+]i transients diffused inward toward the central region, provoking successive CICR that led to Ca2+-wave propagation.
* Ca2+ wave did not fully propagate to the center. the [Ca2+]i transients (Fig. 1 B ii) and the SR Ca2+ release (Fig. 1 B iii) were large in the periphery of the cell but small in the central region
* These simulation results matched experimental observations in rat (15,19), guinea-pig (20), and cat (4) atrial myocytes that lack t-tubules.
### Model validation
* sustaining the intracellular Ca2+ waves through increasing Ca2+ influx by elevating the extracellular Ca2+ concentration
* increasing the RyR sensitivity by decreasing the threshold of RyR for CICR
* elevating the SR content by pausing pacing for 10 s while increasing SERCA Ca2+ uptake (Pup increased by 75%) to allow SR Ca2+ content accumulation
* increases in the Ca2+ influx, the RyR sensitivity, or the SR content helped to sustain full Ca2+-wave propagation from the periphery to the center of the cell, producing a more homogeneous [Ca2+]i, similar to experimental results.

## Results
### Effect of increasing Ca2+ influx
* An increase in Ca2+ influx via elevating [Ca2+]o has been shown to help facilitate full Ca2+-wave propagation toward the center region and to reduce the [Ca2+]i spatial heterogeneity in atrial cells
* Also in increasing the maximum channel conductance of the VOCCs (gCaL)

![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/9b28fb99-b3dd-4e46-8b56-e08a999b8c74/gr2_lrg.jpg)

* There is a time delay in the [Ca2+]i and [Ca2+]SR transients between the peripheral and central regions => propagation rather than synchronized

### Effect of increasing RyR sensitivity
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/881d3ced-c3ad-4c4c-bb16-46e782facd32/gr3_lrg.jpg)

* reducing the threshold of RyR for CICR (Krel)
* When Krel was reduced by 10%, a complete Ca2+ wave spreading toward the interior region of the cell was established temporarily. But amplitude is smaller.
* Due to the reduced SR content, propagation of the Ca2+ wave toward the center of the cell was unstable, leading to alternans

### Effect of increased SR content
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/d91594c6-4266-459f-8322-8ab4f477e069/gr4_lrg.jpg)
* increased SR Ca2+ content (Fig. 4Bi, lower), leading to a period of complete Ca2+ wave propagation into the center of the cell; then Ca alternans
* enhancing the SR Ca2+ uptake (ii):  hindered the inward Ca2+ wave propagation at first. Then a stable complete Ca2+ wave was observed (Fig. 4 A ii) when the SR Ca2+ content was significantly elevated in both central and peripheral regions
*

### Effect of partial inhibition of SERCA pump
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/0d66ad59-38bd-4960-b05d-7479e117dfe8/gr5_lrg.jpg)
* SERCA pump rate (Pup) was decreased by 10%: alternans
* increasing the threshold of SERCA Ca2+ uptake (Kup) by 20% + SERCA pump rate (Pup) was increased by 50% : enhanced Ca2+-wave propagation; the amplitude of [Ca2+]i transients was greatly enhanced in the interior region of the cell

## Exploring the mechanisms for Ca2+ alternans

### Ca2+ diffusion
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/c3f07a1b-6da9-4dfb-b44c-10f1c077ecbe/gr6_lrg.jpg)
* increase of the time constant of the Ca2+ diffusion (τ) => [Ca2+]i alternans (bifurcation)
* complicated pattern of alternans are possible
* cancelling Ca diffusion (rapid equilibrium) eliminates Ca alternans
* Ca diffusion dramatically increased the steepness of dependence on SR Ca content
* Increasing Kup shifted the dependence curve leftward (smaller SR Ca2+ content region)
### Ca2+ influx & RyR sensitivity  & the SERCA pump
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/f002688f-cc5a-4561-addb-28f8db70f78e/gr7_lrg.jpg)
* When gCaL was increased over the range 100%–500% of its control value, a cascade of bifurcations occurred
* More dramatic in the central region than in the peripheral region
* With decreasing Krel, a cascade of bifurcations occurred, leading to [Ca2+]i alternans with various patterns
* When Kup was increased from 100% to 140% of its control value, a cascade of bifurcations was triggered, decreased SR uptake due to increased Kup resulted in a low level of SR Ca2+ content and, consequently, reduced [Ca2+]i transient amplitude
### Spontaneous Ca2+ release
![](https://els-jbs-prod-cdn.literatumonline.com/cms/attachment/adc096db-9c2f-47a5-ab56-999b0ac122b5/gr8_lrg.jpg)
* Overloading the SR Ca2+ content may produce spontaneous Ca2+ release from the SR
* Increased Ca2+ influx (gCaL increased to 370%) and SERCA pump activity (Pup increased to 150%) => irregular pattern of [Ca2+]i transients

## Discussion
### Findings
* Model validated by its ability to reproduce typical Ca2+-wave propagation patterns of atrial myocytes without t-tubules
* reproduce experimentally observed effects of modulations of various aspects of Ca2+ cycling, such as Ca2+ influx, SERCA pumps (SR Ca2+ uptake), and RyRs (SR Ca2+ release), on spatial distribution of Ca2+ transients
* steep relationship between the SR Ca2+ content and the cytoplasmic Ca2+ concentration due to Ca transient propagation, more prone to Ca alternans
* theoretical exploration of possible associations between the occurrence of Ca2+ alternans and parameters related to calcium handling
* Spontaneous Ca2+ release observed

### Mechanisms of incomplete Ca2+-wave propagation in cardiac cells without t-tubules
### Mechanisms of Ca2+ alternans in cardiac cells devoid of t-tubules


## References
[^Li2012]: Li Q, O'Neill SC, Tao T, Li Y, Eisner D, Zhang H. Mechanisms by which cytoplasmic calcium wave propagation and alternans are generated in cardiac atrial myocytes lacking T-tubules-insights from a simulation study. Biophys J. 2012;102(7):1471-82. [PMC3318133](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3318133/)

