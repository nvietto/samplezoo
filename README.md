
<!-- README.md is generated from README.Rmd. Please edit that file -->

# samplezoo

<!-- badges: start -->
<!-- badges: end -->

{samplezoo} is designed to simplify working with probability
distributions, making it easier for users to teach and learn about
statistical sampling and probability models.

## Installation

You can install the development version of samplezoo from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("nvietto/samplezoo")
```

## Why samplezoo?

Creating or reprexing datasets on the [Posit
Community](https://forum.posit.co/) help forum, can be challenging,
especially for beginners. Similarly, building quick datasets to
demonstrate a problem for a lecture or to assign as homework can often
involve repetitive code that is both time-consuming and easy to forget.
To address these challenges and save time, {samplezoo} provides a
streamlined approach.

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

head(numeric_data)
```

With {samplezoo}, you can use one line of code:

``` r
library(samplezoo)

small_data <- samplezoo("small")

head(small_data)
```
