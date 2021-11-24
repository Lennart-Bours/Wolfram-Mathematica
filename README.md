<!-- To start a new line end the line with two spaces -->

# Wolfram-Mathematica

## Overview
A, examplary collection of Wolfram Mathematica packages and notebooks I wrote and used during my PhD thesis. Every file is briefly described below.

"SuperPackage" and "TSQUIPT thermal transport" were used for the computational modelling of the electronic and thermal transport properties of superconductor - 2 dimensional insulator - superconductor junction (also known as topological Josephson junction or TJJ) based devices. Parts of the code shared here was used to calculate the results presented in the following scientific papers:

> **I** *Topological SQUIPT Based on Helical Edge States in Proximity to Superconductors*  
> by **L. Bours**, B. Sothmann, M. Carrega, E. Strambini, E. M. Hankiewicz, L. W. Molenkamp, and F. Giazotto.  
> Phys. Rev. Applied 10, 014027 - Published 25 July 2018.  
> DOI: https://doi.org/10.1103/PhysRevApplied.10.014027

and

> **II** *Phase-Tunable Thermal Rectification in the Topological SQUIPT*  
> by **L. Bours**, B. Sothmann, M. Carrega, E. Strambini, A. Braggio, E. M. Hankiewicz, L. W. Molenkamp, and F. Giazotto.  
> Phys. Rev. Appl. 11, 044073 - Published 23 April 2019.  
> DOI: https://doi.org/10.1103/PhysRevApplied.11.044073

"SuperDataAnalysis" and "2. Ionic liqiud data analysis" were used for analyzing data collected in magneto-transport experiments on the topic of 'gate-controlled superconductivity'. The data and analysis are part of the following papers:

> **III** *Unveiling mechanisms of electric field effects on superconductors by a magnetic field response*  
> by **L. Bours**, M. T. Mercaldo, M. Cuoco, E. Strambini and F. Giazotto  
> Phys. Rev. Res. 2, 033353, - Published 2 September 2020  
> DOI: https://doi.org/10.1103/PhysRevResearch.2.033353

and 

> **IV** *Electrostatic field-driven supercurrent suppression in ionic-gated metallic Josephson nanotransistors*  
> by F. Paolucci, F. Crisà, G. De Simoni, **L Bours**, C. Puglia, E. Strambini, S. Roddaro, F. Giazotto  
> Prepublished on arXiv on 5 July 2021: arXiv:2107.00935 

## SuperPackage
The Notebook titled "SuperPackage.nb" is setup to automatically create the package "SuperPackage.m", which has been used in the notebook "1. TSQUIPT thermal transport". The package contains a collection of functions which describe the properties of a superconductor - 2D topological insulator - superconductor junction, such as the electrical and thermal conductance for various configurations.

Note that the package requires the two .dat files "gapnew" and "SuperElectronPhonon_Tc1.3K_gamma5x10^-4_Tbath25mK_mod" to be in the same folder.

## 1. TSQUIPT thermal transport
This notebook shows how the thermal transport properties of the TSQUIPT were calculated, using "SuperPackage". It contains calculations of thermal conductance, non-linear heat current, and thermal rectification of the device. These results are part of publication II.

## SuperDataAnalysis

This package contains a suite of standard functions that are used to import and analyze experimental data, collected using a custom LabVIEW program. Using this package, you can load .dat files. The data files structure is automatically recognized (i.e. the number of sweeps and column names), so the data can easily be partitioned in whatever way is convenient. Besides some generic data manipulation functions, the package also provides a set of functions which detect when a superconducting device switches to the normal state using IV measurments, since this is commonly required.

## 2. Ionic liquid data analysis



