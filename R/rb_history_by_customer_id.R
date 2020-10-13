#' List of calls by Customer ID
#'
#' List of incoming and outgoing calls by Customer ID
#' @param customer_id Customer ID
#' @export
rb_history_by_customer_id <- function(customer_id) {
  parsed <- send_api_request("stats/history-by-customer-id", list(customerID = customer_id))
  tb <- to_tibble(parsed$callDetails)
  return(tb)
}
