distributions <- list(
  small = function() {
    data.frame(
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
  },
  medium = function() {
    data.frame(
      norm = rnorm(n = 1000, mean = 50, sd = 15),
      norm_2 = rnorm(n = 1000, mean = 60, sd = 10),
      norm_3 = rnorm(n = 1000, mean = 40, sd = 20),
      binom = rbinom(n = 1000, size = 1, prob = runif(n = 1000, min = 0, max = 1)),
      neg = rnbinom(n = 1000, size = 1, prob = 0.50),
      pois = rpois(n = 1000, lambda = 3),
      exp = rexp(n = 1000, rate = 0.10),
      unif = runif(n = 1000, min = 0, max = 1),
      beta = rbeta(n = 1000, shape1 = 2, shape2 = 5),
      gamma = rgamma(n = 1000, shape = 2, scale = 2),
      chi_sq = rchisq(n = 1000, df = 5),
      t_dist = rt(n = 1000, df = 20),
      f_dist =rf(n = 1000, df1 = 10, df2 = 10)
    )
  },
  large = function() {
    data.frame(
      norm = rnorm(n = 10000, mean = 50, sd = 15),
      norm_2 = rnorm(n = 10000, mean = 60, sd = 10),
      norm_3 = rnorm(n = 10000, mean = 40, sd = 20),
      binom = rbinom(n = 10000, size = 1, prob = runif(n = 10000, min = 0, max = 1)),
      neg = rnbinom(n = 10000, size = 1, prob = 0.50),
      pois = rpois(n = 10000, lambda = 3),
      exp = rexp(n = 10000, rate = 0.10),
      unif = runif(n = 10000, min = 0, max = 1),
      beta = rbeta(n = 10000, shape1 = 2, shape2 = 5),
      gamma = rgamma(n = 10000, shape = 2, scale = 2),
      chi_sq = rchisq(n = 10000, df = 10),
      t_dist = rt(n = 10000, df = 30),
      f_dist =rf(n = 10000, df1 = 10, df2 = 10)
    )
  }
)
