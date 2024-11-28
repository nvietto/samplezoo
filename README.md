
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

## Motivation

Creating or reprexing datasets on the [Posit
Community](https://forum.posit.co/) help forum can be challenging,
especially for beginners. Similarly, building quick datasets for
lectures, troubleshooting, or homework assignments often involves
repetitive and time-consuming code that’s easy to forget. To simplify
these tasks and save some time, {samplezoo} provides a streamlined
approach to generating data sets.

For example, generating a dataset with various probability distributions
typically looks like this:

``` r
numeric_data <- data.frame(
      norm = rnorm(n = 100, mean = 50, sd = 15),
      norm2 = rnorm(n = 100, mean = 60, sd = 10),
      norm3 = rnorm(n = 100, mean = 40, sd = 20),
      binom = rbinom(n = 100, size = 1, prob = 0.20),
      neg = rnbinom(n = 100, size = 1, prob = 0.50),
      pois = rpois(n = 100, lambda = 3),
      exp = rexp(n = 100, rate = 0.10),
      unif = runif(n = 100, min = 0, max = 1),
      beta = rbeta(n = 100, shape1 = 2, shape2 = 5),
      gamma = rgamma(n = 100, shape = 2, scale = 2),
      chisq = rchisq(n = 100, df = 2),
      t_dist = rt(n = 100, df = 10)
)

numeric_data <- round(numeric_data, 2)

head(numeric_data)
```

``` r

   norm norm2 norm3 binom neg pois   exp unif beta gamma chisq t_dist
1 46.38 73.25 34.66     0   4    4  8.49 0.89 0.32  1.30  2.94  -0.71
2 55.60 60.73 34.37     0   0    2  7.26 0.08 0.20  2.98  1.23  -0.88
3 42.81 68.03 18.15     0   1    0  0.02 0.70 0.17  2.18  3.89  -0.75
4 26.75 62.36 -3.14     0   0    3 11.92 0.05 0.20  8.72  2.16  -1.24
5 51.77 67.96 13.18     0   0    2  3.90 0.34 0.04  5.58  1.22  -0.74
6 65.95 64.32 38.59     0   0    2  6.85 0.04 0.29  8.12  4.32   0.88
```

With {samplezoo}, you can use one line of code:

``` r
library(samplezoo)

small_data <- samplezoo("small")

small_data <- round(small_data, 2)

head(small_data)
```

``` r

   norm norm2 norm3 binom neg pois   exp unif beta gamma chisq t_dist
1 21.96 57.23 24.31     0   1    3  0.66 0.95 0.20  2.97  3.75  -0.05
2 51.54 60.12 55.61     0   1    3 24.26 0.01 0.25  2.25  8.63  -0.36
3 46.76 63.80 15.81     0   0    7 16.84 0.27 0.14  3.47  6.60  -0.49
4 44.86 58.63 37.32     1   1    4  8.58 0.70 0.22  1.26  0.92  -0.04
5 47.39 43.17 72.43     0   1    2  0.83 0.13 0.11  1.28  0.68  -1.04
6 57.07 71.30 19.79     0   1    4  1.14 0.47 0.18  1.35  3.35   1.44
```
