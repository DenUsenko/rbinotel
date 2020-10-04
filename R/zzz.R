.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Author: Den Usenko")
  packageStartupMessage("Visit <https://github.com/DenUsenko>.")
  packageStartupMessage("Binotel API Version: ", appendLF = F)
  packageStartupMessage(getOption("rbinotel.api_version"))
}

.onLoad <- function(libname, pkgname) {
  # Package options
  op <- options()
  op.rbinotel <- list(rbinotel.api_version = "4.0",
                      rbinotel.api_base_url = "https://api.binotel.com/api/")
  to_set <- !(names(op.rbinotel) %in% names(op))
  if (any(to_set)) options(op.rbinotel[to_set])
  invisible()
}
