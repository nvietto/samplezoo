
<!-- README.md is generated from README.Rmd. Please edit that file -->

# samplezoo <img src="man/figures/logo.png" align="right" width="120" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/nvietto/samplezoo/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/nvietto/samplezoo/actions/workflows/R-CMD-check.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/samplezoo)](https://CRAN.R-project.org/package=samplezoo)
[![](https://cranlogs.r-pkg.org/badges/grand-total/samplezoo)](https://CRAN.R-project.org/package=samplezoo)
<!-- badges: end -->

The {samplezoo} package simplifies the generation of samples from
various probability distributions, enabling users to quickly create
datasets for demonstrations, troubleshooting, or teaching. By
prioritizing simplicity and speed over the customization of sample
parameters, {samplezoo} is ideal for beginners or anyone looking to save
time when working with data.

## Installation

{samplezoo} is available on CRAN. Install using:

``` r
install.packages("samplezoo")
```

You can install the development version of samplezoo from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("nvietto/samplezoo")
```

## Example

Generating a dataset with various probability distributions typically
looks like this:

``` r
numeric_data <- data.frame(
      norm = rnorm(n = 100, mean = 50, sd = 15),
      norm_2 = rnorm(n = 100, mean = 60, sd = 10),
      norm_3 = rnorm(n = 100, mean = 40, sd = 20),
      binom = rbinom(n = 100, size = 1, prob = 0.50),
      neg = rnbinom(n = 100, size = 1, prob = 0.50),
      pois = rpois(n = 100, lambda = 3),
      exp = rexp(n = 100, rate = 0.10),
      unif = runif(n = 100, min = 0, max = 1),
      beta = rbeta(n = 100, shape1 = 2, shape2 = 5),
      gamma = rgamma(n = 100, shape = 2, scale = 2),
      chi_sq = rchisq(n = 100, df = 2),
      t_dist = rt(n = 100, df = 10),
      f_dist =rf(n = 100, df1 = 10, df2 = 10)
)

numeric_data <- round(numeric_data, 2)

head(numeric_data)
```

``` r
 norm norm_2 norm_3 binom neg pois   exp unif beta gamma chi_sq t_dist f_dist
1 30.15  57.61  66.26     1   2    2 13.46 0.60 0.17  0.18   2.15   0.09   1.82
2 31.57  67.80  39.17     1   0    6  3.12 0.77 0.13  7.66   2.23  -0.32   2.62
3 69.80  56.67  42.49     1   1    1  4.37 0.23 0.11  6.28   0.13  -0.61   0.27
4 40.03  64.09  44.28     1   0    4 11.57 0.88 0.15  1.71   0.02  -1.79   0.60
5 24.02  50.60  49.37     0   1    1  3.30 0.07 0.38  4.00   0.60   0.40   1.63
6 92.29  68.38  28.34     0   2    2 11.13 0.94 0.12  0.63   1.68   0.44   1.17
```

With {samplezoo}, you can use one line of code:

``` r
library(samplezoo)

small_data <- samplezoo("small")

small_data <- round(small_data, 2)

head(small_data)
```

``` r
   norm norm_2 norm_3 binom neg pois   exp unif beta gamma chi_sq t_dist f_dist
1 75.33  50.06  43.18     1   0    3 31.23 0.05 0.17  5.96   1.01   0.02   1.28
2 43.76  52.50   9.47     1   0    4  9.96 0.23 0.36  3.39   1.49  -0.70   1.15
3 44.48  61.26  22.44     0   1    3  1.18 0.17 0.41  4.99   0.47   0.42   0.78
4 47.62  56.66  22.36     1   0    6  6.27 0.43 0.22  0.66   3.54   0.99   0.72
5 55.92  46.84  59.63     0   1    3  0.54 0.94 0.33  5.86   4.26  -1.05   2.06
6 39.56  76.65  43.02     0   1    1 18.88 0.55 0.40  9.11   0.37   1.82   1.78
```
