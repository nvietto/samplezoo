
<!-- README.md is generated from README.Rmd. Please edit that file -->

# samplezoo

<!-- badges: start -->
<!-- badges: end -->

{samplezoo} is designed to simplify generating samples with various
probability distribution, making it easier for users to create data
frames quickly.

## Installation

You can install the development version of samplezoo from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("nvietto/samplezoo")
```

## Motivation

Creating or reprexing datasets on the [Posit
Community](https://forum.posit.co/) help forum, can be challenging,
especially for beginners. Similarly, building quick datasets to
demonstrate a problem for a lecture, to troubleshoot, or to even assign
as homework can often involve repetitive code that is both
time-consuming and easy to forget. To address these challenges and save
time, {samplezoo} provides a streamlined approach.

For example, generating a dataset with various probability distributions
typically looks like this:

``` r
numeric_data <- data.frame(
  Variable1 = rnorm(100, mean = 50, sd = 10),
  Variable2 = runif(100, min = 0, max = 100),
  Variable3 = rpois(100, lambda = 5),
  Variable4 = rbeta(100, shape1 = 2, shape2 = 5),
  Variable5 = rexp(100, rate = 0.1),
  Variable6 = rchisq(100, df = 4),
  Variable7 = rbinom(100, size = 10, prob = 0.5),
  Variable8 = rt(100, df = 10),
  Variable9 = rnorm(100, mean = 100, sd = 20),
  Variable10 = rgamma(100, shape = 2, rate = 0.2)
)

numeric_data <- round(numeric_data, 2)

head(numeric_data)
```

``` r

Variable1 Variable2 Variable3 Variable4 Variable5 Variable6 Variable7 Variable8 Variable9 Variable10
1     33.99      2.66         6      0.73      1.48      1.56         6      1.03    111.61      11.57
2     43.65     12.66         4      0.56      7.17      0.19         4      1.13    109.25       7.07
3     49.69     41.41         5      0.50     14.71      3.25         4      0.13    101.86      10.08
4     44.02      5.97         8      0.43      9.22      2.75         4      1.07     79.97       6.54
5     64.74     90.74         6      0.37      2.15      1.26         4      0.48    113.79      16.18
6     38.68     93.52         2      0.28      0.85      4.51         5     -0.17     93.28      16.91


```

With {samplezoo}, you can use one line of code:

``` r
library(samplezoo)

small_data <- samplezoo("small")

small_data <- round(small_data, 2)

head(small_data)
```

``` r

   norm norm2 norm3 binom neg pois   exp unif beta gamma chisq
1 66.80 55.43 46.57     0   0    3  6.43 0.21 0.18  3.90 11.33
2 60.50 57.74 48.67     1   1    8  2.43 0.40 0.46  2.44  5.08
3 36.27 46.68  2.96     0   0    3  0.72 0.30 0.22  4.03  3.67
4 43.61 73.82 60.48     0   4    3 15.21 0.68 0.19  6.45  3.68
5 77.62 54.93 55.14     0   0    3 10.65 0.36 0.12  2.91  0.14
6 55.90 65.42 71.10     0   2    5 13.48 0.52 0.42  2.04  1.54
```
