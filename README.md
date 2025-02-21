
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
      bern = rbinom(n = 100, size = 1, prob = 0.50),
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
  norm norm_2 norm_3 bern neg pois   exp unif beta gamma chi_sq t_dist f_dist
1 63.81  57.53   7.04    0   2    4  0.75 0.96 0.05  3.12   2.18   1.60   2.24
2 66.55  55.87  32.81    1   0    4  0.62 0.63 0.52  5.61   4.85   0.62   2.51
3 53.37  55.03  54.22    1   8    2  9.68 0.17 0.26  3.74   0.14   0.12   1.06
4 57.02  65.00  29.82    0   0    3 46.11 0.44 0.28  1.72   1.82  -0.19   0.97
5 57.61  76.56  39.52    1   0    2 11.92 0.51 0.27  7.96   0.37  -0.05   2.06
6 52.06  72.36  84.90    0   1    3  2.74 0.19 0.02  2.42   9.40  -0.02   0.65
```

With {samplezoo}, you can use one line of code:

``` r
library(samplezoo)

small_data <- samplezoo("small")

small_data <- round(small_data, 2)

head(small_data)
```

``` r
    norm norm_2 norm_3 bern neg pois   exp unif beta gamma chi_sq t_dist f_dist
1  59.92  79.47  22.58    0   0    5  5.40 0.97 0.62 10.03   8.26   0.40   1.66
2  51.84  59.95  24.17    0   0    6  0.85 0.56 0.07  0.83   8.05   0.30   1.34
3  32.53  57.29  54.40    1   2    1  1.51 0.33 0.21  3.99   7.48  -0.86   0.53
4  69.13  52.97  44.06    1   0    4 10.04 0.94 0.17  1.45  10.28   1.31   2.33
5  47.54  78.79  51.02    1   1    4  3.34 0.53 0.50  1.44   9.47   1.41   1.76
6  59.90  53.15  49.71    1   0    2 20.85 0.93 0.36  8.23   2.97  -1.55   0.80
```
