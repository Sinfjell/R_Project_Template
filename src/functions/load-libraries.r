load_libraries <- function(libraries) {
  for (lib in libraries) {
    if (!require(lib, character.only = TRUE)) {
      install.packages(lib)
      library(lib, character.only = TRUE)
    }
  }
}
