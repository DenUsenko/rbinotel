#' Call details
#'
#' Call details by ID
#' @param general_call_id unique call identifier
#' @export
rb_call_details <- function(general_call_id) {
  parsed <- send_api_request("stats/call-details", list(generalCallID = general_call_id))
  tb <- to_tibble(parsed$callDetails)
  return(tb)
}
