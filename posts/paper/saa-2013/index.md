# Saa 2013 | Modeling the ATP Production in Mitochondria


[Sciwheel](https://sciwheel.com/work/#/items/4596770)

<!--more-->

## Introduction

Bertram, Pedersen, Luciani, and Sherman (BPLS) model is the simplification of Magnus and Keizer's with some refinements introduced by Cortassa, 2003.

- 4 state variables (NADH, ATP, Ca, ΔΨ)
- some inaccuracies in the BPLS expressions while transcripting math expressions
  - ANT: adenine nucleotide translocator
  - Uni: calcium uniporter

## Methods

The issues are fixed by the authers, hence the enhanced BPLS (eBPLS) model.
- Glycolysis from fructose-1,6-bisphosphate (FBP), as a parameter to pyruvate dehydrogenase (PDH) rate
- The same 4 state variable as those of BPLS
- Normalized (dimensionless) quantities for evaluation of freqency response

### Equations

![](https://user-images.githubusercontent.com/40054455/96985739-62dc3680-1553-11eb-89f6-b608c445445d.png)

![](https://user-images.githubusercontent.com/40054455/96985850-6bcd0800-1553-11eb-8809-54af6a5c7b65.png)

![](https://user-images.githubusercontent.com/40054455/96985884-77b8ca00-1553-11eb-8259-4489cd06749d.png)

![](https://user-images.githubusercontent.com/40054455/96985906-7f786e80-1553-11eb-8cb7-208cb53e393e.png)

### Parameters

![](https://user-images.githubusercontent.com/40054455/96986068-b2bafd80-1553-11eb-9edb-a6984c393f85.png)

## Results

![](https://user-images.githubusercontent.com/40054455/96986216-ec8c0400-1553-11eb-80f2-99e182563fff.png "Frequency response to oscillating cytosolic calcium with different amplitudes")

![](https://user-images.githubusercontent.com/40054455/96986454-3d9bf800-1554-11eb-97a1-f89a9ca7d03e.png "Frequency response Under different concentrations of FBP")

## Discussion and conclusion

- Simplifications from KM model, corrections for BPLS model.
- The inertia of the system tends to increase considerably for high concentrations of cytosolic calcium and FBP.

## My point of view

- Seems not so physiologically sane for the ATP level dropped to zero sometimes.


