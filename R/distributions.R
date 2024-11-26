distributions <- list(
  small = function() { # using a function keeps values mutable, allowing set.seed to work
    data.frame(
      norm = rnorm(n = 100, mean = 50, sd = 15),
      norm2 = rnorm(n = 100, mean = 60, sd = 10), # Smaller spread normal dist
      norm3 = rnorm(n = 100, mean = 40, sd = 20), # Larger spread normal dist
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
  },
  medium = function() {
    data.frame(
      norm = rnorm(n = 1000, mean = 50, sd = 15),
      norm2 = rnorm(n = 1000, mean = 60, sd = 10),
      norm3 = rnorm(n = 1000, mean = 40, sd = 20),
      binom = rbinom(n = 1000, size = 1, prob = 0.20),
      neg = rnbinom(n = 1000, size = 1, prob = 0.50),
      pois = rpois(n = 1000, lambda = 3),
      exp = rexp(n = 1000, rate = 0.10),
      unif = runif(n = 1000, min = 0, max = 1),
      beta = rbeta(n = 1000, shape1 = 2, shape2 = 5),
      gamma = rgamma(n = 1000, shape = 2, scale = 2),
      chisq = rchisq(n = 1000, df = 5),
      t_dist = rt(n = 1000, df = 20)
    )
  },
  large = function() {
    data.frame(
      norm = rnorm(n = 10000, mean = 50, sd = 15),
      norm2 = rnorm(n = 10000, mean = 60, sd = 10),
      norm3 = rnorm(n = 10000, mean = 40, sd = 20),
      binom = rbinom(n = 10000, size = 1, prob = 0.20),
      neg = rnbinom(n = 10000, size = 1, prob = 0.50),
      pois = rpois(n = 10000, lambda = 3),
      exp = rexp(n = 10000, rate = 0.10),
      unif = runif(n = 10000, min = 0, max = 1),
      beta = rbeta(n = 10000, shape1 = 2, shape2 = 5),
      gamma = rgamma(n = 10000, shape = 2, scale = 2),
      chisq = rchisq(n = 10000, df = 10),
      t_dist = rt(n = 10000, df = 30)
    )
  }
)
