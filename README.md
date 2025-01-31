
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
norm norm_2 norm_3 binom neg pois   exp unif beta gamma chi_sq t_dist f_dist
1 45.00  35.18  46.68     0   1    3  4.89 0.69 0.21  2.49   0.64  -0.80   2.39
2 48.92  45.07  -1.22     0   3    7 31.76 0.14 0.23  1.90   2.92  -0.19   0.62
3 54.17  63.60  81.81     0   0    1 19.51 0.06 0.52  2.83   0.63  -0.57   0.28
4 62.75  53.30  38.51     0   0    3  3.17 0.32 0.05  4.06   0.17   0.13   0.29
5 69.32  49.20  50.72     0   0    1 13.04 0.64 0.29  3.07   3.41   2.39   1.93
6 42.63  83.63  56.29     1   1    1  3.45 0.51 0.10  5.18   2.65  -1.07   0.84
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
