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


#' Add credentials to the API request
#'
#' Add key and secret to the list of parameters for request
#'
#' @param params named list of parameters
#' @param api_key client API key
#' @param api_secret client API secret
add_auth_params <- function(params, api_key = NULL, api_secret = NULL) {
  if (is.null(api_key)) api_key <- getOption("rbinotel.api_key")
  if (is.null(api_secret)) api_secret <- getOption("rbinotel.api_secret")
  signed_params <- append(params, list(key = api_key, secret = api_secret))
  return(signed_params)
}

# TODO: get key / secret and validate them
# TODO: check API error code and return message
