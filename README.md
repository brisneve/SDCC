# SDCC: Spectrophotometric Determination of Chlorophyll Concentration

## Introduction

The package has functions to compute chlorophyll concentration measured using spectrophotometric method.

## Installation

To install and load this package, you can use the following codes:

``` r
devtools:: install_github("brisneve/SDCC")
library(SDCC)
```

## Functions

**Compute uncorrected chlorophyll a concentration**

``` r
compute_chlx(file, va, vw, df, pl)
```

**Compute corrected chlorophyll a concentration**

``` r
compute_chla(file1,file2 va, vw, df, pl)
```

**Compute pheophytin concentration**

``` r
compute_chla(file1,file2 va, vw, df, pl)
```

## Arguments

| Arguments     | Definition                                                                           |
|---------------|--------------------------------------------------------------------------------------|
| file or file1 | path of the .txt file containing the uncorrected chlorophyll a concentration dataset |
| file2         | path of the .txt file containing the corrected chlorophyll a concentration dataset   |
| va            | volume of acetone (mL)                                                               |
| vw            | volume of filtered water (L)                                                         |
| df            | dilution factor                                                                      |
| pl            | cell path length (cm)                                                                |

## Citation

Brisneve Edullantes (2023). SDCC: Spectrophotometric Determination of Chlorophyll Concentration. R package version 0.1.0.
