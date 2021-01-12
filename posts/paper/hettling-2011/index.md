# Hettling 2011 | Analyzing the functional properties of the creatine kinase system with multiscale sloppy modeling


[Sciwheel](https://sciwheel.com/work/#/items/3678110)[^Hettling2011]

<!--more-->

## Short Summary
* In this model only 15±8% (mean±SD) of transcytosolic energy transport is carried by PCr, contradicting the PCr shuttle hypothesis
* temporal buffering capabilities of the CK isoforms protecting against high peaks of ATP hydrolysis
* CK inhibition by 98% in silico leads to an increase in amplitude of mitochondrial ATP synthesis pulsation from 215±23 to 566±31 µM*s−1, while amplitudes of oscillations in cytosolic ADP concentration double from 77±11 to 146±1 µM
* CK acts as a large bandwidth high-capacity temporal energy buffer maintaining cellular ATP homeostasis and reducing oscillations in mitochondrial metabolism
## Introduction
* CK reaction: ![](https://journals.plos.org/ploscompbiol/article/file?type=thumbnail&id=info:doi/10.1371/journal.pcbi.1002130.e001)
* Transfer of HEP(high-energy phosphate) was argued to be accomplished either by direct diffusion of ATP through the mitochondrial outer membrane (MOM) and cytosol or indirectly via the ‘phosphocreatine shuttle’
* Other functionms of CK system: temporal energy buffering & regulation of oxidative phosphorylation (OXPHOS)

## Model
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002130.g001)
* synthesis of ATP from ADP by oxidative phosphorylation in the mitochondria and ATP consumption in the cytosol, the reversible transfer of phosphate groups from ATP to creatine by CK enzyme reactions and metabolite diffusion between IMS and cytosol through the MOM
* Free parameters for enzyme kinetics and membrane permeability, which had been determined experimentally and were collected from the scientific literature.
* Some parameters are fo high uncertainty
* A Bayesian ensemble of distinct parameter sets which agree with experimental data, can be sampled with Markov-Chain Monte Carlo (MCMC) methods
* The response time of oxygen uptake at the level of the mitochondria could be calculated from the whole heart level uptake

## Methods
### Computational model
* previously published computational model by van Beek

## Results
*  A priori experimental information about kinetic parameters was extracted from the literature
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002130.t001)
* The resulting ensemble of parameter sets is therefore a multivariate posterior distribution, shaped by the cost function, which reflects the probability of individual parameter sets in a Bayesian sense
* metabolic delay time tmito was calculated from dynamic O2 consumption measurements to estimate the generalized time constant of the ATP production time course
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002130.g002)

### Parameter estimation
* Model parameters were estimated simultaneously to fit the tmito values for all conditions using a least-squares optimization procedure
* the model correctly predicts a quicker energy supply-demand signaling when CK is inhibited by 98% (weaker ADP/ATP buffering)
*  Other parameters which are altered significantly by the optimization
    * Km for Pi (OXPHOS)
    * Km for ADP (OXPHOS)
### Monte Carlo sampling of parameter sets
* Starting from the optimized parameter set (see Table 1), we sampled the parameter space to generate an ensemble of 658 independent parameter sets using the Metropolis-Hastings algorithm
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002130.g003)
* mean value in the ensemble close to the measured value and a standard deviation close to their reported measurement error from the literature
* The mean value of PSmom,AdN (permeability of AXP through MOM) in the ensemble is 31.7 s−1, which is larger than the optimized value of 13.3 s−1 found previously. Sepp et al: 7.45±1.89 s−1

### Predicting the contribution of PCr and ATP to energy transport
* Ratio of PCr diffusion (Jdiff,PCr) to the total phosphate group diffusion through the MOM::
 ![](https://journals.plos.org/ploscompbiol/article/file?type=thumbnail&id=info:doi/10.1371/journal.pcbi.1002130.e007)
* Rdiff,PCr is on average 0.17±0.09 (mean±SD) at heart rate 160 bpm and 0.15±0.08 at 220 bpm in the case of active CK

![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002130.g004)

* ADP diffuses into the IMS during the peaks of ATP hydrolysis, stimulating a reversal of the mitochondrial CK reaction to produce ATP from PCr

*  Rdiff,PCr continuously drops for increasing heart rates for all sampled parameter combinations and increase when permeability for ADP of OMM decreases. The increased ATP gradient across the MOM induces direct ATP transport instead of facilitated transport via PCr. Only for very small ATP permeability, PCr contribution becomes high.
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002130.g005)

* Even for the minimum value for PSmom,AdN in the ensemble (7.35 s−1), the entire 95% confidence interval of Rdiff,PCr remains below 0.5

* It might be argued that the Kia value of the mitochondrial CK should be set to 290 µM with oxidative phosphorylation active to reflect functional coupling of CK to the adenine nucleotide translocator (ANT)

* When using the rat heart parameters combined with Kia = 290 µM, the contribution of PCr to high-energy phosphate transport is estimated to be 25%. But it is difficult to explain the response time and molecular kinetic parameters simultaneously with this model
* the contribution of PCr to high-energy phosphate transport is relatively modest(~16%) appears to be robust
### Prediction of temporal energy buffering
![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002130.g006)
* Even at 3-fold increased CK activity, Rdiff,PCr does not increase dramatically
* The amplitude of the ADP oscillation is 77±11 µM at normal CK levels and becomes 146±1 µM if CK is inhibited by 98%
* The time course of mitochondrial ATP production oscillates with amplitudes of 566±31, 215±23 and 91±14 µM*s−1 for 2, 100 and 300% relative CK activity, respectively

![](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1002130.g007)

* both Mi-CK and MM-CK are required for a functioning phosphocreatine shuttle

## Discussion
* The relative importance of the different roles of the CK system in myocytes is still hotly debated
* a large restriction of adenine nucleotide permeation of the cytosol and MOM is not compatible with the relatively fast responses of oxidative phosphorylation to cytosolic workload steps
* we combined data taken from different integration levels in the system: kinetic parameters determined on enzymes in isolation, enzyme activity levels measured in tissue homogenates, organellar capacity levels measured on isolated mitochondria and dynamic response times determined on the heart as a whole
* Our model analysis explains the experimental data without invoking direct coupling of CK and ANT.
* the principal role of the CK system in heart muscle is to serve as a temporal energy buffer for ATP and ADP at the 100 millisecond time scale.
* CK's role in supporting transport of high energy phosphate groups seems of limited importance
* a large restriction of adenine nucleotide permeation of the cytosol and MOM is not compatible with the relatively fast responses of oxidative phosphorylation to cytosolic workload steps
* The conductance parameter PSmom,AdN in our model reflects not only the permeation of the MOM proper but in series with that also diffusion in myofibrils and cytosol.
*  about 15% of the total resistance to diffusion can be attributed to the cytosol
* The contribution of PCr to HEP transport predicted in the present study (Figure 4) is compatible with measured response times of the system
* in cardiomyocytes the density of mitochondria and their vicinity to myofibrils is sufficient to ensure energy transport via adenosine nucleotides
*  analyzed the model of Vendelin et al. ([6]), where the reactions are coupled by a microcompartment reflecting functional coupling -> poor fit to response time
* most of the delay of the activation of oxidative phosphorylation after temporal changes in ATP hydrolysis is caused by the delay of changes in phosphate metabolite levels outside the inner mitochondrial membrane

###  distinct roles for the mitochondrial and myofibrillar creatine kinase enzymes
* MM-CK is mainly responsible for damping large swings in metabolite concentrations and large oscillations in the rate of oxidative phosphorylation
* Mi-CK restricts high concentrations of inorganic phosphate, which is surprising considering that inorganic phosphate is not handled directly by CK => prevention of formation of reactive oxygen species (ROS

## Reference
[^Hettling2011]: Hettling H, van Beek JHGM. Analyzing the functional properties of the creatine kinase system with multiscale “sloppy” modeling. PLoS Comput. Biol. 2011;7(8):e1002130. doi:10.1371/journal.pcbi.1002130. [PMC3166207](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3166207)

