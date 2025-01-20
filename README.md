
<!-- README.md is generated from README.Rmd. Please edit that file -->

# foldchanger <img src="man/figures/logo.png" align="right" height="250" alt=""/>

<!-- badges: start -->
<!-- badges: end -->

foldchanger is a package for performing fold change calculations.

These calculations are used for the detection of genetic copy number
variants by next generation sequencing. I am building foldchanger as a
mini-project to teach myself R package development.

## Installation

You can install the development version of foldchanger from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("joe-m-shaw/foldchanger")
```

## Usage

foldchanger provides a bunch of helpful functions to make interacting
with fold changes and log2ratios easier.

For example, `foldchanger::pred_cpc` can be used to predict the copies
per cell (CPC) of genes within a tumour sample, based on neoplastic cell
content (NCC) and fold change.

Let’s imagine you measure a fold change of 11 for the *EGFR* gene in a
tumour sample with an NCC of 65%:

``` r
library(foldchanger)
pred_cpc(fc = 11, ncc = 65, dir = "gain")
#> [1] 33
```

Then you want to predict what fold change you would see if you had a
sample with 109 copies of *EGFR* per tumour cell and an NCC of 26%:

``` r
pred_fc(tumour_cpc = 109, ncc = 26, dir = "gain")
#> [1] 14.9
```

Or you want to `change` between the two forms of fold change and
log2ratio:

``` r
change(1, from = "fcgain", to = "log2r")
#> [1] 0

change(-1, from = "log2r", to = "fcloss")
#> [1] -2
```
