# Mitochondrial dynamics, cellular energetics, and insulin secretion in summary


Mitochondrial dynamics, cellular energetics, and insulin secretion.

<!--more-->

## Phosphoenolpyruvate carboxykinase (PEPCK)
From Stark and coworkers [^Stark2014]
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3943549/bin/nihms-535670-f0002.jpg)

* GTP from the citric acid cycle (succinyl-CoA synthetase) consumed by mitochondrial PEPCK (PEPCK-M), converting OAA to PEP, which is then exported to cytosol for ATP or gluconeogenesis
* Balance (anaplerosis/cataplerosis) of CAC intermediates
* Glucose stimulated insulin secretion (GSIS) (mitochondrial GTP enhances insulin secretion
[^Kibbey2007])
* Cytosolic PEPCK not expressed in beta cells

## Cristae
* cristae = inner floding of IMM [^Pernas2016]
* Concentrated in ETC complexes, localized proton gradient for efficient ATP synthesis in OXPHOS
* Dynamic structures stablized by ATP synthase (complex V) and OPA1[^Frezza2006][^Pernas2016]

## Mitochondrial fission and fusion
* ALK mitochondrial dynamics
* Present in a variety of cell types [^Kuznetsov2009] (neurons, islet beta cells, even cardiomyocytes[^Piquereau2013])
* MFN1 and MFN2 fuse the OMM, whereas OPA1 fuses the IMM and remodels cristae. DRP1 coordinates with the ER and mediated fission.
* Disrupted dynamics alter mitochondrial performance and metabolism[^Stiles2012]. Either overexpression (decreased ATP) or knock-out (fragmented) of OPA1 disrupt mitochondrial morphology and function.
* Time scale: 5-20 min (for INS cells[^Pernas2016]) vs 5-20 days (CMCs[^Piquereau2013])
* Mitochondria are able to adjust their morphology and their location depending on energy needs and metabolic conditions, either physiological and pathological ones. e.g. cell cycles in INS 832/13 cells[^Montemurro2017]
  ![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5731404/bin/kccy-16-21-1361069-g008.jpg)
* Unhealthy mitochondria cannot fuse with healthy ones and subject to autophagy, as a quality control (QC) process.
* Recent review with good figures[^Rovira2017]
  ![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5284490/bin/gr1.jpg)
  ![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5284490/bin/gr2.jpg)
  ![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5284490/bin/gr3.jpg)
  ![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5284490/bin/gr4.jpg)

## Diabetes
* Glucolipotoxicity
* Impaired GSIS
* Alter morphology (fragmentation)[^Stiles2012] upon high glucose + lipid
* Inhibition of mitochondrial metabolism demonstrated in multiomics study[^Haythorne2019], showing enhanced expression of glycolysis and inhibition of mitochondrial CAC enzymes
* Potential ROS damage due to hyperpolarized mitochondria and limited capacity of defense against oxidative stress[^Fridlyand2010]
* Bad mitochondrial QC
* type 2 diabetes (T2D) is related to the reduced expression of Mfn2, which depresses oxidative phosphorylation (OXPHOS) and impairs mitochondrial fusion in skeletal muscle[^Dai2019]
* insulin increases Opa1 levels and promotes mitochondrial fusion in cardiomyocytes, which enhances OXPHOS, whereas Opa1 deletion suppresses the insulin-stimulated ATP synthesis[^Dai2019]
* Opa1 deletion in pancreatic β cells impairs glucose-stimulated adenosine triphosphate (ATP) production and insulin secretion, which subsequently develops into hyperglycemia[^Dai2019]
* Drp1-mediated mitochondrial fission results in mitochondrial fragmentation along with decreased ATP content, which further leads to reduced insulin-mediated glucose uptake in human skeletal muscle[^Dai2019]

## Role of mitochondrial dynamics in ageing
From Sharma, 2019 [^Sharma2019]
* decreased mitochondrial function, increased mitochondrial  reactive  oxygen  species  (ROS)  production,  and increased mitochondrial DNA (mtDNA) mutations are causally linked to aging
* the state of mitochondrial morphology, whether fused or fragmented, has a direct consequence on all of the above-mentioned mitochondrial functions. Mitochondrial  dynamics  themselves undergo alterations with age
![](https://i.imgur.com/5Lenbj1.png "Mitochondrial functions")
* proteins (Drp-1, Fis-1) involved in mitochondrial network fission decline with age
* promoting mitochondrial fission can increase or decrease mitochondrial fitness and function depending on the tissue or even organism.

## Mathematical modeling strategies
* Simple ODE model for mitochodnria dynamics[^Kornick2019]
* ODE system for energy metabolism[^Fridlyand2010], with simplifications and improvements from the Magnus and Keiser model[^Magnus1997]

## References

[^Stark2014]: Stark, R., & Kibbey, R. G. (2014). The mitochondrial isoform of phosphoenolpyruvate carboxykinase (PEPCK-M) and glucose homeostasis: has it been overlooked? Biochimica et Biophysica Acta, 1840(4), 1313–1330.

[^Piquereau2013]: Piquereau, J., Caffin, F., Novotova, M., Lemaire, C., Veksler, V., Garnier, A., Ventura-Clapier, R., et al. (2013). Mitochondrial dynamics in the adult cardiomyocytes: which roles for a highly specialized cell? Frontiers in physiology, 4, 102.

[^Kuznetsov2009]: Kuznetsov, A. V., Hermann, M., Saks, V., Hengster, P., & Margreiter, R. (2009). The cell-type specificity of mitochondrial dynamics. The International Journal of Biochemistry & Cell Biology, 41(10), 1928–1939.

[^Frezza2006]: Frezza, C., Cipolat, S., Martins de Brito, O., Micaroni, M., Beznoussenko, G. V., Rudka, T., Bartoli, D., et al. (2006). OPA1 controls apoptotic cristae remodeling independently from mitochondrial fusion. Cell, 126(1), 177–189.

[^Montemurro2017]: Montemurro, C., Vadrevu, S., Gurlo, T., Butler, A. E., Vongbunyong, K. E., Petcherski, A., Shirihai, O. S., et al. (2017). Cell cycle-related metabolism and mitochondrial dynamics in a replication-competent pancreatic beta-cell line. Cell Cycle, 16(21), 2086–2099.

[^Kornick2019]: Kornick, K., Bogner, B., Sutter, L., & Das, M. (2019). Population dynamics of mitochondria in cells: A minimal mathematical model. Frontiers in physics, 7.

[^Kibbey2007]: Kibbey, R. G., Pongratz, R. L., Romanelli, A. J., Wollheim, C. B., Cline, G. W., & Shulman, G. I. (2007). Mitochondrial GTP regulates glucose-stimulated insulin secretion. Cell Metabolism, 5(4), 253–264.

[^Pernas2016]: Pernas, L., & Scorrano, L. (2016). Mito-Morphosis: Mitochondrial Fusion, Fission, and Cristae Remodeling as Key Mediators of Cellular Function. Annual Review of Physiology, 78, 505–531.

[^Fridlyand2010]: Fridlyand, L. E., & Philipson, L. H. (2010). Glucose sensing in the pancreatic beta cell: a computational systems analysis. Theoretical Biology & Medical Modelling, 7, 15.

[^Magnus1997]: Magnus, G., & Keizer, J. (1997). Minimal model of beta-cell mitochondrial Ca2+ handling. The American Journal of Physiology, 273(2 Pt 1), C717-33.

[^Haythorne2019]: Haythorne, E., Rohm, M., van de Bunt, M., Brereton, M. F., Tarasov, A. I., Blacker, T. S., Sachse, G., et al. (2019). Diabetes causes marked inhibition of mitochondrial metabolism in pancreatic β-cells. Nature Communications, 10(1), 2474.

[^Stiles2012]: Stiles, L., & Shirihai, O. S. (2012). Mitochondrial dynamics and morphology in beta-cells. Best Practice & Research. Clinical Endocrinology & Metabolism, 26(6), 725–738.

[^Dai2019]: Dai, W., & Jiang, L. (2019). Dysregulated mitochondrialdynamics and metabolism in obesity, diabetes, and cancer. Frontiers in endocrinology, 10, 570.

[^Rovira2017]: Rovira-Llopis, S., Bañuls, C., Diaz-Morales, N., Hernandez-Mijares, A., Rocha, M., & Victor, V. M. (2017). Mitochondrial dynamics in type 2 diabetes: Pathophysiological implications. Redox biology, 11, 637–645.

[^Sharma2019]: Sharma, A., Smith, H. J., Yao, P., & Mair, W. B. (2019). Causal roles of mitochondrial dynamics in longevity and healthy aging. EMBO Reports, 20(12), e48395.

