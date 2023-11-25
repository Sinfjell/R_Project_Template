load_libraries <- function() {
  libraries <- c("dplyr", "tidymodels")
  for (lib in libraries) {
    if (!require(lib, character.only = TRUE)) {
      install.packages(lib)
      library(lib, character.only = TRUE)
    }
  }
}
