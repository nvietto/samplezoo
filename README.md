
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
      norm_2 = rnorm(n = 100, mean = 60, sd = 10),
      norm_3 = rnorm(n = 100, mean = 40, sd = 20),
      binom = rbinom(n = 100, size = 1, prob = runif(n = 100, min = 0, max = 1)),
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

  norm_2 norm_3 binom neg pois   exp unif beta gamma chi_sq t_dist f_dist
1  54.11  28.67     1   0    3  5.02 0.18 0.40  9.38   0.91  -1.47   1.27
2  63.45  59.60     1   0    2  3.22 0.24 0.07  7.10   0.40  -0.71   1.43
3  61.65  44.14     0   3    4  1.82 0.89 0.04  2.37   1.10  -0.75   0.64
4  48.12  47.52     0   0    4  3.39 0.65 0.36  8.10   1.16  -1.23   1.83
5  49.70  26.29     0   0    1 31.68 0.93 0.18  3.09   0.59   0.59   0.90
6  63.17  20.99     1   0    5  1.70 0.40 0.31  2.78   0.18  -1.20   0.91
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
