#' Build the API endpoint
#'
#' Take an endpoint and attach it to the base url
#'
#' @param endpoint an API endpoint without leading and trailing slashes"
build_endpoint_url <- function(endpoint) {
  assertive::assert_is_character(endpoint)
  api_version <- getOption("rbinotel.api_version")
  api_base_url <- getOption("rbinotel.api_base_url")
  endpoint_url <- paste0(api_base_url, api_version, "/", endpoint, ".json")
  return(endpoint_url)
}
