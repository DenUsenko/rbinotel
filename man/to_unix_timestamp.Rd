% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{to_unix_timestamp}
\alias{to_unix_timestamp}
\title{Convert Date-Time object to unix timestamp}
\usage{
to_unix_timestamp(x, tz = "")
}
\arguments{
\item{x}{an object to be converted to unix timestamp from one of the date-time classes}

\item{tz}{time zone specification to be used for the conversion}
}
\description{
Returns an integer value for seconds since the ‘epoch’ of January 1, 1970.
}
