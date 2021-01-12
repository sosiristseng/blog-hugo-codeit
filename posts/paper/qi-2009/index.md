# Qi 2009 | Generating rate equations for complex enzyme systems by a computer-assisted systematic method


[Sciwheel](https://sciwheel.com/work/#/items/5333945).[^Qi2009]

<!--more-->

## King and Altman method
* Applying graph theory to enzyme kinetics (state transitions)
* Enzyme internals are in rapid equilibrium
* State transitions are in the pseudo-first order
### Example of fumarase
A = fumarate; B = proton; C = hydroxyl; P = malate;
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2729780/bin/1471-2105-10-238-1.jpg)
1. listing all of the valid KA patterns for the enzyme mechanism.

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2729780/bin/1471-2105-10-238-2.jpg)
2. And determine all of the directional diagrams associated with each state in the enzyme mechanism.
* The arrows are directed toward state i with no diverging edges.
* Each directional diagram is associated with a product of pseudo-first order rate constants for the arrows in the directional diagram.
* Numerator are the terms pointing to one state, and the denominator is the sum of all terms associated with the directional diagrams for all states in the system.
* the method used to generate trees from linear graphs can be applied to complex enzymatic reaction mechanisms

## Motivation and the software
* Manually deriving the steady-state rate equations for non-trivial enzyme mechanisms can be cumbersome and error-prone.
* MATLAB GUI, KAPattern, for generating rate equations in complex enzyme systems, using the KA method as well as the topological theory of linear graphs, called Wang Algebra.
* No limitation on the size of the system
* output as .m or Math ML file
* provides visualization of all the valid KA patterns.
* may obtain insights on catalytic mechanism
* it can deal with the irreversible reaction step

## Algorithm
* Method described by Lam and Priest, with Wang alebra, the addition or multiplication operation on two or more identical elements leads to zero.
* Link matrix(similar to adjecency matrix) and kinetic matrix (with rates)
![eqn1](https://user-images.githubusercontent.com/40054455/86706566-9ac57980-c049-11ea-88ba-a03e8120149c.png)
![eqn2](https://user-images.githubusercontent.com/40054455/86706573-9bf6a680-c049-11ea-92e9-ee977d0e8f70.png)
* randomly selecting n - 1 nodes from the linear graph, and determining the links connected to the n -1 nodes by deleting a row (column) and then listing separately all the nonzero entries from the remaining n - 1 rows (columns).
* the links listing obtained in previous step are alphanumerically multiplied
    * 1 * 2 = > 12
* the links (edges) in each KA pattern are assigned directions so that the reaction steps, individually or in sequence, lead to a given enzyme state Ei.

## Reference
[^Qi2009]: Qi F, Dash RK, Han Y, Beard DA. Generating rate equations for complex enzyme systems by a computer-assisted systematic method. BMC Bioinformatics. 2009;10:238. Published 2009 Aug 4. doi:10.1186/1471-2105-10-238
[PMC2729780](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2729780/).

