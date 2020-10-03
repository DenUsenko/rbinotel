#' Convert Date-Time object to unix timestamp
#'
#' Returns an integer value for seconds since the ‘epoch’ of January 1, 1970.
#'
#' @param x an object to be converted to unix timestamp from one of the date-time classes
#' @param tz time zone specification to be used for the conversion
#' @export

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
