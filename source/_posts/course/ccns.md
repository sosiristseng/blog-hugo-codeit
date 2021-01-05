---
title: "Computational Cognitive Neuroscience"
date: 2020-10-21T15:26:45+08:00
tags: ["spiking neural network"]
categories: ["Course Notes"]
mathjax: true
---

Notes about Computational Cognitive Neuroscience

<!--more-->

## Course Information

* Lecturer: 鄭士康
* Time: Fri. 789
* Location: EE2-146
* Homeworks:
    * HW1: 10/25 (Topic free)
    * HW2: 11/29
    * Group presentation: 1/22
* Handouts (G suite): https://drive.google.com/drive/u/1/folders/1GOcrwV9lR5Xk4bqPCXhxLc600DXRYl4K

## Central Questions
* Could machineㄋ perceive and think like humans?
* Turing test
* Stimuli -> acquire -> store -> transform (process, emotion) -> recall -> response (actions)

### Cognitive Psychology

* Assumption: materialism: mind = brain function
* Later became Cognitive Neuroscience
* Models: Box and arrow -> Computational (mechanistic) vs Statistical model
  * Neuronal network *connections*

### Artificial intelligence

* Reductionism
* Search space of parameters
* General probelm solver
* Expert systems (symbol and rule-based)
  * Symbol processing ≢intellegence (Chinese room argument)
  * Does the machine really know semantics from the symbols and rules?
* Mimicking biological neuronetworks (H&H neuron model) -> spiking neuron network & Hebbian learning
* Perceptron : Limitations by Minsky (unable to solve XOR probelm) -> 1st winter of AI
* Multilayer and backpropagation: connectionism
  * Parallel distributed processing (1986): actually neuronetworks (a *taboo* by then)
* Convolutional neuronal networks (CNNs)
  * Computer vision
  * Simlimar to image processing in the visual cortex
  * Decomposition of features: stripes, angles, colors, etc.
  * Does intelligence *emerge* from complex networks?
* Dynamicism
  * embodied approach
  * Feedback system
  * Systems of non-linear DEs
* Cybernetics: control system for ML (system identification)
* Bayeian approach : pure statistics regradless of underlying mechanism

### Biological plausibility
* Low = little similarity to biological counterpart
  * e.g. expert systems
* CNN: medium BP
* SpiNNator and Nengo: high BP

### Levels (scales) of nervous system
* Focused on mesoscopic scale (neurons and synapses) in this course

## Builidng a brain with math models

Why?

> Feymann: What I canot create, I do not understand.
>
> 1. Understanding brain functions -> health (AD, PD, HD)
> 2. AI modeling and applications

### 3D brain structure

www.g2conline.org

### The scale of brain models

* Neuron
* Small clusters of neurons
* Large scale connections (connectomes)

### Neuron biology

* dendrite
* soma
* axon and myelin sheath

### Hodgkin and Huxley model (1952)

* Math model from recordings of squid giant axon
* Action potential
* Biophysically accurate, but harder to do numerical analysis
* Chance and Design by Alan Hodgkin

#### Derived models

* Simpler models with action potentials and multiple inputs
* Leaky, Integrated and Fire model (**LIF** model)
* LEBRA: single equation for a neuron, no spatial components
* Compartment model of dendrite, soma, and axon.
  * Delay effect (+)
  * Discretization of the partial differential eqiuation (PDE) model
  * Could **Delayed Differential Eqautions (DDEs)** used in this context?
* Data (from fMIR, DTI, ...) rich and theory poor
* Large-scale models (connectome)
* Neuromorphic hardware

### NEF (Neural Engineering Network) & SPA (Sementic Pointer Architecture)

#### Sementic Pointer

* Sementics important for both symbolic and NN models
* Example : autoencoder
  * Dimemsion reduction layer by layer (raw data -> symbols)
  * Similar to visual cortex and associative areas
  * Reverse the network to adjust the weights
  * Loss = predicted - input

* **Spaun model**: Autoencoders to preocess multiple sensory inputs as well as motor functions and decision making (transformation, working memory, reward, selection).

* Ewert's Question: How is neural activity coordinated, learned and controlled?
  * Capturing semantics
  * Encoding syntactic structures
  * Controlling information flow?
  * Memory, learning?

#### Embodieed semantics

* Neural *firing patterns*
* High dimensional vector symbolic architectures

#### Working memory

* 7 +/- 2 items, with highest recall for the 1st and the last item

#### Spike-Timing-Dependent plasticity (STDP)

* non-linear mapping for *learning* through synapses

### Spiking models

* Keywords: *spike firing rate*, *tuning curves*, *Poisson models
* Adrian's frog leg test: loading induced spikes in the sciatic nerve
  1. Stereotyped signals = spikes
  2. Firing rate is a function to stimuli
  3. Fatigue (adaptation) over time

#### Neural responses

* Raster plot: dot = one spike. x: time; y: neuron id
* Firing rate histogram: x: time; y: # of spikes
* Neural signal response: with Dirac delta function (signal processing?)

  $$
  \rho(t) = \Sigma_{n=1}^N\delta(t - t_i)
  $$

* Indivisual spikes -> Firing rates (in Hz) with a windows (moving average)

* Similar to pulse density modulation (PDM)

#### Tuning curve

* x: stimuli trait; y: response
* e.g. visual cortical neuron response to line orientation
* Present in both sensory and motor cortices

#### Poisson process for spike firing

* Poisson process: a random process with constant rate (or average waiting time).
* The probability `P` with `n` events fired in a period `T` given a firing rate `r` could be expressed by:

$$
P_T[n] = \frac{(rT)^n}{n!}e^{-rT}
$$

#### Rate code v.s. temporal code

* Dense firing for the former, sparse firing for the latter
* Population code (a group of neurons firing)

### Encoding / decoding

* encoding: stimuli $x(t)$ -> spikes $\delta (t-t_i)$
* decoding: spikes $\delta (t-t_i)$ -> intepretation of stimuli $\hat x(t)$


## Neural Physiology

* Neuron: dendrites, soma, axon
* Synapses: neurotransmitter / electrical conduction
  * AP from axon => Graded potential in dendrite / soma
  * Temporal / spatial summation of graded potential: AP in axial hillock

### Excitable membrane

* Phospholipid bilayer (plasma membrane) as barrier
* Integral / peripheral proteins: ion carriers and channels
* Selected permeability to ions: Na / K gradients

### Action potential

* Voltage-gated Na channel: both positive and negative feedback (fast)
* Voltage-gated K channel: negative feedback (slow)
* Leaky chloride channel: helping maintaining resting potential (constant)
* Refractory period (5 ms): avaialble Na fraction is too low for AP
* Nodes of Ranvier and myelin sheath: accelerates AP conduction

### Neurotransmitters

* Signaling molecules in the synaptic cleft
* AP -> Ca influx -> vesicle release -> receptor bindin -> graded potentials (EPSP/IPSP) -> recycle / degradation of neurotransmitters

## Neural models

* Features to reproduce: Integrating input, AP spikes, refractory period

### Electrical activity of neurons

* [Nernst equation](https://en.wikipedia.org/wiki/Nernst_equation) for one species of ion across a semipermeable membrane
* [GHK voltage equation](https://en.wikipedia.org/wiki/Goldman_equation) for multiple ions
* Quasi-ohmic assumption for ion channels $I_x = g_x (V_m-E_x)$
* Membrane as capacitor (1 $\mu F/ cm^2$)
* Equivalent circuit: An RC circuit

### HH model

* GHK voltage equation not applicable (not in steady state)
* Using Kirchhoff's current law to get voltage change over time
* Parameters from experiments on the squid giant axon
* K channel: gating variable n

$$
\begin{aligned}
g_K &= \bar g_Kn^4 \cr
\frac{dn}{dt} &= \alpha - n (\alpha + \beta)
\end{aligned}
$$

    α and β are determined by voltage (membrane potential)

* Na channel: two gating variables, m and h

  $$
  \begin{aligned}
   g_{Na} &= \bar g_{Na} m^3h \cr
   \frac{dm}{dt} &= \alpha_m - n (\alpha_m + \beta_m) \cr
   \frac{dh}{dt} &= \alpha_h - n (\alpha_h + \beta_h) \cr
   \end{aligned}
  $$

    `αs and βs are determined by voltage (membrane potential)`

### Considerations

* Model fidelity (biological relevance) vs simplicity (ease to simulate and analyze)
* Biological plausibility

## Dynamic system theory
A system of ODEs

e.g. Butterfly effect (chaos system): small deviation of initial conditions > huge different results

### Morris-Lecar neuron model

* Similar to the HH model (KCL)
* Ca, K, and Cl ions
* two state variables: voltage (V) and one variable (w) for K
* using tanh and cosh functions

#### Phase plane analysis

* Stability: Eigenvalues of rhs Jacobian matrix in the steady-state
* External current (Ie) = 0: single stable steady-state (interscetion of V and w nullclines)
* Increasing Ie: shifting V null cline => unstable steady-state (limit cycle)
* Bifurcation: V vs Ie

### Integrate and fire (IF) model

* A simple RC circuit
* Single state variable (V)
* Use of conditional statements to control spiking firing and refractory period
* Used in nengo (plus leaky = LIF model)
* Firing rate adaption: IF model + more terms

### Izhikevich model

* Two state variables
* Realistic spike patterns by adjusting parameters
* Could be used in large systems (100T synapses)

### Compartment model

* Spatial discretization for neuron models
* Coupled RC circuits -> FEM grids

## Filters

* Presynaptic AP -> synapse neurotransmitter release -> Postsynaptic potentials
* Approximated by an LTI(linear, time invariant) system
* Linear: superposition
* Time invariant: unchanged with time shifting
* Impulse response: given a impulse (delta function) -> h(t), transformed results
* Convolution: h(t) instead of the system itself
* Fourier transform: Convolution -> multiplication

## Synapse model
* Synapse = RC low pass filters with time scale = $\tau$
* $\tau$ is dependent on types of neurotransmittera and receptors

## Intro to brain

### Prerequisite

* Simple linear algebra (vector and matrix operations)
* Graph theory: connections

### Reverse enginering the brain

* engineeringchallenges.org
* Complexity, scale, connection, plasticiy, low-power
* Design: brain scheme; designer: natural selection

### Why a brain

* To survive and thrive.
* Brainless (single-celled organisms): simple preceptions and reactions. Some endogenous activity
* Simple brain (C. elegans): aversive response and body movement
  * Connectome routing study (as in EDA) showed 90% of the neurons are in the optimal positions
* General scheme: sensory -> CNS -> motor (with endogenous states (thoughts) in the CNS)

### Design constraints

* Information theory (information efficiency)
* Energy efficiency
* Space efficiency
* Human brain is already relatively larger than almost all animals

### Evolution of the brain in Cordates

* Dorsal neural tube -> differentialtion respecting sensory,motor, and inter connections

### Central pattern generator

* The brainless walking cat: endogenous activity in the spinal cord
* Main functioN unit in the CNS

## nengo programming

### Classes

* Network: model itself
* Node: input signal
* Ensemble: neuronss
* Coonnection: synapses
* Probe: output
* Simulator: simulator (literally)

### Integrator implementation

* Similar to the Euler method in numerical integration

$$
y[n] = A \{ y[n-1] + \Delta t x[n-1] \}
$$

```python
import matplotlib.pyplot as plt
import nengofrom nengo.processes
import Piecewise

# The model
model = nengo.Network(label='Integrator')

with model:
    # Neurons representing one number
    A = nengo.Ensemble(100, dimensions=1)

    # Input signal
    src = nengo.Node(Piecewise({0: 0, 0.2: 1, 1: 0, 2: -2, 3: 0, 4: 1,5: 0}))

    tau = 0.1

    # Connect the population to itself
    # transform: transformation matrix
    # synapse: time scale of low pass filter
    nengo.Connection(A, A, transform=[[1]], synapse=tau)
    nengo.Connection(src, A, transform=[[tau]], synapse=tau)
    input_probe = nengo.Probe(src)
    A_probe = nengo.Probe(A, synapse=0.01)

# Create our simulator
with nengo.Simulator(model) as sim:
    # Run it for 6 seconds
    sim.run(6)
# Plot the decoded output of the ensemble
plt.figure()
plt.plot(sim.trange(), sim.data[input_probe], label="Input")
plt.plot(sim.trange(), sim.data[A_probe], 'k', label="Integrator output")
plt.legend();
plt.show()
```

### Oscillator implementation

Harmonic oscillator: one 2nd order ODE -> two 1st order ODEs

$$
\begin{aligned}
  \frac{d^2x}{dt^2} &= -\omega^2 x \cr
  \vec{x} &= \begin{bmatrix}x \cr \frac{dx}{dt} \end{bmatrix} \cr
  \frac{d\vec{x}}{dt} &= \begin{bmatrix}0 & 1 \cr -\omega^2 & 1 \end{bmatrix} \vec{x} = A \vec{x}
\end{aligned}
$$

**nengo**:

$$
\begin{aligned}
  \vec{x} &= \begin{bmatrix}x_0 \cr x_1 \end{bmatrix} \cr
  \vec{x}[n] &= \begin{bmatrix}1 & \Delta t \cr-\omega^2\Delta t & 1 \end{bmatrix} \cr \vec{x}[n-1] &= B \vec{x}[n-1] \cr
\end{aligned}
$$

```python
import matplotlib.pyplot as plt
import nengo
from nengo.processes import Piecewise

# Create the model object
model = nengo.Network(label='Oscillator')

with model:
    # Neurons representing 2 numbers (dim = 2)
    neurons = nengo.Ensemble(200, dimensions=2)
    # Input signal
    src = nengo.Node(Piecewise({0: [1, 0], 0.1: [0, 0]}))
    nengo.Connection(src, neurons)
    # Create the feedback connection. Note the transformation matrix
    nengo.Connection(neurons, neurons, transform=[[1, 1], [-1, 1]], synapse=0.1)

    input_probe = nengo.Probe(src, 'output')
    neuron_probe = nengo.Probe(neurons, 'decoded_output', synapse=0.1)

# Create the simulator
with nengo.Simulator(model) as sim:
    # Run it for 5 seconds
    sim.run(5)

plt.figure()
plt.plot(sim.trange(), sim.data[neuron_probe])
plt.xlabel('Time (s)', fontsize='large')
plt.legend(['$x_0$', '$x_1$'])

data = sim.data[neuron_probe]
plt.figure()
plt.plot(data[:, 0], data[:, 1], label='Decoded Output')
plt.xlabel('$x_0$', fontsize=20)
plt.ylabel('$x_1$', fontsize=20)
plt.legend()
plt.show()
```

## Connectivity analysis
* Structural: anatomical structures e.g. water diffusion via DTI
* Functional: statisitc, dynamic weights
* Effective: causal interactions (presynaptic spikes -> postsynamptic firing)
* ref. 因果革命

### Microscale vs Macroscale
* Microscale: um ~ nm (synapses)
* Macroscale: mm (voxels) coherent regions

### Graph theory
* Node: brain areas (or neurons)
* Edges: connections (or synapses)
* Represented by adjacency matrices (values = connection weights)

### Types of networks
* Nodes in a circle; Connections in an adjacency matrix
* Measure: degrees of a node (inward / outward) / neighborhood (Modularity Q, Small-worldness S)

#### Random
Same edge probability

#### Scale-free
* Power law
* Fractal
* Increased robustness to neural damage

#### Regular
* Local connections only

#### Modular
* hierarchial clusters
* Built by attraction and repulson between nodes
* In some biological neural networks

#### Small world
* Similar to social networks, sparse global connections
* A few hubs (opinion leaders) with high degrees (connecting edges)
* Rich hub organization in biological neural networks (10 times the connections to the average)
* Anatomical basis (maximize space / energy efficiency)

## Neural Engineering Framework (NEF)
* By Eliasmith
* Intended for constant structures without synaptic plasticity
  * Compared to SNNs (with learning = synaptic plasticity)
* Nerual compiler (high level function <=> low level spikes)

### Central problems
* Stimuli detection (sensors)
* Representation / manipulation of information (sensory n.)
  * As spikes (pulse density modulation = PDM)
* Recall / transform (CNS)

### Heterogeneity in realistic neurla networks
* Different set of parameters for each neuron in response to stimuli
* Represented as *tuning curves*

### Building NEF models with nengo
* Hypothesis / data / structure from the real counterpart
* Build NEF and check behavior
* Rinse and repeat

### Central NEF principles

#### Representation
* Action potential: digital, non-linear encoding (axon hillock)
* Graded potential: analog, linear decoding (dendrite)
* Compared to ANNs:
  * dendrite = wieghted sum from other neurons
  * axon hillock: non-linear activation function (real number output)
* Examples: Physical values: heat, light, velocity, position
  * mimicking sensory neurons = transducer producing pulse signals

#### Transformation of encoding information by neuron clusters

#### Neual dynamics for an ensemble of neurons
HH mdoel, LIF, control theory

#### PS
* Neurons are noisy
* In the NEF: the basic unit is an ensemble of neurons
* Post synaptic current: approximated by one time constant

## Neuro representation

### Encoding / decoding
* Ensemble = Digital-analog converter like digital audio processing

### Symbols used when neural coding
* x: strength of external stimuli
* J(x): x-induced current
* $a(x) = G[J(x)]$: firing rate of spikes ≈ activation function in ANNs
* Most important parameters
  * $J_{th}$ (threshold current)
  * $\tau_{ref}$ (refractory period → maximal spiking rate)

### Populational encoding
A group of neurons determine the value by their spikes collectively.
Contrary to *sparse coding*.

#### Some linear algebra
* Any vector couldbe decomposed as an unique linear cmobination of basis vectors
* The most convienent ones are orthogonal bases e.g. sin / cos in Fourier series
* The stimuli through the ensemble could be estimated from the linear combination of wieghts of neurons with different tuning curves
* Simpleset : two neuron model (on and off)
* Adding more and more neurons differing in tuning curves (more bases) = more accurate representation

#### Optimal ensemble linear encoder
* Calculated by solving a linear system
* Nengo derives the best set of weights for an ensemble of neurons automatically
* Adding Gaussian noise in fact enhanced the robustness of the matrix of tuning cuves

### Example: horizontal eye position in NEF
* System description
  * Max firing rate = 300 Hz
  * On-off neurons
  * Goal: linear tuning curve
* How neurons work in abducens motor neuron: an integrator
* Populations, noise, and constraints
* Solution errors associated to the number of neurons
  * Noise error
  * Static error
  * Rounding error

### Vector encoding / decoding
* Similar to the scalar case, but replaced with vectors
* Automatically handled by the nengo framework

## Nengo examples
* `RateEncoding.py`
* `ArmMovement2D.py`

## Neural transformation
* Linear
* Non-linear
* Weighting: positive (excitatory) / negative (inhibitory)

### Multiplication
* Controlled integrator (memory)
* ref: `Multiplication.py`
* Traditional ANN counterpart: Neural clusters A and B fully connected to combination layer, respectively
* Making a subnetwork: factory function

### Communication channel
* Output of one ensemble => Input of another ensemble
* Traditional ANN counterpart: fully-connected layers
* $w_{ji} = \alpha_je_jd_i$
* nengo: simply `Connection(A, B)`

### Static gain `c` (multiplication with a scalar)
* $w_{ji} = c\alpha_je_jd_i$
* nengo: `Connection(A, B, transform=c)`

### Addition
* c = a + b
* nengo: `Connection(A, C); Connection(B, C)`
* Adding two vectors: just change `dimesion`

### Nonlinear transformation
* nengo: define a vector transformation functon  `f` => `Connection(A, B, function=f)`

### Negative weight
* An ensemble of inhibitory neurons

## Neural dynamics
* Neural control systems: non-linear, time-variant (modern control theory)

### Representation
* 1st order ODEs
* State variables as a vector
* $\mathbf{x}(t) = \mathbf{x}(t - \Delta t) + f(t - \Delta t, \mathbf{x}(t - \Delta t))$
* Example: cellular automata finite state machine (Game of life)

### Linear control theory
u: input, y: output, x: internal states
$\mathbf{\dot{x}}(t) = A \mathbf{\dot{x}}(t) + B \mathbf{u}(t)$
$\mathbf{y}(t) = C \mathbf{x}(t) + D \mathbf{u}(t)$

### Frequency response and stability analysis
* Laplace transform $L\{f(t)\} = \int^\infty_0e^{-st}f(t)dt = F(s)$
* Impulse response: $h(t) = \frac{1}{\tau}e^{-t/\tau}, \ H(s) = \frac{1}{1 + s\tau}$. Stable (pole at the left half plane)
* Convolution in the time domain = multiplication in the Laplace (s-domain)

### Neural population model
* Linear decoder for post-synaptic current (PSC)
  * $A^\prime = \tau A + I$
  * $B^\prime = \tau B$

### Recurrent connections
* Positive feedback: `Feedback1.py`
* Negative feedback: `Feedback2.py` (without stimuli), `Feedback3.py` (with stimuli)
* Dynamics: `Dynamics1.py` and `Dynamics2.py`: step stimuli + feedback
* Integrators: $A = \frac{-1}{\tau} I$
* Oscillators: $A = \begin{bmatrix} 0&1 cr\ -\omega^2&0 \cr \end{bmatrix}$

### Equations for different levels
* Nengo: higher level
* Implementation: lower rate / spiking levels

## Sensation and Perception
Environment (stimulation) (analog signal) -> sensory transduction (feature extraction) -> impulse signal (sensory nerve) -> perceptions (sensory cortex) -> processing (CNS) -> action selection (motor cortex) -> impulse signal (motor nerve) -> acuator(e.g. muscle) -> action

### Perception
* Internal representation of stimuli impulses
* The experience in the association cortex (not necessary the same as the outside world)
* Book: making uo the mind

### Psychophysica
e.g. Psychoacoustics: used in MP3 compression
* Threshold in quiet / noisy environment
* Equal-loudness contour in different frequencies
* Weber's law: change perceived in percent change $S = klg\frac{I}{I_0}$

## Vision
* Convergence of information inside retina
  * 260M photoreceptor cells indirectly connected to 2M ganglion (optic nerve) cells)
  * Dimension reduction (pooling / convolution)
* Need of learning to see (mechanism of amblyopia): Neural wiring in the visual tract and the visual cortex (training of CNNs)

### V1: primary visual cortex
* Detection of oriented edges, grouped by cortical columns with sensitivity to different angles
* Similar to the tuning curve in NEF

### Successively richer layers

Optic nerve -> LGN (thalamus) -> V1 -> V2 / V4 -> dorsal (metric) or ventral (identification) tracks

* Feature extraction
* Similar to convolutional neural network (CNNs)
  * Demonstrated in fMRI

### Ventral track
* **What** is the object?
* V2 / V4 -> Post. Inf. temporal (PIT) cortex -> Ant. Inf. temporal (AIT) cortex
* PIT: More complex features e.g. fusiform face area for fast facial recognition
* AIT: Classification of objects regardless of size, color, viewing angle...
  * Hyperdimensional vector (EECS) = semantic pointer (NEF)
  * Neural emsemble of 20000 in monkeys
* Thus the functions of the temporal lobe = categorizing the world:
  * Primary and associative auditory
  * Labeling visual objects
  * Language processing for both visual and auditory cues
  * Episodic memory formation by hippocampus

### Dorsal track
* **Where** is the object?
* V1 -> V2 -> V5 -> parietal lobe (visual association area)
* metrical information and mathematics
* Motion detection and information for further actions

### Ambiguous figures / optical illusions
Forms 2 attractors (intepretations)

e.g Necker cube

### Feedback
* External cue and expectation (top down perception)
* Report to LGN about the error

### Object perception
* In biology: robust recognition despite color, viewing angle differences (object consistency)
* View-dependent frame of reference vs. View-invariant (grammer pattern) frame of reference

## Autoencoders

### Ewert's central problems
* Preception: encoding stimuli from analog to digital spikes
* Central processing: transformation and recall of information, action selection
* Action execution: decoding digital spikes to response

### Autoencoder in traditional ANNs
* Compressing the input into a smaller (dim.) representation then expand to the estimation
  * Hyper dimension vector in CS
  * Semantic pointer in NEF
* Novelty detection: comparison of the input to the output from trained autoencoder

### Basic machine learning
* For y = f(x), find f
* Training, testing, validation sets
* Learning curves: overfitting if overtraining
* Cross validation to reduce overfitting and increase testing accuracy
  * K-fold cross validation
* SVM: once worked better than ANNs
  * Converting low dim but complex border to higer dim. simpler (even linear) border by trasnformation of data points

### Classical cognitive systems (expert system)
* Symbols and syntax processing (LISP)
* Failed due to low BP (unable to solve to meaning of symbols)
* Another attempt: connectionist (semantic space) => too complex
* Symbol binding system: 500M neurons to recognize simple sentences (fail)
* Until the semantic pointer hypothesis: explaining high level cognitive function
  * Halle Berry neurons (grandmother neurons): highly selective to one category instances (sparse coding)
  * However most instances are population coding

### Semantic pointer and SPA

* Equals to hyperdimensional vector in the mathematical sense
* Presented by an ensemble of neurons in biology
* The semantic space (hyperdimensional space) holds information features
  * Needs enough dimesions for the overwhelming number of concepts in the world
* Pointers = symbols = general concepts
  * Indirect addressing of complex information
  * Shallow and deep manipulation (dual coding theory)
  * Efficient transformation (call by address)
* Shallow semantics (e.g. text mining): symbols and stats only, does not encode the meaning of words
* Nengo: `nengo-spa`

### Encoding information in the semantic pointer
Circular convolution for syntax processing
* Readily extract the information in SP after filtered some noise
* Does not incur extra dimensions
* Works on reals numbers (XOR works on binaries only)
* Solves Jackendoff's challenges
  * Binding problem : red + square vs green + circle
  * Problem of 2: small star vs big star
  * Problem of variable: blue fly (n.) vs. blue fly(v.): binding restrictions
  * Binding in working memory vs long-term memory

One could coombine multiple sources of input (word, visual, smell, auditory)

## Action control

Behavioral pattern / coordination

### Affordance competition hypothesis
* Affordance part: continously updating the status
* Competition part: select best action by utility (spiking activity)
In biology:
* Premotor / supplementary motor cortex
  * Weighted summation of previously learned motor components (basis functions) -> desired movement
* Primary motor cortex
* Basal ganglia
  * Caudate, putamen, globus pallidus, SN
  * Excitation and inhibitory projections
  * Dopaminergic neurons: reward expectation: reinforcement learning
  * Movement initiation
  * Direct, indirect, and hyperdirect pathways
* Cerebellum
  * Learning and control of movements
  * Error-driven (similar to back propagation): supervised learning
* Hippocampus: self-organizing (Hebbian, STDP): unsupervised learning

### Neural optimal control hierachy (NOCH)
Computational model by students of Eliasmith, including:
* Cortex (premotor)
* cerebellum
* basal ganglia
* motor cortex
* brain stem and spinal cord

### Performing movement in robot arms
* Joint angle space [θ1, θ2, ...]: degree of freedom
* Operational space (end point vector)

High level -> mid level -> low level control signals

Similar to the latter half of autoencoder.

### Functional level model
Loop of
* Cortex: memory / transformations, crude selection
* Basal ganglia: utility -> action (cosine similarity)
* Thalamus: monitoring

### Rules for manipulation
* Symbols, fuzzy logic, but not compatible to neural networks
* Basal ganglia: manipulation
  $$
  \vec{s} = M_b \cdot \vec{w}
  $$
* Rehearsal of alphabet `sequence.py`

### Attention
Timing of neuron's response: ~15ms delay to make decision.

The less utility difference, the longer the latency.

* Parametric study on computational models

### Tower of Hanoi task
* Perceptural strategy from symbolic calculation is not biologically plausible in Eliasmith paper (not learning the rule).
* 150k neurons

### ACT-R architecture

Symbol -> neural networks

Comparative to fMRI BOLD signal.

## Learning and memory

Ref: Neuroeconomics, declision making and the brain.

Learning: stimulus altered behavior. Not hardwired.

Memory: storage of learned information.

### Learning in biology
* Neural level: synapse strength, neural gene expression
* Brain regions: coordination

### Machine learning
* Weight changes in synaptic connections
* Neural activity states: dynamic stability (attractor)

### Biological memories in detail
* Declarative (explicit) memory: medial temporal lobe and neocortex
  * Events (episodic): 5W1H, past experience
  * Facts (semantic): grammar, common sense (context-free)
* Non-declarative memory
  * Procedual: basal ganglia
  * Perceptual priming: short path for recall for previous stimuli
  * Conditioning: cerebellum
  * Non-associative: reflex
* Sensory memory: buffer
  * 9-10 sec for schoic (hearing)
  * 0.5 sec for iconic (vision)

### Conditioning
* Pavlov's dog: classical conditioning
* Skinner: operant conditioning
* Acquisition, extinction, spontaneous recovery (long-term memory)
#### Terms
* Memory: recall / recognize past experience
* Conditioning: associate event and response
* Learning: change behavior to stimuli
* Plasticity: change neural connections
  * Functional: chemical connection change
  * Structural: physical connection change

#### Hippocampus
Dentate gyrus -> CA3 -> CA1
* Long-term potentiation (LTP) upon high freq stimulation: enhances EPSP
* Long-term depression (LTD) upon los freq stimulation: inhibits EPSP
* Neural growth even at 40 y/o

#### Inside LTP / LTD
Neurotransmitters
* Glutamate (AMPAR, NMDAR) : excitary
* GABA: inhibitory

Second messengers (mid-term effcts)

### Learning rules
#### Hebbian
* Freud -> Hebb (1949): fire together, wire together

  $
  \Delta w = \epsilon\gamma_i\gamma_j
  $

  $\epsilon$: learning rate

  $\gamma_i$: postsynaptic firing rate

  $\gamma_j$: presynaptic firing rate

#### STDP
* Spike-time-dependent plasticity from experimental data
* Pre synaptic spike then post one: LTP
* Post synaptic spike then pre one: LTD

#### hPES rule
Limitations on weight change

$$
\Delta w_{ij} = \alpha_ja_{j}(k_1e_jE + k_2a_i(a_j - \theta))
$$

### Reinforcement learning
E.g. operant conditioning (Skinner)

#### Value
* Expected value $E[ x ]$
* Expected utility $U(E[ x ]) \approx log(E[ x ])$
* Basic axiomatic form (Pareto)
* Weak axioms of revealed perference (WARP)
* Generated axioms of revealed perference (GARP)

#### Value function V(s) and prediction error

$V_{k+1}(s_k) = (1-\alpha)V_k(s_k) + \alpha\delta_k$

Error: $\delta_k = r_k - V_k(s_k)$

For multiple stimuli: Rescorla-Wagner model

$V_k^{net} = \Sigma V_{k}(stim)$

#### Biological RL
Dopamine reward pathway for movement and motivation.

Increased dopamine secretion for a sudden reward. The same as Error: $\delta_k = r_k - V_k(s_k)$

#### Decision making
* Problem: no immediate ffeedback (reward) => need to think about the future and maximize aggregate reward
* Bellman equation: reduction of recursive reward with temporal difference ($V_k(S_{t+1})- V_k(S_t)$)

  $V(S_t) = r(S_t) + E[V(S_{t+1})|S_t]$

  $\delta_t = r_t + V_k(S_{t+1})- V_k(S_t)$
* Markov decision process
* Q learning
  * Q function $Q(s, \pi)$
  * Policy $\pi(s)$: mapping state to actions

  $Q_{t+1}(S_t, a_t) = Q_{t}(S_t, a_t) + \alpha\delta_t$

  $\delta_t = r_t \gamma_{max}Q_{t+1}(S_t, a_t) - Q_{t}(S_t, a_t)$

## SPAUN model
SPAUN = Semantic pointer architecture unified network, all things put together

* Single perceptual system (eye)
* Single motor system (arm)
* Background knowledge (SPA)
* Abilities
  * Smiliar to human in working mem limitations (3-7)
  * Behavior flexibility
  * Adaptation to reward
  * Confusion to invalid input
