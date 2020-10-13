#' Call record
#'
#' Call record by ID
#' @param general_call_id unique call identifier
#' @export
rb_call_record <- function(general_call_id) {
  parsed <- send_api_request("stats/call-record", list(generalCallID = general_call_id))
  tb <- to_tibble(parsed$callDetails)
  return(tb)
}
