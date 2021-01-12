# Christensen 2009 | Oxidized calmodulin kinase II regulates conduction following myocardial infarction: a computational analysis


[Sciwheel](https://sciwheel.com/work/#/items/1275580).[^Christensen2009]

<!--more-->

## Introduction

* Calmodulin kinase II (CaMKII) mediates diverse roles in the heart, including excitation-contraction coupling, sinus node automaticity, apoptosis, hypertrophy, and gene transcription
* CaMKII overexpression occurs in human heart failure
* CaMKII is activated by binding of Ca2+/calmodulin, autophosphorylation, oxidation, etc
* Building a model to investigate a role for oxidized CaMKII in regulating refractoriness and conduction in the infarct BZ

## Materials and Methods
### Experimental model
* total coronary artery occlusion for adult mongrel(mix) dogs
### In silico model
* Cellular model: Hund-Rudy dynamic (HRd) dog CMC model with CaMKII
* PDE solved numerically by the Crank-Nicholson implicit method:
$$
-\frac{\partial I_{\alpha x}}{\partial x}=\frac{a}{2 R_{i}} \cdot \frac{\partial^{2} V_{m}(x, t)}{\partial x^{2}}=C_{m} \frac{\partial V_{m}(x, t)}{\partial t}+\sum I_{i o n}
$$
* cycle length  = 500 ms, stimulus amplitude  = −450 µA/µF, stimulus duration  = 0.5 ms
## Results

### CaMKII is oxidized in the infarct border zone
![fig1](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1000583.g001)

### Model of oxidative CaMKII activation and action potential propagation
[TextS1](https://journals.plos.org/ploscompbiol/article/file?id=10.1371/journal.pcbi.1000583.s006&type=supplementary)

* include a new model of CaMKII activity based on the simplified scheme proposed by Dupont et al
![fig2](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1000583.g002)

* includes an oxidized active state in addition to a Ca2+/CaM bound active state and an autophosphorylated active state
* Ca2+/CaM must bind to a subunit before oxidation may occur
* Rate constants for state transitions were taken from the literature or chosen to fit experimental data. [TableS3](https://journals.plos.org/ploscompbiol/article/file?id=10.1371/journal.pcbi.1000583.s005&type=supplementary)
* the model predicts a secondary increase in the fraction of autophosphorylated CaMKII subunits with an increase in oxidized subunits due to oxidative stress
* we assume [ROS] = 1.0 µM in the BZ, and explore a range of ROS levels from 0 to 10 µM
* oxidation rather than autophosphorylation is the primary determinant of increased CaMKII activity in the BZ model

* Activated CaMKII altered L-type Ca2+ current, transient outward K+ current, and Na+ current

![fig3](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1000583.g003)

### CaMKII regulates INa inactivation in border zone
![fig4](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1000583.g004)
* CaMKII activation decreased INa availability in BZ
* differences in INa inactivation between NZ and BZ observed under control conditions are largely eliminated upon CaMKII inhibition

### CaMKII regulates conduction in border zone
![fig5](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1000583.g005)
* enhanced CaMKII activity promote slow conduction in the BZ
* Making CaMKII resistant to oxidation increased conduction velocity at all diastolic potentials in the BZ with a greater effect at more depolarized diastolic potential
* In contrast, the BZ model resistant to CaMKII autophosphorylation showed very little improvement in conduction (oxidation predominates)
### CaMKII regulates effective refractory period in border zone
![fig6](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1000583.g006)
* Effective refractory period (ERP) of the action potential is dramatically prolonged in BZ compared to NZ
* ERP is much greater in the BZ model (213 ms compared to 181 in the NZ)
* Making CaMKII resistant to oxidative activation reduces ERP to 207 ms in the BZ model despite a slight prolongation of APD
* These results suggest that oxidation-dependent CaMKII activation contributes to large gradients of refractoriness, particularly at the margins of the infarct BZ, by regulating INa kinetics.
### CaMKII increases vulnerability to conduction block

![fig7](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1000583.g007)
![fig8 Vulnerable window for conduction block](https://journals.plos.org/ploscompbiol/article/figure/image?download&size=large&id=info:doi/10.1371/journal.pcbi.1000583.g008)
*  oxidation-dependent CaMKII activation increases the vulnerability to conduction block at the BZ margin

## Discussion
*  first evidence for oxidation of CaMKII as an important component of the remodeling process following MI
*
### Observations
1. Significant oxidative activation of the kianse occurs under pathophysiological conditions
2. Oxidative stress may activate the kinase not only through direct oxidation but also through a secondary increase in autophosphorylation
3. Changes in Na+ channel kinetics due to oxidative CaMKII activation are sufficient to impact conduction in the BZ
* consistent with experimental studies in mice that over-express CaMKIIδ

### Limitations
* CaMKII in the model detects a subspace pool of Ca2+ that reaches concentrations somewhere between cytosolic and dyadic concentrations (peak concentration 10–20 µM), more semnsitive to oxidation than cytosolic CaMKII

## Reference
[^Christensen2009]: Christensen MD, Dun W, Boyden PA, Anderson ME, Mohler PJ, Hund TJ. Oxidized calmodulin kinase II regulates conduction following myocardial infarction: a computational analysis. PLoS Comput Biol. 2009;5(12):e1000583. [PMC2778128](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2778128/)

