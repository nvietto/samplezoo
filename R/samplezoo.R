#' Generate a Sample Dataset
#' Retrieves a dataset of the specified size (`small`, `medium`, or `large`) from
#' the pre-defined `distributions` list. Each dataset contains random variables
#' from various probability distributions.
#' @param name A character string specifying the dataset size. Must be one of:
#'   `"small"`, `"medium"`, or `"large"`.
#' @return A data frame containing simulated data with random variables from
#'   different distributions:
#' \describe{
#'   \item{`norm`}{Normal distribution.}
#'   \item{`norm2`, `norm3`}{Variations of normal distributions.}
#'   \item{`binom`}{Binomial (Bernoulli) distribution.}
#'   \item{`neg`}{Negative binomial distribution.}
#'   \item{`pois`}{Poisson distribution.}
#'   \item{`exp`}{Exponential distribution.}
#'   \item{`unif`}{Uniform distribution.}
#'   \item{`beta`}{Beta distribution.}
#'   \item{`gamma`}{Gamma distribution.}
#'   \item{`chisq`}{Chi-squared distribution.}
#'   \item{`t_dist`}{Student's t distribution.}
#' }
#' @details
#' The `distributions` list defines the datasets for three sizes:
#' \itemize{
#'   \item `"small"`: 100 samples per distribution.
#'   \item `"medium"`: 1,000 samples per distribution.
#'   \item `"large"`: 10,000 samples per distribution.
#' }
#' This function checks the validity of the `name` parameter and retrieves
#' the corresponding dataset from the `distributions` list.
#' @examples
#' # Generate a small dataset
#' small_data <- samplezoo("small")
#' # Generate a medium dataset
#' medium_data <- samplezoo("medium")
#' # Generate a large dataset
#' large_data <- samplezoo("large")
#' @export
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
