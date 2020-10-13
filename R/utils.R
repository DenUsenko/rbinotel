#' Convert Date-Time object to unix timestamp
#'
#' Returns an integer value for seconds since the ‘epoch’ of January 1, 1970.
#'
#' @param x an object to be converted to unix timestamp from one of the date-time classes
#' @param tz time zone specification to be used for the conversion
to_unix_timestamp <- function(x, tz = "") {

  if (any(
    assertive::is_date(x),
    assertive::is_posixct(x),
    assertive::is_posixlt(x)
    ) == FALSE) {
    stop("x is not a date-time object")
  }

  unix_timestamp <- as.integer(as.POSIXct(x, tz = tz))
  return(unix_timestamp)
}


#' Convert lists to tibble
#'
#' Unlists and binds list of lists
#'
#' @param data list of lists to convert
to_tibble <- function(data) {
  assertive::assert_is_list(data)
  rows <- lapply(data, function(x) {
    x[sapply(x, is.null)] <- NA
    unlist(x)
  })

  df <- dplyr::bind_rows(rows)
  return(df)

}

