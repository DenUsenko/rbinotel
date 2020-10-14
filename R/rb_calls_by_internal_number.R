#' List of recent calls by internal number
#'
#' List of recent incoming and outgoing calls by internal number (up to 50 calls, last 2 weeks)
#' @param internal_number employee's internal number
#' @export
rb_calls_by_internal_number  <- function(internal_number) {
  if (assertive::is_numeric_string(as.character(internal_number)) == FALSE) {
    stop("Internal number contains non-numeric character")
  }
  parsed <- send_api_request("stats/recent-calls-by-internal-number", list(internalNumber = internal_number))
  tb <- to_tibble(parsed$callDetails)
  return(tb)
}
