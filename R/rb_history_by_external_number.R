#' List of calls by external number
#'
#' List of incoming and outgoing calls by external number
#' @param external_numbers single external number or vector of numbers
#' @export
rb_history_by_external_number <- function(external_numbers) {
  parsed <- send_api_request("stats/history-by-external-number", list(externalNumbers = external_numbers))
  tb <- to_tibble(parsed$callDetails)
  return(tb)
}
