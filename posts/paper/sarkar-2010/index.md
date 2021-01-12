# Sarkar 2010 | Regression analysis for constraining free parameters in electrophysiological models of cardiac cells


[Sciwheel](https://sciwheel.com/work/#/items/1271653)[^Sarkar2010]

<!--more-->

## Introduction
* During the development of a mathematical model, the choice of parameters is a critical step
* TTNP model, completely different parameter combinations could produce virtually identical AP morphology
  ![](https://journals.plos.org/ploscompbiol/article/figure/image?size=large&id=10.1371/journal.pcbi.1000914.g001)
* The first method: an extension of the use of multivariable regression for parameter sensitivity analysis
* The second method: Bayes's theorem to estimate the probabilities that model parameters lie within certain ranges

## Results
* The overall hypothesis of our study was that if several physiologically-relevant characteristics of a model's behavior were known, this information would be sufficient to constrain some or all of the model's parameters.

### multivariable regression (1st method)
* results of these simulations were collected in “input” and “output” matrices X and Y
* Each column of X corresponded to a model parameter, and each row corresponded to a candidate model (n = 300)
* The columns of Y were the physiological outputs extracted from the simulation results
* matrix of regression coefficients B was derived such that the predicted output **Y ^= XB** was a close approximation of the actual output Y. X_predicted = YB^−1 should be a close approximation of the true input matrix X
![](https://journals.plos.org/ploscompbiol/article/figure/image?size=large&id=10.1371/journal.pcbi.1000914.g002)

* Of the 16 conductances in the TNNP model, 12 could be predicted with R^2 > 0.7. The four that were less well-predicted were the Na+ background conductance (GNab), the rapid component of the K+ delayed rectifier conductance (GKr), the sarcolemmal Ca2+ pump (KpCa) and the second SR Ca2+ release parameter (Krel2)
![](https://journals.plos.org/ploscompbiol/article/figure/image?size=large&id=10.1371/journal.pcbi.1000914.g003)
* Ananysis of the same parameter set on other models: OK!

* Parameter sensitivities for forward and reverse regression
![](https://journals.plos.org/ploscompbiol/article/figure/image?size=large&id=10.1371/journal.pcbi.1000914.g004)
* This result underscores the centrality of intracellular Ca2+ regulation to many cellular processes.

* Application of reverse regression to constrain model parameters in heart failure.
![](https://journals.plos.org/ploscompbiol/article/figure/image?size=large&id=10.1371/journal.pcbi.1000914.g005)
* implementing these parameter changes dramatically alters both AP shape and Ca2+ transient amplitude
* this method constrained 5 out of 7 parameters with excellent accuracy, while changes in two parameters (GKs and Kleak) were overestimated

###  Bayes's theorem (1st method)
![eqn1](https://user-images.githubusercontent.com/40054455/86707785-e167a380-c04a-11ea-884e-b4ec418eefc2.jpg)
* event A that a model conductance lies within a given range, and event B that a model output is within a particular range. probability P(A) is fixed by the user, while the probabilities P(B) and P(B|A) can be estimated from the results. approximate P(A|B), which reflects how well a model parameter is constrained by a particular simulation result.
* extensions of Bayes's theorem to more than two variables, e.g. P(A|B∩C)
* the distributions become progressively narrower, and the conditional probability is unity once 3 outputs are considered
* insights into which specific outputs provide the greatest information about particular model parameters

## Discussion
* two methods that can be used to constrain free parameters in complex mathematical models of biological systems
* parameters can be constrained successfully if numerous model outputs are simultaneously considered
* Even if individual parameters are largely unknown or cannot be measured with precision, predictive models can still be built if care is taken to match the model's output to diverse sets of experimental data.
* reverse regression method is simply a mathematically more formal extension of this general strategy, whereby every output can conceivably influence the prediction of each model parameter.
![](https://journals.plos.org/ploscompbiol/article/figure/image?size=large&id=10.1371/journal.pcbi.1000914.g006)
* The parameter Krel2 (crel in the original TNNP model), was also predicted poorly, most likely because it is partially redundant with the parameter Krel1
* The surprise in our simulations was the poor prediction of the rapid component of the delayed rectifier current, GKr. But preditions about slow delayed rectifier, GKs, was accurate. Overlapping in function was suggested.
* Two important factors influencing the accuracy of the conductance predictions are the **number and quality** of the outputs.
* Since the regression analyses provide insight into which physiological measures are independent and which are partially redundant, these types of simulation studies can be used to **prioritize experiments**
* Purposely excluded measures that quantify how cellular behavior changes after application of a pharmacological agent
* The primary advantage here is that reverse regression is simple and intuitive, and the outputs considered are well-defined metrics that are readily obtainable in the laboratory

## Reference
[^Sarkar2010]: Sarkar AX, Sobie EA. Regression analysis for constraining free parameters in electrophysiological models of cardiac cells. PLoS Comput. Biol. 2010;6(9):e1000914. doi:10.1371/journal.pcbi.1000914. [PMC2932676](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2932676/)

