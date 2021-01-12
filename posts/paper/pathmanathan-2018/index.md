# Pathmanathan 2018 | Validation and Trustworthiness of Multiscale Models of Cardiac Electrophysiology


[Sciwheel](https://sciwheel.com/work/#/items/5042147)[^Pathmanathan2018]

<!--more-->

## Introduction
![](https://www.frontiersin.org/files/Articles/325032/fphys-09-00106-HTML/image_m/fphys-09-00106-g001.jpg "Cardiac electrophysiological (CEP) models")
* sub-models (cellular) are usually also systems of ODEs
* electrical wave propagation, including arrhythmic activity, in tissue or the whole heart, cell models are coupled to partial differential equations (PDEs): bidomain” or “monodomain” equations
* simulation of the electrocardiogram (ECG)
* Anatomical personalisation using clinical imaging data => Patient-specific models
* The **credibility** of a computational model has been defined as the belief in the predictive capability of the model for a given intended use. founded upon **validation** results
*  verification, validation, and uncertainty quantification (VVUQ) could be important in the advancement of cardiac CEP modeling as well as explored verification and uncertainty quantification (UQ) for CEP models

## Why trust a computational model?
![](https://www.frontiersin.org/files/Articles/325032/fphys-09-00106-HTML/image_m/fphys-09-00106-g002.jpg)
* The first category is based on model equations, assumptions and parameter values, but not on actual model outputs or results.
* The second category is based on comparing model outputs with experimental/clinical data, but allows for model parameters to be altered for the model to match the data
* The last category—validation and related evidence—is obviously the strongest test of the model: it assumes the model has been completely defined and then its ability to reproduce the real world is tested.
* For many applications—in particular the basic science applications of **hypothesis generation and mechanistic insight**—use of a model that has no supporting validation evidence may be perfectly appropriate
* mathematical modeling has proven a successful complement to experiments in understanding biological processes. However, when a model is to be used in decision-making, and in particular for high-risk applications such as safety-critical clinical applications, validation becomes very important

![](https://www.frontiersin.org/files/Articles/325032/fphys-09-00106-HTML/image_m/fphys-09-00106-t001.jpg)

## Validation
* Validation has been described as “the assessment of the accuracy of a computational simulation by comparison with experimental data”
* **general validation evidence** to describe scientific evidence obtained by comparing model predictions with real world data when no particular COU has been specified

## Comparator, quantities of interest, and method of comparison
* Validation involves **comparison** of model predictions with real world data of some form
* The **comparator** is defined as the source of the real world data
* Another important aspect of validation is which outputs of the model, or derived quantities—here referred to as **quantities of interest (QOIs**)—are compared to the real-world data
    * transmembrane voltage and the APD restitution curve
* Model uncertainty is accounted for by performing **uncertainty quantification (UQ)**, where uncertainty in model parameters is quantified using probability distributions
* Sometimes a CEP model is stated as matching known physiological phenomena: refer to as **reproduced phenomena**. Not strictly a validation.

## Validation of multiscale models
* “Hierarchical validation,” in which validation is performed for all model sub-components, sub-systems and the entire system
* a CEP model may be supported by multiple sources of credibility evidence, taken from model evaluation at multiple scales
* when a complex model is evaluated, ideally the model should be treated as a “glass box” (the opposite of a “black box”), so that the most informed decision is made

## Credibility of CEP models at different spatial scales
### Ion channel models
* Hodgkin-Huxley (HH) formulation: experimentalists regularly present data by publishing HH-based model parameters
* calibration and validation are often not clearly separated in presentation of results
    * late sodium current (INaL) (Yang et al, 2015)
    * L-type calcium current model in O'Hara et al., 2011
    ![](https://www.frontiersin.org/files/Articles/325032/fphys-09-00106-HTML/image_m/fphys-09-00106-g003.jpg)
* For drug-binding applications, a Markov model based approach may be more appropriate (more machanistic details)
* HH formulation has justification at the molecular level ?
* for the L-type calcium channel ICaL., there is not a unique approach to simultaneously quantifying both voltage- and calcium-dependent inactivation
* obtaining data for accurate characterisation of voltage-dependent time constants is considerably more difficult
* Experimental reproducibility and variability between cells also present challenges
* novel ion channel models are developed as one component of a cell model, and validation is instead performed at that level

### Cell models
* the majority of cell models are developed as general-purpose tools, as opposed to for a specific COU
* it can be especially difficult to determine in publications whether results presented are obtained by calibration or are genuinely validation evidence
* The most comprehensive set of validation tests for a new cell model is, as far as we aware, that presented in the original O'Hara-Rudy-dynamic **(ORd) model** paper O'Hara et al, 2011. ORd model is one of the most highly regarded of modern cell models.
* COU-driven validation: proarrhythmic risk of novel pharmaceutical compounds
* Regulators, academia and the pharmaceutical industry have come together in the Cardiac in vitro Proarrhythmia Assay (CiPA) program =>  The ORd model is being modified for this purpose, and the ultimate aim is to develop a model-based metric that converts drug ion channel effects into a predictive risk index
### Organ-level models
* the methodology for tissue- and organ-level simulation studies is so well-established that simulation studies are routinely published in which a model is used for EP research but no validation results are presented, and no other rationale for credibility is explicitly presented
* **bidomain equations** have a strong biophysical basis
* alternative formulations: **fractional diffusion** model of Bueno-Orovio et al. (2014), alternative homogenisation derived by Richardson and Chapman (2011), or the hyperbolic bidomain model of Rossi and Griffith (2017).
* The bidomain equations reduce to the **monodomain equations** under the assumption that the intracellular and extracellular conductivity tensors are aligned. In the absence of extracellular stimuli (such as defibrillatory shocks) solutions of the monodomain equations can be very similar to those of the bidomain
* Credibility of tissue-level predictions is also dependent on the specific cell model used in the simulations. But validation at the cell level does not necessarily imply that simulations will reproduce tissue-level phenomena
* anatomical fidelity of the computational mesh (3D models)
* The ability to perform validation of such models is of course heavily constrained by difficulties in obtaining the necessary experimental or clinical data for model validation, usually limited to heart surface potentials
![](https://www.frontiersin.org/files/Articles/325032/fphys-09-00106-HTML/image_m/fphys-09-00106-g004.jpg)
* validation of organ-level CEP models with a specific clinical application; in particular, where a model is proposed to be used in clinical decision-making
![](https://www.frontiersin.org/files/Articles/325032/fphys-09-00106-HTML/image_m/fphys-09-00106-g005.jpg "process used to predict sudden cardiac death risk in Arevalo et al")

## Discussion
* while general validation can provide important preliminary information about a computational model, it may not be advisable to convert general validation results into binary “good”/“bad” or “acceptable”/“unacceptable” statements
* when a COU of a model is chosen, previous general validation results can certainly be (re-)evaluated to determine how supportive they are of the model in the COU
* The CEP modeling community already leads the way in model sharing and reproduction through the **CellML repository** and related software
* One resource that provides a path toward such a repository is the Cardiac Electrophysiology Web Lab (Cooper et al., 2016). https://travis.cs.ox.ac.uk/FunctionalCuration/. While the Web Lab does not currently provide explicit comparison to experimental data, it already serves as a potential tool for identifying which phenomena models can reproduce
* lack of clarity in the literature about the trustworthiness of CEP models, which can potentially lead to overconfidence in CEP models by non-experts who are unfamiliar with model subtleties (see initial discussion in Gong et al., 2017) as well as under-confidence in simulation-based conclusions by those who are skeptical of computational models in medicine
* Two factors are used to determine model risk. The first is model influence, which is the extent to which the model predictions will influence the decision to be made or conclusions of the study, compared to other sources of information. The second is the consequence of incorrect decisions
## Reference
[^Pathmanathan2018]: Pathmanathan P, Gray RA. Validation and Trustworthiness of Multiscale Models of Cardiac Electrophysiology. Front Physiol. 2018;9:106. Published 2018 Feb 15. doi:10.3389/fphys.2018.00106 [PMC5818422](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5818422/).

