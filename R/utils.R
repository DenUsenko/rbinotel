#' Convert Date-Time object to unix timestamp
#'
#' Returns an integer value for seconds since the ‘epoch’ of January 1, 1970.
#'
#' A timezone can be set with a /code{tz} argument for underlying /code{as.POSIXct} fucntion.
#'
#' @param x an object to be converted to unix timestamp from one of the date-time classes
#' @export

to_unix_timestamp <- function(x, ...) {

  unix_timestamp <- as.integer(as.POSIXct(datetime, ...))

}
