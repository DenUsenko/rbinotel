#' List of employees
#'
#' List of all employees
rb_list_employees <- function() {
  parsed <- send_api_request("settings/list-of-employees")
  tb <- to_tibble(parsed$listOfEmployees)
  return(tb)
}
