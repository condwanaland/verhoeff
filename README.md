
<!-- README.md is generated from README.Rmd. Please edit that file -->
verhoeff
========

This package is my take on implementing the Verhoeff algorithim for calculating check digits. My influence for the algorithims implementation was primarily from the wikipedia outline (<https://en.wikipedia.org/wiki/Verhoeff_algorithm>), and the paper by A. Dunn (Computer program for the calculation and validation of Verhoeff check digits, <https://www.ccamlr.org/en/wg-fsa-sam-05/11>)

Verhoeff is still undergoing most of its development. A CRAN release will be prepared after I've burned through most of the GH issues

Installation
------------

`verhoeff` is not (yet) on CRAN. You can install verhoeff from github with:

``` r
devtools::install_github("condwanaland/verhoeff")
```

Example
-------

To calculate the Verhoeff Check Digit for a given number, use `verhoeff_calculate`

``` r
library(verhoeff)
verhoeff::verhoeff_calculate(123)
#> [1] 3
```

To calculate for many numbers, just pass a vector.

``` r
verhoeff_calculate(c(1234, 5678, 9, 10))
#> [1] 0 8 1 9
```

If you would prefer the output to be in a list, with one check digit per element, use the `as_list` parameter.

``` r
verhoeff_calculate(c(1234, 5678, 9, 10), as_list = TRUE)
#> [[1]]
#> [1] 0
#> 
#> [[2]]
#> [1] 8
#> 
#> [[3]]
#> [1] 1
#> 
#> [[4]]
#> [1] 9
```

Other implementations
---------------------

See <https://github.com/fascinatingfingers/CheckDigit> for another implementation of check digits that considers more than just the Verhoeff algorithim.
