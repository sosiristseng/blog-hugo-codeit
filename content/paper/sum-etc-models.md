---
title: "Mathematical modeling of mitochondrial respiratory chain, a summary"
date: 2020-10-23T00:48:40+08:00
tags: []
categories: ["Reading","Summary"]
math:
  enable: true
---

Mathematical modeling of mitochondrial respiratory chain.

<!--more-->

## Electron transport chain (ETC)
* Consumes hydrogen carriers (NADH, FADH₂) and oxygen
* Generates NAD, FAD, water, and proton motive force (pumping) for ATP synthase the produce ATP
* Reactive oxygen species (ROS) generation by complex I and III
* Dependence of mitochodnrial membrane potential, pH, and substrate / product concentrations

## Magnus and Keiser model
* Islet beta cell mitochondrial model[^Magnus1997]
* Also used in the ECME model[^Cortassa2003] and the Nguyen-2007 model[^Nguyen2007] for cardiomyocytes
* 6-state proton pump using King-Altman method for steady-state rates (integrating complex I-III-IV)
* ECME model have similar expression for complex II-III-IV rates

## Demin model
* Complete Q cycle of complex III with ROS side reactions[^Demin1998][^Demin2001] with Semi-forward mechanism

![](https://i.imgur.com/xjPJgdW.png "Fig. 1: Q cycle")

## Gauthier model
* Guinea pig heart mitochondria[^Gauthier2013]
* Complex II / III / IV from Demin's model[^Demin2001]
* Complex I : 7-state steady-state flux similiar to the Magnus model[^Magnus1997]
* Complex V: The same as the ECME one[^Cortassa2003], similiar to the Magnus model[^Magnus1997]
* Problem of equilibrium constant in the original parameters

## Guillaud model
* Semi-reverse mechanism for complex III ROS generation[^Guillaud2014]
* Different set of parameters for Antimycin A absence / prescence

## Basil and Beard model
* Complex I[^Bazil2014], complex III[^Bazil2013][^Bazil2017], and integrated[^Bazil2016] kinetic models for bovine heart mitochondria.
* Heavy use of binding polynomials and Gibbs free energies (partly from midpoint potentials)
* Redox and ROS generation fluxes in various conditions with supportive data

## Berndt model
Neuron cell model[^Berndt2012] stydying KGDH inhibition and ROS generation3.

[Model description (pdf)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3376505/bin/757594.f1.pdf)



## Hoek model
* ROS generation model for complex I and III[^Markevich2015]
* Detailed step by step electron transfer, law of mass expressions


## Pannala CcO model
* mitochondrial cytochrome c oxidase model[^Pannala2016]
* nitric oxide inhibition
* Steady-state flux expression

$$
\begin{aligned}
Q &= 1.5 \cdot \Delta p \cr
\phi_Q &= exp(-QF / RT)   \cr
\phi_H &= [H^+]_m / K_H  \cr
\end{aligned}
$$

$$
\begin{aligned}
K_{eq}^{CcO} &= exp(4(E_{\mathrm{m}, \mathrm{O_2}}^{0} - E_{\mathrm{m, cytc}}^{0})F/RT) \cdot 10^{-3}  \cr
K_{eq}^{12} &= \phi_Q \cdot exp((E_{\mathrm{m, CuB}}^{0} - E_{\mathrm{m, cytc}}^{0})F/RT)   \cr
K_{eq}^{23} &= \frac{k_2^+}{k_2^-}  \cr
K_{eq}^{34} &= K_3 \cdot \phi_H \cdot exp((E_{\mathrm{m, a3}}^{0} - E_{\mathrm{m, CuB}}^{0})F/RT) \cr
K_{eq}^{45} &= \phi_H \phi_Q exp((2E_{\mathrm{m}, \mathrm{O}_{2}}^{0} - E_{\mathrm{m, a3}}^{0} - E_{\mathrm{m, cytc}}^{0})F/RT) \cr
K_{eq}^{35} &= K_{eq}^{34}K_{eq}^{45}  \cr
K_{eq}^{51} &= \phi_H^2 \phi_Q^2 \left( \frac{c^{2+}}{c^{3+}} \right)^2 \frac{K_{eq}^{CcO}}{K_{eq}^{12}K_{eq}^{23}K_{eq}^{34}K_{eq}^{45}} \cr
k_1^+ &= k_{10}^+ \phi_Q^\beta  \cr
k_1^- &= k_1^+ / K_{eq}^{12}  \cr
k_{3a}^+ &= k_{3a0}^+ \phi_H \phi_Q^\beta  \cr
k_{3a}^- &= k_{3a}^+ / K_{eq}^{35}  \cr
k_{3a}^+ &= k_{3b0}^+ \phi_H \phi_Q^\beta  \cr
k_{3b}^- &= k_{3b}^+ / K_{eq}^{45}  \cr
\Delta_1 &= 1 + \frac{NO}{K_{i1}} + \frac{1}{K_{eq}^{51}} \cr
f_1^+ &= 1 / \Delta_1  \cr
f_1^- &= f_2^+ = \frac{K_{i2}}{K_{i2} + NO}  \cr
f_2^- &= f_{3a}^+ = \frac{1}{1 + K_{eq}^{34}}  \cr
f_{3b}^+ &= 1 - f_{3a}^+  \cr
f_3^- &= \frac{1}{K_{eq}^{51}} \frac{1}{\Delta_1}  \cr
\alpha_1 &= f_1^+ k_1^+ c^{2+} \cr
\alpha_2 &= f_2^+ k_2^+ O_2 \cr
\alpha_3 &= (f_{3a}^+ k_{3a}^+ + f_{3b}^+ k_{3b}^+) c^{2+} \cr
\beta_1 &= f_1^- k_1^- c^{3+}  \cr
\beta_2 &= f_2^- k_2^-  \cr
\beta_3 &= f_3^- (k_{3a}^- + k_{3b}^-) c^{3+}  \cr
J_{cco} &= V_{O_2} = \frac{\rho_{C4}}{\Sigma}(\alpha_1 \alpha_2 \alpha_3 - \beta_1 \beta_2 \beta_3) \cr
\Sigma &= \alpha_1 \alpha_2 + \alpha_2 \alpha_3 + \alpha_3\alpha_1 + \beta_1\beta_2 + \beta_2\beta_3 + \beta_3\beta_1 + \alpha_1\beta_2 + \alpha_2\beta_3 + \alpha_3\beta_1
\end{aligned}
$$

## Parameters
| Symbol             |  Value                      | Units             | Description  |
| --------           | --------                    | --------          | -----------  |
|$E_{m,CuB}^0$       | $0.35$                      | $\text{V}$        | Midpoint potential of copper center|
|$E_{m,a3}^0$        | $0.385$                     | $\text{V}$        | Midpoint potential of cytochrome a3|
|$E_{m,cytc}^0$      | $0.25$                      | $\text{V}$        | Midpoint potential of cytochrome c|
|$E_{m,O_2}^0$       | $0.85$                      | $\text{V}$        | Midpoint potential of oxygen|
|$k_{1, 0}^+$        | $8 \cdot 10^{6}$            | $\text{Hz/mM}$    | Rate constant|
|$k_{2}^+$           | $6 \cdot 10^{5}$            | $\text{Hz/mM}$    | Rate constant|
|$k_{2}^-$           | $10$                        | $\text{Hz}$       | Rate constant|
|$K_3$               | $17.5$                      |                   | Equlibrium constant for E3 = E4|
|$k_{3a, 0}^+$       | $1.3 \cdot 10^{7}$          | $\text{Hz/mM}$    | Rate constant|
|$k_{3b, 0}^+$       | $6.1 \cdot 10^{5}$          | $\text{Hz/mM}$    | Rate constant|
|$K_{i1}$            | $40$                        | $\text{nM}$       | Inhibition constant for NO in E1|
|$K_{i2}$            | $7 $                        | $\text{nM}$       | Inhibition constant for NO in E2|40
|$\beta$             | $0.3$                       |                   | Voltage dependence factor|

[^Pannala2016]: Pannala, V. R., Camara, A. K. S., & Dash, R. K. (2016). Modeling the detailed kinetics of mitochondrial cytochrome c oxidase: Catalytic mechanism and nitric oxide inhibition. Journal of Applied Physiology, 121(5), 1196–1207.

[^Cortassa2003]: Cortassa, S., Aon, M. A., Marbán, E., Winslow, R. L., & O'Rourke, B. (2003). An integrated model of cardiac mitochondrial energy metabolism and calcium dynamics. Biophysical journal, 84(4), 2734–2755. doi:10.1016/S0006-3495(03)75079-6 https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1201507/

[^Magnus1997]: Magnus, G., & Keizer, J. (1997). Minimal model of beta-cell mitochondrial Ca2+ handling. The American Journal of Physiology, 273(2 Pt 1), C717-33.

[^Nguyen2007]: Nguyen, M.-H. T., Dudycha, S. J., & Jafri, M. S. (2007). Effect of Ca2+ on cardiac mitochondrial energy production is modulated by Na+ and H+ dynamics. American Journal of Physiology. Cell Physiology, 292(6), C2004-20. https://www.physiology.org/doi/full/10.1152/ajpcell.00271.2006

[^Markevich2015]: Markevich, N. I., & Hoek, J. B. (2015). Computational modeling analysis of mitochondrial superoxide production under varying substrate conditions and upon inhibition of different segments of the electron transport chain. Biochimica et Biophysica Acta, 1847(6–7), 656–679.

[^Bazil2013]: Bazil, J. N., Vinnakota, K. C., Wu, F., & Beard, D. A. (2013). Analysis of the kinetics and bistability of ubiquinol:cytochrome c oxidoreductase. Biophysical Journal, 105(2), 343–355. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3714890

[^Bazil2014]: Bazil, J. N., Pannala, V. R., Dash, R. K., & Beard, D. A. (2014). Determining the origins of superoxide and hydrogen peroxide in the mammalian NADH:ubiquinone oxidoreductase. Free Radical Biology & Medicine, 77, 121–129. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4258523

[^Bazil2017]: Bazil, J. N. (2017). Analysis of a functional dimer model of ubiquinol cytochrome c oxidoreductase. Biophysical Journal, 113(7), 1599–1612. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC5627346

[^Bazil2016]: Bazil, J. N., Beard, D. A., & Vinnakota, K. C. (2016). Catalytic coupling of oxidative phosphorylation, ATP demand, and reactive oxygen species generation. Biophysical Journal, 110(4), 962–971. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4776027

[^Demin2001]: Demin, O. V., Gorianin, I. I., Kholodenko, B. N., & Westerhoff, H. V. (2001). [Kinetic modeling of energy metabolism and generation of active forms of oxygen in hepatocyte mitochondria]. Molekuliarnaia Biologiia, 35(6), 1095–1104. http://www.ncbi.nlm.nih.gov/pubmed/11771135

[^Demin1998]: Demin, O. V., Kholodenko, B. N., & Skulachev, V. P. (1998). A model of O2.-generation in the complex III of the electron transport chain. Molecular and Cellular Biochemistry, 184(1–2), 21–33.

[^Gauthier2013]: Gauthier, L. D., Greenstein, J. L., Cortassa, S., O’Rourke, B., & Winslow, R. L. (2013). A computational model of reactive oxygen species and redox balance in cardiac mitochondria. Biophysical Journal, 105(4), 1045–1056. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3752118
[^Guillaud2014]: Guillaud, F., Dröse, S., Kowald, A., Brandt, U., & Klipp, E. (2014). Superoxide production by cytochrome bc1 complex: a mathematical model. Biochimica et Biophysica Acta, 1837(10), 1643–1652. https://www.sciencedirect.com/science/article/pii/S0005272814005076?via%3Dihub

[^Berndt2012]: Berndt, N., Bulik, S., & Holzhütter, H.-G. (2012). Kinetic Modeling of the Mitochondrial Energy Metabolism of Neuronal Cells: The Impact of Reduced α-Ketoglutarate Dehydrogenase Activities on ATP Production and Generation of Reactive Oxygen Species. International journal of cell biology, 2012, 757594. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3376505
