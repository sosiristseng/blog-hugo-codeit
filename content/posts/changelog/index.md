---
title: "My progress note"
subtitle: ""
date: 2021-01-14T17:38:05+08:00
author: ""
authorLink: ""
description: ""

tags: []
categories: []

hiddenFromHomePage: true
hiddenFromSearch: true

featuredImage: ""
featuredImagePreview: ""

toc:
  enable: true
math:
  enable: false
lightgallery: false
---

## TO-DO

### Diabetes modeling

For beta-cell bioenergetcis and mitochondrial dynamics

Observations: from the Nature paper
- Basal NADH increase
- Little reaction to glucose for NADH, mitochondrial membrane potential, and respiratory rate

Proposed:
- Decreased PDH, ETC, F1Fo
- May increase Glycolysis
- May decrease Calcium uniporter


## 2020-12-16

### Fridlyand 2010 reference model

Added analysis code for fridlyand 2010 model to serve as a basis.

To test if later changes make the model too wild.

### Glucose protocol

Trying to add glucose from 5 mM to 10mM / 15mM from t = 100 instead of t = 0 using callbacks, but the model became unstable.

### Calcium dynamics

The addition of glucose would be shifted from `t=0` to `t=100` for more friendly figures.

I used timed callback for the discontinuity in the model.

Somehow numerical instability was noted upon addition of glucose at `t=100`. The old way of adding glucose at `t=0` worked fine abeit the same set of state variables.

Forcing positive domain yielded rejection by the solver.

(Updated on 12-17): You need to use a small `dt` for the large discontiuity in the ODE problem.

### Node and edge model

(Shah 2019 model)

Some translation work is on this [GitHub issue](https://github.com/sosiristseng/MitoDyn/issues/19).

The first thing I noticed was that their model had very small ratios of fusion / fission rates (0.0007 and 0.000003). Maybe it was one of the characteristics of their model with a large number of nodes.

(Updated on 12-17): The analysis showed half of the nodes are X1 (end point nodes).  Maybe `X1 / N` is analogous to `w1` in my ODE model.


## 2020-11-05

Manuscript 🩹 for mitochodrial dynamics would be focused on the relationship of bioenergetics (ATP) and network status (mitochondrial dynamics).

## 2020-11-03

Got emails about Ph. D. candidate and scholarship.

## 2020-11-01

Using the same "private" GitLab pages technique, my timeline was moved here to have better access control.

The ducument and layout were also more lightweight.

## 2020-10-31

[Mathematical descriptions](https://ntumito.gitlab.io/MitochondrialDynamics) for Mitochondiral dynamics model.

Login is required to access "private" GitLab pages.

## 2020-10-29

- Stored my progress to make it clearer (hopefully).
- Adapted and merged MOST report the the [manuscript](https://docs.google.com/document/d/1Ott5_ZYHgS7H9qR25xm1DWLDUsu9D9rhWGZ60CAZzp8/edit#).
  - Study aim
  - Improvement compared to others


## 2020-10-18

- 🚧 Fixing my personal computer in WanLong for RAM issues.
- 📓 [Python](https://github.com/NTUMitoLab/BEBI-5009/tree/main/python) notes @ [my knowledge base](https://sosiristseng.gitlab.io/).
- 🩹 Completed limitations of this model: [issue](https://giltab.com/sosiristseng/MitochondrialDynamics/issues/14)
- 🚧 : Sciwheel on Google docs stopped working. I could no longer insert citations. (Update: resolved)

## 2020-10-13

- Manuscript: Methods for the model
- Ditched the intermembrane space and utilized ANT flux and proton leak flux for fusion and fission rates, respectively.
  - No longer needs small dt

## 2020-08-25

- 🩹 Use adenylate energy charge to represent ATP/ADP/AMP levels
- 🩹 Fix the unstability problem by just setting the initial dt lower

## 2020-08-21

- 🩹 Bumped total adeninate pool from 4.0mM to 4.5 mM to get the same ATP/ADP ratio as reference model.
- 🩹 Tried to tweak parameters of NCLX but to no avail due to the strong dependence of mitochondrial membrane potential.
- 🩹 A [paper](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3614983/) that illustrates initial fragmentation and recovery (after 1h) during glucose stimulation.
- 🩹 Trying to make a multi-level model but I met with some numerical instability that needs to be fixed.

## 2020-08-12

- 🩹 Fixed a critical bug of the NADH Km of the NADH transporter. https://github.com/sosiristseng/mitodyn/issues/17#issue-672635006
- 🩹 [Pluto.jl](https://github.com/fonsp/Pluto.jl) reactive notebook for exploratory parameter estimation.
- 🩹 Fixing a bug in the NCLX by the original author. But the steady-state mitochodrial calcium became triphasic.
- 🩹 After fixing the mito Ca bug, I'll need to rescale the dynamics rate w.r.t ATP/ADP ratios since there was more ATP production after the fix.


## 2020-08-04

- 📓 Condensed some my previous notes [here](https://sosiristseng.github.io/). Mostly Linux-related.
- 📓 Git notes for doing code version control.
  - GitHub action and GitLab CI examples
- 🛠️ Created a GitHub [team](https://github.com/orgs/NTUMitoLab/teams/ode) but I'm not sure what can it do.
- 🛠️ Markdown files on GitHub could be linked to HackMD. Thank you [@steven](https://github.com/stevengogogo).
- 🛠️ Trying to stick to GitHub a little longer.
- 🩹 Limit pyruvate concentration
- 🩹 Tried Michaelis-Menten response for fusion rate. Works better and less artificial.
- 🩹 Manuscript here and there.
- 🏫 Looks like we have to resubmit the scholarship form again.🤷

## 2020-07-26

- 🩹 [Resolved] After imported from GitHub, constant pop-ups of errors about issue comment. I just replaced them with new ones.
- 📓 [Netlify mirror](https://sosiristseng.netlify.app/) for my notes, sourced from [GitLab](https://sosiristseng.gitlab.io/). While my blog sits in [GitHub](https://sosiristseng.github.io/). Best to try both.

### 📓 Example sites for future use

- [Technical documentation with markdown](https://gitlab.com/sosiris-eg/docsify)
- [Compiling LaTex on GitLab](https://gitlab.com/sosiris-eg/tex)
- [Scheduled](https://gitlab.com/sosiris-eg/periodic-release) [report generators](https://gitlab.com/sosiris-eg/changelog-generator)
- Blog on GitHub: one by [Hugo](https://github.com/sosiristseng/site-academic), and one by [Hexo](https://github.com/sosiristseng/site-hexo-next)

### 🛠️ Tooling

- Found some online repositories for bioimages (e.g. microscopy images) suggested by [Nature](https://www.nature.com/sdata/policies/repositories)
  - [IDR](http://idr.openmicroscopy.org/)
  - [DRYAD](https://datadryad.org/)
- 🚧 Found the cause of PopOS becoming unresponsive: an incompatible piece of software. And it was smooth as butter after removing it. Using a Ubuntu-based Linux is more coherent with the rest of the lab.


## 2020-07-22

- 📓 Start to record my progress here like a [scrum board](https://gitlab.com/sosiristseng/progress/-/issues/13#note_383006357) **Link unavailable as of now**
- 📓 Various notes website here with https://sosiristseng.github.io and https://sosiristseng.gitlab.io (mirror)
- 🚧 Tried an Ubuntu variant (PopOS) and the gnome shell became unresponsive after a while. I revert it back to Manjaro KDE (with KDE plasma 5.19)

## 2020-07-16

- 🩹 GitHub project management: boards, categorized issues
- 🩹 Collecting reference for manuscript introduction e.g. examples of other methods studying mitochondrial dynamics
- 🩹 Some manuscript structure
- 📓 [Website](https://sosiristseng.github.io) is online, powered by docsify

## 2020-07-09

> My memories are fading away as of 2 weeks later. 🤔 That's why one is supposed to keep a record.

- 🩹 Adding mitochodrial GTP had minimal effect on overall steady-state ATP concentrations and
- 🩹 Adding washout rate for Pyruvate did prevent it from overaccumulation
- 📓 My Blog powered by Hexo is online

## 2020-07-02

- 🩹 Pyruvate was accumulating in the ODE model. The flux of lactate dehydrogenase was low due to low cytosolic NADH.
- 🩹 The metabolites followed sinusoid glucose wave pattern due to the former have a much shorter timescale.
- 🩹 The custom fission / fusion rates looks good

## 2020-06-01

Coding for the ODE model and primitive mass action fission-fusion model

## 2020-05-03

### Editor
- 📓 Typora + pandoc as the best combination for local Markdown documentation writer in terms of:
  - Latex math
  - Table
  - MS Word `*.docx` output

### Model coding
- 📓 Use of specific concentrations ( $`A = S / Km`$ ) in the Laura's model descriptors.


## 2020-04-09

- 🚧 Preparing for qualification test

## 2020-03-23

- 🎉 Finally book chapter for neurodegenerative disease (NDD) is completed.
- 🩹 [Manuscript](https://docs.google.com/document/d/1Ott5_ZYHgS7H9qR25xm1DWLDUsu9D9rhWGZ60CAZzp8/edit#heading=h.gjdgxs) for mitochondrial dynamics

## 2020-03-15

- 🚧 Fixing book chapter for neurodegenerative disease (NDD)
- 📓 Julia referecne websites posted to NTU COOL

## 2020-03-09

- Julia reference websites posted to CEIBA
- Qualification test meta
- NDPK, Dynamin GTPase are in the steady-state due to rapid rate and localized GTP pool
- Move weekly reports to [Google docs](https://drive.google.com/drive/folders/1gIIKsMDF6HHnwEURsryNPA5sVBdPdJtr)

## 2019-06-25

Complex IV kinetics (Pannala, 2017): [Slides](https://docs.google.com/presentation/d/1QPpFew07uErRmtSQ7Wmt4k_3oj8cqJHx/edit)

## 2019-06-15

Issues about current Gauthier's cardiomyocyte models: [Google docs](https://docs.google.com/document/d/1a5yDhGWosFZHMQIzTmnh4iFOhNREmoUv/edit?dls=true)

## 2019-05-27

Cardiomyocyte model
-ETC kinetic modeling: [Google slides](https://docs.google.com/presentation/d/1_sNNBJDuWSkvLDGCdzgZS2Cm5q_z76ZA/edit)

## 2019-05-13

Cardiomyocyte model
- In silico cardiomyocyte model for DOX toxicity (De Oliveira, 2016): [Google Slides](https://docs.google.com/presentation/d/1JbTcYvjPRr0fTms3diP5nkiXVlH4Wjch/edit#slide=id.p1)
