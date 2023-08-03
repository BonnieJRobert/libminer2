
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer2

<!-- badges: start -->
<!-- badges: end -->

The goal of libminer2 is to …

## Installation

You can install the development version of libminer2 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("BonnieJRobert/libminer2")
```

## Example

This is a basic example which shows you how to use libminer()

``` r
library(libminer2)
## basic example code
lib_summary()
#>                                                                                        library
#> 1                               /Library/Frameworks/R.framework/Versions/4.2/Resources/library
#> 2 /private/var/folders/2r/6k49zt2d4v136mzprwlcmymh0000gn/T/RtmpPPTsIP/temp_libpath7b7f4671ce50
#>   n_packages
#> 1        413
#> 2          1

#You can also ask it to calculate sizes
lib_summary(sizes = TRUE)
#>                                                                                        library
#> 1                               /Library/Frameworks/R.framework/Versions/4.2/Resources/library
#> 2 /private/var/folders/2r/6k49zt2d4v136mzprwlcmymh0000gn/T/RtmpPPTsIP/temp_libpath7b7f4671ce50
#>   n_packages   lib_size
#> 1        413 1976176352
#> 2          1      14421
```
