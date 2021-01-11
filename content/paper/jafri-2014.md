---
title: "Jafri 2014 | Modeling Mitochondrial Function and Its Role in Disease"
date: 2020-10-23T00:09:22+08:00
tags: ["ODE"]
categories: ["Reading","Mitochondria"]
---


[Sciwheel](https://sciwheel.com/work/#/items/4481383)

[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4219577/)[^Jafri2014]

<!--more-->

## Introduction

* Mitochondria: ATP generator, signaling, apoptosis
* Related to diseases

Table1: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4219577/table/T1/
Table2: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4219577/table/T2/

## ENERGY METABOLISM

#### TCA cycle

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4219577/bin/nihms-638309-f0001.jpg "Tricarboxylic acid cycle")

#### Substrate entry into the TCA cycle
1. Pyruvate -> AcCoA
2. FA -> carnitine carrier system
3. Amino acids -> intermediates

### Oxidative phosphorylation
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4219577/bin/nihms-638309-f0002.jpg)
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4219577/bin/nihms-638309-f0003.jpg)
* mitochondrial membrane potential (Δψm): –160 to has –180 mV
* The proton gradient (ΔpH): 0.1 and 0.5
* F1F0-ATPase (ATP synthase) H/ATP ratio ≈ 3:1

### Substrate transport
* ATP/ADP translocase (ANT)
* phosphate carrier (PiC): H2PO4- / OH-
* malate–aspartate shuttle, the glutamine carrier, and the tricarboxylate carrier protein

### Ionic and substrate homeostasis
* mitochondrial calcium uniporter (MCU)
* Calcium is buffered in the matrix by binding to proteins, ATP, and ADP
* mitochondrial sodium–calcium (lithium) exchanger (mNCLX)

## MITOCHONDRIAL SIGNALING

### ROS signaling
* ROS: uperoxide (O2–), hydrogen peroxide (H2O2), and peroxynitrite (ONOO–)
* The amount of mitochondrial superoxide dismutase is 4 times that found in the cytoplasm of heart.
* H2O2: scavenged by GSH and Trx systems
### Calcium signaling

### ADP signaling

### Apoptosis

## MITOCHONDRIA IN DISEASE

### Ischemic disease
* Ischemia: reduced redox state => reperfusion (high ROS production)
*
### Neurodegenerative disease
* Alzheimer's disease, Parkinson's disease, Huntington's disease, and amyotrophic lateral sclerosis (ALS).
* symptoms are apparent before these proteinopathies are observed (AD)
* In Parkinson's disease, Huntington's disease, and ALS excessive levels of ROS have been observed

## MODELS OF MITOCHONDRIAL ENERGY METABOLISM
* Metabolic oscillations are oscillations in energy metabolism observed during ischemia (not glycolytic oscillations)
    * blocked by antagonists (BZDs) of the mitochondrial inner membrane ion channel (IMAC)
    * Jafri and Kotulska model: phosphate and magnesium
    * Cortassa model: ROS activated (RIRR)
* OXPHOS: push–pull mechanism
    * Magnus and Keizer model: including calcium dynamics
    * Bertram model: simplified version
    * ECME model: plus cardiac myocyte action potential and calcium dynamics
    * Nguyen–Dudycha–Jafri model: mitochondria in neurons
* Enzyme reactions: MM (saturation) kinetics
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4219577/bin/nihms-638309-f0004.jpg)
* The caveat with this is that the **reverse reaction** is not well constrained in experimental settings (initial product = 0). Sotheyare often ommited, not compliant to thermodynamics. Often not an issue since reverse reactions are negligible due to large free energy changes.

## MODELS OF MITOCHONDRIAL SIGNALING
* Hong model: cisplatin-induced apoptosis with ER-stress, TNF pathway

## CONCLUDING REMARKS
* there are many opportunities for the development and application of such models and their integration with experimental work

## Refrence
[^Jafri2014]: Jafri MS, Kumar R. Modeling mitochondrial function and its role in disease. Prog. Mol. Biol. Transl. Sci. 2014;123:103-125. doi:10.1016/B978-0-12-397897-4.00001-2. [PMC4219577](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4219577)
