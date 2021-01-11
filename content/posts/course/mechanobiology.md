---
title: "Intro to mechanobiology"
date: 2020-10-21T15:36:30+08:00
tags: ["mechanobiology"]
categories: ["Course Notes"]
math:
  enable: true
---

Note about Intro to mechanobiology.

<!--more-->

## Course information

* Time: Mon. 2, 3, 4 (9:10 ~ 12:10)
* Location: 工學院綜合大樓 213
* Lecturers: 趙本秀 ＆ 郭柏齡
* Textbooks:
  * Introduction to cell mechanics and mechanobiology by Jacobs et al
* Ceiba for course outlines
* Grading:
  * 30% HW
  * 30% Quiz
  * 30% Oral presentation
  * 10% Final report
* G drive: https://drive.google.com/drive/u/1/folders/1Io2UKPcdtmzvJyWskBetsR5Zh_bLpffi

## Reference articles

* [Communication through mechanical signals](https://www.nature.com/articles/d41586-019-02069-7)
* [Mechanotherapeutics - Nature Biotechnology News](https://www.nature.com/articles/d41587-019-00019-2)

## Physical regulation of cells and tissues

* cosmonaut: osteoporosis due to microgravity
* Right arm bigger than the left (tennis player)
* shape of liver cells (polygons) vs muscle cells (elongated cylinders)
* Tissues / cells could sense physical cues
  * tension, compression, fluid flow (hydrodynamic pressure, shear stress etc.), osmotic pressure, ion current
    * Laminar flow (low Reynaud's number) vs terbulent flow => different endothelial response inside blood vessels
  * Sensed by mechanosensor complexes attached to both cytoskeletons inside cell and ECM outside, affecting gene expression, electrophysiology, etc.
  * Heterogenous structure and stifness inside cartilage (from synovial surface to bone surface)

## Clinical relevence of machanobiology

* deafness: cochlear hair cells
* arteriosclerosis: endothelial and smooth muscle cells
* muscular dystropy and cardiomyopathy: myocytes and *fibroblasts*
  * Congenital muscular dystropy due to mutations in dystrophin (part of anchor for cytoskeleton)
  * Sarcopenia in the elderly
  * Aspect ratio deviation in dilated / hypertrophic cardiomyopathy
  * Weight training : NADPH oxidase produces ROS in response to tension => muscle growth (young people) or death (old people)
* Cartilage: chondrocytes
  * Spatial difference in cell alignment, ECM composition (stiffer towards the bone surface)
  * Running -> compression -> stimulates ECM and cell growth
* Axial myopia and glucoma: optical neurons, fibroblasts
* Polycystic kidney disease (PCKD): epithelial cells of renal tubules
* Cancer: cancer cells and cancer-associated fibroblast (CAF)
* Adhesion to blood vessel walls: WBC (neutrophils, monocytes, macrophages)

## Cellular biology 101

Cell structures, cell cycle and replication, central dogma and information flow, signal transduction and homeostasis.

* DNA stuctures: H-bond => thermodynamically stable in antiparallel double helix, good for information storage
* RNA structure: more reactive (2' hydroxyl group), not as stable as DNA, good for reaction catalysis (e.g. ribozymes) and carrying transient informations (e.g. messenger RNA)

## Information flow in machanobiology

**Outside-in** vs **inside-out**

* Outside-in: force transduction (directly or via ECM) - transducer (complex) - signal transduction cascade (amplifiers, filters, logical gates) - gene expression involving cell cycle, metabolism, and survival
* Inside-out: Cells actively tug the external environmentby motor proteins and cyctoskeletons - determination of external physical cues (e.g. stifness) - cell growth and differentiation

### Lipid rafts in the plasma membrane

* Rich in cholesterol (less fluidity) and glycolipids
* Rich in cytoskeleton anchor complexes and mechanoreceptors

### Cytoskeletons

* Actin: stress fibers, with motor proteins (e.g. myosin), polarity(+)
* Microtubule: compression fibers, consisting tubulin alpha and beta, polarity(+), with motor proteins (kinesin and dynein)
* intermediate filaments (keratin filaments): study and less dynamic, buffer between the nucleus and the cell surface

### Cell-cell junctions

* Tight junctions: preventing leakge from apical side to basal side
* Gap junctions (channeling two adjacent cells)
* Desmosomes: cadherins (requires divalent cations), connected to keratin filaments (structure support)
  They know their spatial arrangement (basal vs apical)

### Cell-matrix junctions

* Reference book: mechanobiology of cell-cell and cell-matrix interactions
* Basal lamina (ECM) - integrins (transmembrane part) - anchor complex - actin
* ECM:
  * glycosaminoglycans (GAG): extrememly hydrophilic, providing compressive strength
  * fibrous proteins (e.g. collagen): tensile strength
* Example of neonatal rat cardiomyocyte growth and developement
  * Soft surface (100~300 Pa): round and undifferentiated
  * Native environment in the heart (10 kPa): cylindral with the best aspect ratio (7:1) with sarcomere
  * Stiff surfaces (glass): flat and polygonal

### Crosstalk of cell-cell junctions and cell-matrix junctions

* Cadherin and integrin pathways
* Cellular movement, differentialtion, and growth

## Crtilage tissue structure and homostasis

* chondrocyte and ECM interactions
* influenced by physical forces (pressure, shear stress)
* Spatial heterogeniety of ECM compostion (stiffness) and cell arrangement (clustering and orientation)

# Mechanotransduction

## Information flow

external stimulation -> outside-in -> processing -> inside-out -> cellular response (behavior)

## Biological signal processing in a cell as a black box ?

* Phenotype-dependence: same ligand + different context (cell type, receptor) = different response

## Inside-out signaling

* Altered protein function (activation/ deactivation): ms to secs
* Altered gene expression (protein synthesis): hours to days
  * Central dogma: DNA -> mRNA -> protein (nowadays with a lot of regulations)
  * Gene expression level $\approx$ mRNA content $\approx$ protein activity (e.g. RNAseq)


## Outside-in signaling

* Extracellular signal -> *transmembrane* receptor -> intracellular relays, amplifiers, modulators...

### Receptors

* Ion-channel-coupled:
  * NMDA receptor: opens Ca channel when binds to glutamate
  * MET channel in cochlear hair cells: opens K channel when stretched
* G-protein-coupled: a lot of grug targets
* Enzyme-linked: e.g. EGFRs, JAK-STAT

### Relays and amplifiers:

* second messengers (Ca, IP3, DAG, cAMP, ...), kinases cascades
* A complex network of signal transduction pathways => bioinformatics

### Molecular switches

* phosphorylation by kinase / dephosphorylation by phosphatase
* GTP-binding: GDP->GTP by replacement. GTP -> GDP by phosphatase activity
  * GEF: GTP exchange factor
  * GAP: GTPase-activating protein

### Signal transduction pathways (simplified)

### GTP-linked receptors

* Ligand binds to receptor, then the LR-complex binds to G protein

* G protein replace GTP for GDP and dissciate from LR-complex

* alpha subunit of G-protein dissociates from beta-gamma subunits

* In Gs protein, the alpha subunit activates CA, converting ATP to cAMP (2nd messenger) for the cascade

* In Gq protein, the beta-gamma subunits activates PCL-beta, cleaving a special phospholipid (PIP2) to IP3 and DAG, which in turn activate Ca release from ER and activate PKC for the cascade.

### Machanoreceptors and transduction

* Stretch-activated ion channels
* Integrins
* E-cadherins e.g. fluid shear stress -> TF (β-catenin) to nucleus
* Phisical forces affects gene transcriptions (exp: movement of transcription factors after physical stress)
* Stretching peptides -> exposure of folded AA residues -> signals (does not require a living cell)
* Compression of chondrocytes: heterogenous, anisotropic strains and (probably) stress
* Machano-sensing by adhesion site recruitment and stretching cytoskeletons -> substrate component and stiffness.
* Chromatin deformation by force changes their relative positions and could alter gene expressions.
  * Force could change gene expression directly!
  * Osmotic loading of chondrocytes: changes in osmolarity => altered chrmatin structure

# Solid Mechanics Primer

A crawing cell uses pseudood and forward attachment point to move forward.

## Rigid body approach

* Sum of moment = 0, Sum of external force = 0 (Neuton 1st law)
* Or applying Neuton 2nd law
* Free body diagram (reaction force: force exerted to the cell)
* But cells are deformable: GG

## Deformable cell

* Displacement field ($\Delta x$  indside the cell) is not uniform
* Displacement is related to mechanical peroperties (stiffness)
* Resolution down to molecular level is too much. Treat the cell as a continuum of infinitesimal elements (~100nm)

### Stress

* Scaled **force**, averaged by area (the same unit as pressure), affected by shape
* A **tensor** described by two vectors
  * the force
  * the normal vector of the plane
  * $\sigma_{xy}$ : On the yz plane (normal vector x), force with y direction
* Normal stress: force parallel to the normal vector (tensile and compressive)
* Shear Stress: force perpendicular to the normal vector
* Mixed: decompose to the two above first

## Strain

* Displacement rescaled (normalized) by the original length
* Averaged deformation (dimless)
* Axial strain: $\epsilon = \frac{\Delta L}{L}$, engineering strain, assuming $\Delta L \ll L$
* Shear strain: $\gamma = \frac{\delta}{L} = tan\theta \approx \theta$
* Transverse strain: Poisson's ratio $\nu = -\epsilon_t / \epsilon_a > 0$

# Stress-Strain relationships

* Linear (Young's modulus) -> nonlinear -> yield point (plastic change) -> ultimate -> break

## Stress and strain fields

* Average force (stress) adn average displacement (strain) in the cell
* Force and torque equlibrium (assuming littel acceleration and rotation)
* For linearly elastic materials: 6 independent components
* Experimental results: displacement field -> What we want: stress fields
* Applying stress-strain relationships (Young's modulus, Poisson ratio, ...)

## Stress on a (linearly elastic) material

* Body force is insignificant to surface force
  * Large surface-to-volume ratio in small scales
* Decompose surface forces on a small cube to tensors (x, y, z)
* $\sigma_{jj} = \lim_{A \rightarrow0}\frac{S_{jj}}{A}$, $\tau_{ij} = \lim_{A \rightarrow0}\frac{S_{ij}}{A}$

* Equilibrium of stress
  * Take 1st Taylor expansion of surface forces related to certian directions
  * Sign convention: negative sides take negative values
  * Tensor representation: $\sigma_{ij, j} = 0$ (Balance of volume forces)
  * $\sigma_{ij} = \sigma_{ij}$ due to moment balance

## Kinematics

* Converting displacement to strain
* Normal strain $\epsilon_{ii} = \frac{du}{di}$
* Shear strain $\theta \approx tan \theta = \frac{du}{dj}$
  * $\gamma = tan \theta \approx \theta$
  * continuous shear strain $\epsilon_{ij} = \gamma_{ij} / 2$
  * Symmetry: $\epsilon_{ij} = \epsilon_{ji}$, 6 indep. strains

## Consitutive equations

6 stress and 6 strains = 36 parameters

For a linearly elastic material under small strain (< 1%)

* Young modulus E: $\sigma_{jj} = E\epsilon_{jj}$
* Shear modulus G: $\tau_{ij} = \sigma_{ij} = G\gamma_{ij} = 0.5G\epsilon_{ij}$
* Poisson ratio $\nu$ : $\nu = -\epsilon_{jj} / \epsilon_{ii}$. For biomaterials = 0.5
* G = E / 2 (1 + ν) for small strain

## Homogeneity

The scale we concern is much larger than the irregularities in the material.

e.g. A collagen gel is homogenous in the scale of mm, not nm.

## Isotropy

In either direction, the response is the same.

## Traction vector

* Forces along the plane with xyz components
* Force equlibrium: Traction forces = stresses * areas
* Could be represented in matrix form
* Use: displacement (beads) -> strain -> stress -> traction force
  * With Green function (complicated)

# Large deformation (>1%)

Deformation gradient (F)

  $\vec{B} = F\vec{A}$  for $\vec{A}$ deforms to $\vec{B}$

## Principle directions of deformation

Find eigenvalues and eigenvectors of $e = 0.5(FF^T-I)$

* eigenvectors: principle directions
* eigenvalues: strain

# Rheology
* Fluid mechanics
* Viscoelasticity: a subset

## Fluid
* Shear stress -> continual deformation (flow)
* Defined by density (ρ) and viscosity (η)
* Increased viscosity = harder to push sideways

## Viscosity
* 1 poise = 0.1 Ns/m^2
* water = 0.001 Ns/m^2
* Newtonian fluid : viscosity independent of shear stress
  * Linear flow profile
  * $$\tau = \eta \frac{du}{dy}$
  * The latter ($\frac{du}{dy}$) is called shear strain rate and velocity gradient

### Stress balance inside a fluid
* Internal friction (viscosty) and external force (stress)
* Shear strain $\gamma = \frac{\Delta x}{dy}$
* Shear strain rate (velocity gradient) $\frac{du}{dy} = \frac{d}{dt}(\frac{\Delta x}{dy})$

### Microscopic model of viscosity
* Particles move at different speeds at different layers
* They also diffuse and bump the neighboring ones due to the speed difference.
* Friction is proportional to velocity gradient (shear strain rate)

### Non-Newtonian fluid
https://en.wikipedia.org/wiki/Non-Newtonian_fluid
* Viscosity is dependent on velocity gradient
* Blood: Binham fluid (flows only when the shear strain rate greater than the threshold)
* Ketchup: Shear thinning = pseudoplastic
* Corn starch with water: shear thickening = dilatant

## Viscosity fluid's strain in response to oscillatory stress
https://en.wikipedia.org/wiki/Viscoelasticity

$\sigma = \sigma_0cos(\omega t)$, $\omega = 2 \pi f$
* Similar to AC circuits
* Elastic: in-phase
* Viscosity: causing phase lag up to 90 degrees

### Complex modulus (by Euler formula)

$e^{ix} = cos(x) + isin(x)$

* Stress: $\sigma^* = \sigma_0e^{i\omega t}$
* Strain: $\epsilon^* = \epsilon_0e^{i(\omega t - \delta)}$
* Modulus: $E^* = \frac{\sigma_0}{\epsilon_0}e^{i\delta} = E_1 + iE_2$
  * Storage / elastic modulus: $E_1 = \sigma_0cos\delta / \epsilon_0$
  * Loss / damping modulus: $E_2 = \sigma_0sin\delta / \epsilon_0$
* Complex shear modulus: $G^* = \frac{\tau^*}{\gamma^*}$

## Hysteresis
* Viscous component: transforms mechanical energy into heat
* In biomaterials, the loop is repeatable and independent of loading rate

## Creep
* Strain increases when holding constant stress
* Reorganization of molecules
* Movement of water (in most biomaterials)

## Stress relaxation
* Stress decreases when holding constant strain
* Reorganization of molecules

## Viscoelasticity Models

https://en.wikipedia.org/wiki/Viscoelasticity#Constitutive_models_of_linear_viscoelasticity

* Springs ( $\sigma = E\epsilon$ ) and dashpots ( $\sigma = \eta \frac{d\epsilon}{dt}$ )
* Series: same stress, summing strain
* Parallel: same strain, summing stress

## Fluid mechanics

**Reference**
Nelson biological physics ch5

### Difference between solid and fluid mechanics
* Solid: inertia and acceleration, time-dependent, no convection (-), constant density
* Fluid: Convection (+), may have variable density
  * Labellar flow: no inertia or time dependent terms involved

### Force balance inside a fluid element
* Pressure (nomal stress)
* Friction, viscous force

### General assumptions
* Steady flow: force balanced
* Newtonian fluid: viscosity deos not depnedent on shear rate
* Imcompressible: constant density

### Acceleration of the fluid
$$dv(x, t) = v(x + dx, t + dt) - v(x, t)= \frac{\partial v}{\partial x}dx + \frac{\partial v}{\partial t}dt$$
$$dv(x, t) = \frac{\partial v}{\partial x}vdt + \frac{\partial v}{\partial t}dt$$
$$a(x, t) = \frac{dv(x, t)}{dt} = \frac{\partial v}{\partial t} + \frac{\partial v}{\partial x}v$$
Former term: solid mechanics, latter term: fluid convection

In 3D space:
$$a = \frac{\partial v}{\partial t} + v \cdot \nabla v$$

### Net pressure force
Notice the negative number (force is in the opposite direction of pressure gradient)
$$\delta f_x^p \approx \frac{-\partial p}{\partial x} dx_1dx_2dx_3$$
$$\delta p \approx (-\nabla p) dx_1dx_2dx_3$$

### Viscosity and Newtonian fluid
Shear stress: $\tau = \eta \frac{du_1}{dx_2}$ : linear flow profile between parallel plates
Shear force:
$$f_x^v(x_1, x_2) = -\tau dx_1dx_3 = -\eta\frac{\partial v_1(x_2)}{\partial x_2} dx_1dx_3$$
$$f_x^v(x_1, x_2 + dx_2) = \eta\frac{\partial v_1(x_2 + dx_2)}{\partial x_2} dx_1dx_3$$
$$f_{x_1x_2}^v \approx \eta \frac{\partial^2v_1}{\partial x_2^2} dx_1dx_2dx_3$$
(Second Taylor expansion)
Net shear force:

$$\delta f_v = \eta \nabla^2 v dx_1dx_2dx_3$$

### Incompressibility
Linear strain:
$$d\epsilon_x = \frac{\Delta x^\prime - \Delta x}{\Delta x} = \frac{dx (\frac{\partial v_x}{\partial x})dt}{dx} = \frac{\partial v_x}{\partial x}dt$$

Size change in 3D space:
$$dx_1dx_2dx_3(1 + (\frac{\partial v_1}{dx_1} + \frac{\partial v_2}{dx_2} + \frac{\partial v_3}{dx_3})dt)$$

Incompressible: $\nabla \cdot v = 0$, i.e. divergence of velocity field = 0

### Newton's second law
$$F = ma = \rho dx_1dx_2dx_3 Y_i + \delta f^p + \delta f^v$$
* 1st term: body force (e.g. gravity)

We get the **Navier-Stoke equation**:
$$\rho (\frac{\partial v}{\partial t} + (v \cdot \nabla) v) = \rho Y - \nabla p + \eta \nabla^2 v$$

* $\frac{\partial v}{\partial t}$: Solid acceleration
* $(v \cdot \nabla) v$: fluid convective term
* Y: body force
* $\nabla p$: pressure term
* $\eta \nabla^2 v$: viscous term

### Microscopic model of fluid friction
Velocity gradient across adjecent layers plus particle diffusion => momentum exchange and frictional drag

### Particle drift and friction law (in small Re)
$F = \zeta v$, $\zeta$: drag coefficient
* Stokes law (for spherical objects): $\zeta = 6 \pi \eta R$
* Electrophoresis: $F = q\epsilon = \zeta v$
* Sedimentation of colliod particles: $f_s = -m_{net}g = \zeta v$

### Reynolds number (Re)
* Dimensionless property
* Fluid runs around a particle
  * acceleration = $\frac{v^2}{R}$
  * viscous force = $\eta\frac{v}{R^2}$
* Substitude into Navier-Stoke equation: $\frac{\rho v R}{\eta} = \frac{R^2}{\eta v}f_{ext} + 1$

#### Large Re
* Dominated by inertia
* Fluid is mixed, turbulent flow with vortices
* Examples: human in water, rockets
* $f_{ext} \approx \rho \frac{v^2}{R}$

#### Small Re
* $\frac{\rho v R}{\eta} \ll 1$, $f_{ext} \approx \frac{\eta v}{R^2}$, drifting velocity proportional to drag force.
* Dominated by viscous drag, laminar flow (Re < 10)
* Acceleration and inertia term extremely small, time reversible
* Examples: bacteria in water, dyes in corn syrup
* Reciprocal motion does not work (due to time reversibility)
* Periodic movement (cilia) and rotational movement (flagella) break the symmetry of the drag coef. (and thus the drag force) and create propulsion.

### Motion of fluid between parallel plates in small Re
* Applying the Navier-Stoke equation, ignoring the acceleration and body force terms. Only the pressure and the drag terms interact.
* No slip boundary condition (velocity = 0 and the walls)
* Parabolic flow profile
* Flow $\propto pr^4$

## Response of osteocyte to fluid flow

* Bone structure
  * Cortial bone
  * Trabecular bone (spongy)
  * Bone marrow
  * Osteons: Concentric circles
  * Osteocytes: with channels connecting each other and the blood vessels
  * Osteoclast: A special microphage removing old bones
  * Osteoblast: will become osteocytes once the surrounding mineralized

* Fluid mechanics in the bone
  * Tension, compression
  * Difference in hydrostatic pressure
  * Fluid flow and shear stress on the osteocytes
  * Peizoelectric collagen I ?
  * Stimulates osteocytes to produce more osteopontin

* How to separate flow shear stress and convection of nutrients
  * Increase the flow shear stress by adding the viscosity (add dextran)

Divided by volume element ($dx_1dx_2dx_3$), dimension = force density:
$$\rho \frac{dv}{dt} = \rho Y - \nabla p + \eta \nabla^2 v$$

We get the **Navier-Stoke equation**:
$$\rho (\frac{\partial v}{\partial t} + (v \cdot \nabla) v) = \rho Y - \nabla p + \eta \nabla^2 v$$

Where
* $\frac{\partial v}{\partial t}$: Solid acceleration
* $v \cdot \nabla v$: fluid convective term
* Y: body force
* $\nabla p$: pressure term
* $\eta \nabla^2 v$: viscous term

## Microscopic model of fluid friction
Velocity gradient across adjecent layers plus particle diffusion => momentum exchange and frictional drag

## Particle drift and friction law (in small Re)
$F = \zeta v$, $\zeta$: drag coefficient
* Stokes law for spherical objects: $\zeta = 6 \pi \eta R$
* Electrophoresis: $F = q\epsilon = \zeta v$
* Sedimentation of colliod particles: $f_s = -m_{net}g = \zeta v$

## Reynolds number (Re)
* Dimensionless property
* Fluid runs around a particle
  * acceleration = $\frac{v^2}{R}$
  * viscous force = $\eta\frac{v}{R^2}$
* Substitude into Navier-Stoke equation: $\frac{\rho v R}{\eta} = \frac{R^2}{\eta v}f_{ext} + 1$

### Large Re
* Dominated by inertia
* Fluid is mixed, turbulent flow with vortices
* Examples: human in water, rockets
* $f_{ext} \approx \rho \frac{v^2}{R}$

### Small Re
* $\frac{\rho v R}{\eta} \ll 1$, $f_{ext} \approx \frac{\eta v}{R^2}$, drifting velocity proportional to drag force.
* Dominated by viscous drag, laminar flow (Re < 10)
* Acceleration and inertia term extremely small, time reversible
* Examples: bacteria in water, dyes in corn syrup
* Reciprocal motion does not work (due to time reversibility)
* Periodic movement (cilia) and rotational movement (flagella) break the symmetry of the drag coef. (and thus the drag force) and create propulsion.

### Motion of fluid between parallel plates in small Re
* Applying the Navier-Stoke equation, ignoring the acceleration and body force terms. Only the pressure and the drag terms interact.
* No slip boundary condition (velocity = 0 and the walls)
* Parabolic flow profile
* Flow $\propto pr^4$

## Response of osteocyte to fluid flow

* Bone structure
  * Cortial bone
  * Trabecular bone (spongy)
  * Bone marrow
  * Osteons: Concentric circles
  * Osteocytes: with channels connecting each other and the blood vessels
  * Osteoclast: A special microphage removing old bones
  * Osteoblast: will become osteocytes once the surrounding mineralized

* Fluid mechanics in the bone
  * Tension, compression
  * Difference in hydrostatic pressure
  * Fluid flow and shear stress on the osteocytes
  * Peizoelectric collagen I ?
  * Stimulates osteocytes to produce more osteopontin

* How to separate flow shear stress and convection of nutrients
  * Increase the flow shear stress by adding the viscosity (add dextran)
