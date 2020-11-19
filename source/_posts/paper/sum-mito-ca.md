---
title: "Mathematical models of the MCU and NCLX: a summary"
date: 2020-10-23T00:49:23+08:00
tags: []
categories: ["Reading","Summary"]

---

Mathematical models of the MCU and NCLX: a summary

<!--more-->

## Magnus and Keizer model
* Originated from islet beta cell mitochodnrial calcium dynamics`[Magnus1997]`
* Used in Cortassa's ECME model`[Cortassa2003]` and Saa's minimal model`[Saa2013]`

**MCU**

* MWC`[Marzen2013]` model of calcium activation and voltage dependence with a bias of 91 mV.
* Problems when mitochodnrial membrane potential lower than 91 mV

$$
\begin{aligned}
  J_{uni} &= X_{uni} \frac{\phi_t(1+\phi_t)^3}{(1 + \phi_t)^4 + \frac{L}{(1 + \phi_a)^{n_a}}} \frac{\delta}{1 - e^{-\delta}}  \cr
  \delta &= \frac{2F(\Delta\Psi - 91mV)}{RT}  \cr
  \phi_t &= [Ca^{2+}]_i / K_{trans}  \cr
  \phi_a &= [Ca^{2+}]_i / K_{act}    \cr
\end{aligned}
$$

**NCLX**
$$
\begin{aligned}
  J_{NCLX} &= X_{NCLX} \cdot e^{\frac{0.5F(\Delta\Psi - 91mV)}{RT}}\cdot M([Na^+]_i, K_{Na})^n \cdot M([Ca^{2+}]_x, K_{Ca})   \cr
  M(x, k) &:= \frac{x}{x + k}
\end{aligned}
$$


## Dash and Bear model
* Model fit is better for a variety of independent datasets
* Physiologically and thermodynamically feasible

**MCU**
Eyring's free-energy barrier theory `[Dash2009]`, using FMINCON optimizer in Matlab
$$
\begin{aligned}
J_{uni} &= X_{uni} \frac{([Ca^{2+}]_e^2 \cdot e^{\Delta\Psi} - [Ca^{2+}]_x^2 \cdot e^{-\Delta\Psi})e^{(2\alpha_e + 2\beta_e-1)\Delta\Psi}}{K_x^2 + (\frac{K_x}{K_e})^2[Ca^{2+}]_e^2 \cdot e^{2\alpha_e\Delta\Psi} + [Ca^{2+}]_x^2\cdot e^{-2\alpha_x\Delta\Psi}}  \cr
X_{uni} &= E_T \cdot k_{out}^0  \cr
\alpha_e &= 0  \cr
1 &= \alpha_e + \alpha_x + \beta_e + \beta_x  \cr
1 &= \frac{k_{in}^0}{k_{out}^0} \frac{K_x^2}{K_e^2}
\end{aligned}
$$

**NCLX**
Sequential mode of transport with random order of ion binding`[Nguyen2007][Dash2008]`
$$
\begin{aligned}
  J_{NCLX} &= X_{NCLX} \frac{\delta \phi_{Na}^e \phi_{Ca}^x - \phi_{Na}^x \phi_{Ca}^e / \delta}{1 + \phi_{Na}^e + \phi_{Na}^x + \phi_{Ca}^e + \phi_{Ca}^x + \phi_{Na}^e\phi_{Ca}^x + \phi_{Na}^x\phi_{Ca}^e}  \cr
  \phi_{Na}^e &= ([Na^+]_e / K_{Na})^3  \cr
  \phi_{Na}^x &= ([Na^+]_x / K_{Na})^3  \cr
  \phi_{Ca}^e &= [Ca^{2+}]_e / K_{Ca}  \cr
  \phi_{Ca}^x &= [Ca^{2+}]_x / K_{Ca}  \cr
  \delta &= e^{0.5\Delta\Psi F/RT}
\end{aligned}
$$

Calcium phosphate precipitation inhibits mitochondrial energy metabolism [^Malyala2019] sicne calcium is partly buffered by mitochondrial phosphate and calcium phosphate inhibits complex I.

## William's review

William, 2013 `[Williams2013]`

### Mitochondrial Calcium Uptake
* Intermyofibrillar mitochondria (IFM) are in close proximity to the sarcoplasmic reticulum (SR)
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3696793/bin/pnas.1300410110fig01.jpg)

* Studies showed consistent flux once scaled properly. $ y = 0.67 x^{1.7} $
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3696793/bin/pnas.1300410110fig02.jpg)

* MCU flux is tiny (1%) comapred to SERCA pump / plasma membrane NCX (even in elevated intracellular calcium levels like 20 μM)
* Not influencing intracellular ca dynamics, but affecting mitochondrial signalling

### Biophysical Properties of MCU Ca Uptake

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3696793/bin/pnas.1300410110fig03.jpg)

$$
\begin{aligned}
  J_{mcu} &= P_O N_{mito} N_{mcu} \frac{i_{mcu}}{zFV_{myo}}  \cr
  i_{mcu} &= g_{mcu} (\Delta\Psi - E_{Ca})  \cr
  P_O &= (P_{max} - P_{min}) (\frac{[Ca^{2+}]_i^\eta}{[Ca^{2+}]_i^\eta + K_{act}^\eta}) + P_{min}   \cr
  N_{mito} &= 10000  \cr
  V_{myo} &= 18 \ pL \cr
  g_{mcu}N_{mcu} &= 1620 \frac{[Ca^{2+}]_i}{[Ca^{2+}]_i + 19 \ mM} \ pS \cr
  P_{max} &= 0.9  \cr
  p_{min} &= 0.13 \cr
  K_{act} &= 108 \ \mu M
\end{aligned}
$$

### Other reasons for non-linear calcium uptake
* mitochondrial NCX transporter (NCLX) ?
* Leucine zipper-EF-hand containing transmembrane protein 1 (Letm1): Ca-H exchanger
* Extramitochondrial Ca2+ buffers
* Multiple $g_{mcu}$ levels.

## Mitochondrial Ca2+ uptake plasticity
More mitochondrial volume fraction, less MCU density
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3696793/bin/pnas.1300410110fig04.jpg)

## Future Challenges

* Reexamine Ca2+ influx and efflux from mitochondria in intact cells to provide quantitative information under both physiological and pathophysiological conditions.

* Develop mitochondrial computational models of Ca2+ movement that take into account cellular Ca2+ signaling data, metabolic characteristics of the mitochondria, subcellular anatomy, and the nanoscopic mitochondrial organization, including cristae.

* Use quantitative experimental finding to constrain the computational models and the model results to provoke new experiments.

[^Magnus1997]: Magnus, G., & Keizer, J. (1997). Minimal model of beta-cell mitochondrial Ca2+ handling. The American Journal of Physiology, 273(2 Pt 1), C717-33. https://www.physiology.org/doi/abs/10.1152/ajpcell.1997.273.2.C717

[^Saa2013]: Saa, A., & Siqueira, K. M. (2013). Modeling the ATP production in mitochondria. Bulletin of Mathematical Biology, 75(9), 1636–1651. https://arxiv.org/abs/1212.1194

[^Cortassa2003]: Cortassa, S., Aon, M. A., Marbán, E., Winslow, R. L., & O’Rourke, B. (2003). An integrated model of cardiac mitochondrial energy metabolism and calcium dynamics. Biophysical Journal, 84(4), 2734–2755. https://www.sciencedirect.com/science/article/pii/S0006349503750796

[^Marzen2013]: Marzen, S., Garcia, H. G., & Phillips, R. (2013). Statistical mechanics of Monod-Wyman-Changeux (MWC) models. Journal of Molecular Biology, 425(9), 1433–1460. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3786005

[^Dash2008]: Dash, R. K., & Beard, D. A. (2008). Analysis of cardiac mitochondrial Na+-Ca2+ exchanger kinetics with a biophysical model of mitochondrial Ca2+ handling suggests a 3:1 stoichiometry. The Journal of Physiology, 586(13), 3267–3285. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2538784

[^Dash2009]: Dash, R. K., Qi, F., & Beard, D. A. (2009). A biophysically based mathematical model for the kinetics of mitochondrial calcium uniporter. Biophysical Journal, 96(4), 1318–1332. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2717240

[^Nguyen2007]: Nguyen, M.-H. T., Dudycha, S. J., & Jafri, M. S. (2007). Effect of Ca2+ on cardiac mitochondrial energy production is modulated by Na+ and H+ dynamics. American Journal of Physiology. Cell Physiology, 292(6), C2004-20. https://www.physiology.org/doi/full/10.1152/ajpcell.00271.2006

[^Malyala2019]: Malyala, S., Zhang, Y., Strubbe, J. O., & Bazil, J. N. (2019). Calcium phosphate precipitation inhibits mitochondrial energy metabolism. PLoS Computational Biology, 15(1), e1006719. http://www.ncbi.nlm.nih.gov/pmc/articles/PMC6336351

[^Williams2013]: Williams, G. S. B., Boyman, L., Chikando, A. C., Khairallah, R. J., & Lederer, W. J. (2013). Mitochondrial calcium uptake. Proceedings of the National Academy of Sciences of the United States of America, 110(26), 10479–10486. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3696793/
