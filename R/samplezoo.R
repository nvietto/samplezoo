#' Generate Samples with a Variety of Probability Distributions
#'
#' @param name A character string specifying the dataset size.
#' The three dataset sizes are:
#' - `small`: Generates a data frame with 100 samples per distribution.
#' - `medium`: Generates a data frame with 1,000 samples per distribution.
#' - `large`: Generates a data frame with 10,000 samples per distribution.
#' @return A dataset containing variables with common distributions.
#' @details
#' The distributions included in each data frame are:
#' - `norm`: Normal distribution with mean and standard deviation parameters.
#' - `norm_2`: Slight variation of the normal distribution.
#' - `norm_3`: Another slight variation of the normal distribution.
#' - `bern`: Bernoulli distribution.
#' - `neg`: Negative binomial distribution.
#' - `pois`: Poisson distribution.
#' - `exp`: Exponential distribution.
#' - `unif`: Uniform distribution.
#' - `beta`: Beta distribution.
#' - `gamma`: Gamma distribution.
#' - `chi_sq`: Chi-squared distribution.
#' - `t_dist`: Student's t-distribution.
#' - `f_dist`: F-distribution.
#' @export
#' @examples
#' small_data <- samplezoo("small")
#' medium_data <- samplezoo("medium")
#' large_data <- samplezoo("large")
samplezoo <- function(name) {

  if (!is.character(name)) { # char string check
    stop("Name must be enclosed in quotes.")
  }

  valid_names <- c("small", "medium", "large")
  if (!name %in% valid_names) { # checks input
    stop("Invalid dataset name. Choose from: 'small', 'medium', 'large'.")
  }

  if (!name %in% names(distributions)) { # confirms whats in distributions
    stop("Dataset not defined in the distributions list.")
  }

  data <- distributions[[name]]() # pulls from distributions
}
