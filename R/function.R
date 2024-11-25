samplezoo <- function(name) {

  if (!is.character(name)) { # handles both w/ and w/o ""
    name <- deparse(substitute(name))
  }

  valid_names <- c("small", "medium", "large")

  if (!name %in% valid_names) { # checks input
    stop("Invalid dataset name. Choose from: 'small', 'medium', 'large'.")
  }

  if (!name %in% names(distributions)) { # confirms whats in distributions
    stop("Dataset not defined in the distributions list.")
  }

  if (exists(name, envir = .GlobalEnv)) { # check if name already exists in GE
    stop(sprintf(
      "A dataset named '%s' already exists in the global environment. Remove it or choose a different name.",
      name
    ))
  }

  data <- distributions[[name]]() # pulls from distributions

  assign(name, value = data, envir = .GlobalEnv) # places in env

}
