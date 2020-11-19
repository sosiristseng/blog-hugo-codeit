---
title: "Nobile 2016"
date: 2020-10-23T00:28:01+08:00
tags: ["GPU"]
categories: ["Reading","Math"]

---

Graphics processing units in bioinformatics, computational biology and systems biology

[Sciwheel](https://sciwheel.com/work/#/items/5237369)

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5862309/)[^Nobile2016]

<!--more-->

## Introduction
* Bioinformatics, Computational Biology and Systems Biology exploit either physico-chemical or mathematical modeling, characterized by different scales of granularity, abstraction levels and goals
* All of them are computationally challenging
* high-performance computing (HPC): computer clusters and grid computing, **GPU**
* From the point of view of the software developer, GPU programming still remains a challenging task (GPUs are quite different from CPUs)
* Nvidia’s CUDA (Compute Unified Device Architecture) is the most used library
* C/C++ are used most. Python is catching up.
## Sequence alignment
*  high-throughput next-generation sequencing (NGS) methods
* hash tables vs suffix/prefix trees

## Molecular dynamics
* Molecular dynamics is computationally challenging: the length of the time step of a simulation is generally limited to <5 fs, while the overall time of the phenomenon is, typically, in the order of ns or s.
* A CUDA implementation of generalized explicit solvent all-atom classic molecular dynamics within the **AMBER** package (Titan V error warning!)

## Molecular docking
* protein–protein, protein–ligand or protein–DNA complex
* major challenge concerns the sampling of the conformational space

## Prediction and searching of molecular structures
## Simulation of spatio-temporal dynamics

## Deterministic simulation (ODE)
* Parallel simulation of biological molecular networks
* a CUDA implementation of the LSODA algorithm, named cuda-sim, was presented by Zhou et al.
    *  converting a SBML model into CUDA code
* Nobile et al.: cupSODA, cupSODA*L

## Stochastic simulation (SDEs, SSA)
* randomness can be described either by means of Stochastic Differential Equations (SDEs) or using explicit mechanistic models e.g. stochastic simulation algorithm (SSA)
* CUDA version of SSA: 130× speed-up with respect to the sequential simulation on the host computer.
* Komarov and D’Souza: GPU-ODM
* τ-leaping algorithm: **cuTauLeaping** by Nobile (three orders of magnitude faster)

## Spatial simulation (PDEs)
* Reaction-Diffusion (RD) models
* Toolboxes for PDEs running on GPUs
* Stochastic RD models: subvolumes (similiar to PDEs) vs agent-based models (ABMs, molecules are modeled as individual particles)

## Agent-based models (ABMs)
* FLAME is a general-purpose simulator of ABMs, which exploits GPU acceleration.
* www.flamegpu.com

## Applications in Systems Biology
* sensitivity analysis, parameter estimation, parameter sweep analysis: large number of simulations to explore the high-dimensional search space of possible model parameterizations, suitable for GPUs
* Nobile et al. proposed a parameter estimation methodology based on a multi-swarm version of Particle Swarm Optimization (PSO), using a CUDA-powered version of SSA
* cuRE integrates this parameter estimation methodology with Cartesian Genetic Programming
* ABC-SysBio, a **Python-based** and GPU-powered framework based on approximate Bayesian computation

## Discussion
* many of the most performing tools required a tailored implementation to fully leverage the GPU architecture and its theoretical peak performance
    * skillful usage of shared memory and asynchronous data transfers
    * GPU-optimized data structures
    * naïve porting of an existing software to CUDA is generally doomed to failure.
* OpenCL, for instance, is an open standard suitable for parallel programming of heterogeneous systems. But is more difficult to code in OpenCL.
* Swan: porting CUDA code to OpenCL without rewriting
    * ROCm is doing the same thing
* A potential drawback of GPUs is the availability of **memory**, esp for genome-wide data
    * NV link: links two or more GPUs

## References
[^Nobile2016]: Nobile MS, Cazzaniga P, Tangherloni A, Besozzi D. Graphics processing units in bioinformatics, computational biology and systems biology. Brief Bioinform. 2016;18(5):870-885. [PMC5862309](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5862309/).
