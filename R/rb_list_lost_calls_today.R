#' List of lost calls for today
#'
#' List of lost calls for today
#' @export
rb_list_lost_calls_today <- function() {
  parsed <- send_api_request("stats/list-of-lost-calls-for-today")
  tb <- to_tibble(parsed$callDetails)
  return(tb)
}
