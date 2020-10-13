#' List of calls per day
#'
#' List of incoming and outgoing calls today
#' @export
rb_list_calls_per_day <- function() {
  parsed <- send_api_request("stats/list-of-calls-per-day")
  tb <- to_tibble(parsed$callDetails)
  return(tb)
}
