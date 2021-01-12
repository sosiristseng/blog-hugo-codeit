# Alberty 2006 | Relations between biochemical thermodynamics and biochemical kinetics


[Sciwheel](https://sciwheel.com/work/#/items/5673496).[^Alberty2006]

<!--more-->

## Intro

* Close connection between the biochemical thermodynamics and biochemical kinetics of an enzyme-catalyzed reaction.

* Difference between chemical & biochemocal thermodynamics is the specification of the **pH as an independent variable** in biochemical thermodynamics

* Gibbs energy: `G = H-TS`
    * T : intensive variable (not changed by number of particles)
    * S : extensive variable (changed by number of particles)
    * @ equilibrium: G is @ minimum

* specification of pH as an independent variable in biochemical thermodynamics has another advantage: ease of binding polynomial (adenosine triphosphate can be treated as ATP, rather than the species ATP4−,HATP3−, and H2ATP2−)
    * The apparent equilibrium constant K′ are also represented by mathematical functions of T, pH, and ionic strength
    * The assumption is that the **pH is held constant** during the reaction,
* The apparent equilibrium constant for the catalyzed reaction and the equilibrium composition do not depend in any way on the properties of the enzyme.

* In biochemical thermodynamics it is more convenient to take the **apparent equilibrium constant** and transformed thermodynamic properties of reactants like ATP to be functions of ionic strength in addition to temperature and pH.

* The **Haldane relations** connect chemical and biochemical thermodynamics at equilibrium.

## Consideration of the effect of ionic strength on a simple mechanism

### Simple mechanism
$$
E + S \rightleftharpoons EX \rightleftharpoons E + P
$$

the complete steady-state rate equation is
$$
\begin{aligned}
v &= \frac{V_f \phi_S - V_r \phi_P}{1 + \phi_S + \phi_P} \cr
\phi_S &= [S] / K_S  \cr
\phi_P &= [P] / K_P  \cr
\end{aligned}
$$

The Haldane relation:
$$
K_{eq}^{app} = \frac{[P]_{eq}}{[S]_{eq}} = \frac{V_fK_P}{V_rK_S} = \frac{k_{1}k_{2}}{k_{-1}k_{-2}}
$$

Apparrent equilibrium constants are functions of temperature, pH, and ionic strength.

### Multistep mechanism
$$
E + S \rightleftharpoons ES \rightleftharpoons EP \rightleftharpoons E + P
$$
The Haldane relation:
$$
K_{eq}^{app} = \frac{[P]_{eq}}{[S]_{eq}} = K_1 K_2 K_3 = \frac{k_{1}k_{2}k_{3}}{k_{-1}k_{-2}k_{-3}}
$$

## Consideration of the effect of pH on a simple mechanism

![fig1](https://user-images.githubusercontent.com/40054455/96852235-76bc6580-148b-11eb-81e4-f963439180c1.png)

$$
\begin{aligned}
K_{1S} &= [S^-][H^+] / [HS] \cr
K_{1H2S} &= [HES^-][H^+] / [H2ES] \cr
K_{H2ES} &= [HS][HE] / [H2ES]  \cr
\ [E]_t &= [E^-] + [HE] + [H2E^+] + [HES^-] + [H2ES] + [H3ES^+] \cr
\ [S] &= [S^-] + [HS] + [H2S] \cr
\end{aligned}
$$

Then:

$$
\begin{aligned}
f_H([H^+], K_1, K_2) &:= 1 + K_{1} / [H+] + [H+] / K_{2}  \cr
\ [E]_t &= [HE] / f_H([H^+], K_{1E}, K_{2E})+ [H_2ES]/ f_H([H+], K_{1ES}, K_{2ES}) \cr
\ [E]_t &= f([H_2ES]) = ... \cr
\ [S] &= [HS] / f_H([H^+], K_{1S}, K_{2S})
\end{aligned}
$$

Finally:
$$
\begin{aligned}
v &= V_{f} \frac{ [S] }{ [S] + K_{S} }  \cr
V_{f} &= k_f [E]_{t} / f_{H} ([H^+], K_{1ES}, K_{2ES}) \cr
K_{S} &= K_{H2ES} \cdot f_{H} ([H^+], K_{1E}, K_{2E}) \cdot f_{H}([H^+], K_{1S}, K_{2S}) / f_{H}([H^+], K_{1ES}, K_{2ES}) \cr
\end{aligned}
$$


## pH-dependent reverse reaction

![fig2](https://user-images.githubusercontent.com/40054455/96852433-b6834d00-148b-11eb-9706-bd36dd689473.png)
* Using the King-Altman method, and Roberts has derived it using determinants.
* Similar relations for P

The Haldane relation:
$$
K_{eq}^{app} = \frac{[P]_{eq}}{[S]_{eq}} = \frac{V_f K_P}{V_r K_S} = \frac{k_fK_{H2EP}f_H([H^+], K_{1P}, K_{2P})}{k_rK_{H2ES}f_H([H^+], K_{1S}, K_{2S})}
$$

![fig3](https://user-images.githubusercontent.com/40054455/86533460-0ef60500-bf04-11ea-821c-37e3e2ea1fb9.png "pH on the rapid-equilibrium rate equation")

## Expression of the apparent equilibrium constant for A + B = P + Q

in terms of the rate constants of the steps in the forward and reverse direction

![image](https://user-images.githubusercontent.com/40054455/96852586-e2063780-148b-11eb-8070-3c9a3e836814.png)

![image](https://user-images.githubusercontent.com/40054455/96852624-f1858080-148b-11eb-9222-51bafd584ae3.png)

4400 and 4700 respectively, in good agreement. They depend only on the properties of the reactants in the reaction above; we don't have to consider ionic strength.

## Discussion
* The apparent equilibrium constant (K′) for an enzyme-catalyzed reaction can be calculated using parameters from the complete **rate equation** or **rate constants** for the steps in the mechanism
    * knowledge of K ′ makes it possible to calculate the equilibrium composition of reactants for given initial concentrations of the reactants. Go left or go right.
    * values of K′ can be used to calculate ΔrG′° using  -RTlnK′. partial derivatives of ΔrG′° can be used to calculate ΔrH′°, ΔrS′°.
    * values of K′ or ΔrG′° can be used to calculate values of ΔfG° of species of a new reactant if the ΔfG° are known for species of all the other reactant

* the most efficient way to store information on the thermodynamics of enzyme-catalyzed reactions is to store **standard Gibbs energies** of formation and **standard enthalpies** of formation of species

* When **magnesium ions** or other divalent cations are present, their effects on the thermodynamics of enzyme-catalyzed reactions can be **handled in the same way as effects of hydrogen ions**. Just introduce p Mg as an independent variable of the transformed Gibbs energy in addition to pH.

[^Alberty2006]: Alberty RA. Relations between biochemical thermodynamics and biochemical kinetics. Biophys. Chem. 2006;124(1):11-17. doi:10.1016/j.bpc.2006.05.024.

