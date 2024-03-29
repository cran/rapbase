% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoReport.R
\name{findNextRunDate}
\alias{findNextRunDate}
\title{Find next run date for automated reports}
\usage{
findNextRunDate(
  runDayOfYear,
  baseDayNum = as.POSIXlt(Sys.Date())$yday + 1,
  startDate = NULL,
  returnFormat = "\%A \%e. \%B \%Y"
)
}
\arguments{
\item{runDayOfYear}{Numeric vector providing year-day numbers}

\item{baseDayNum}{Numeric defining base year-day. Default is today}

\item{startDate}{Character string of format "YYYY-MM-DD" defining the date of
the very first run. If set to NULL (default) or a none future date (compared
to the date represented by \code{baseDayNum} for the current year) it will be
disregarded.}

\item{returnFormat}{String providing return format as described in
\code{\link[base]{strptime}} in the current locale. Defaults to
"\%A \%d. \%B \%Y" that will provide something like
'Mandag 20. januar 2019' in a Norwegian locale}
}
\value{
String date for printing
}
\description{
Find the next date that an automated report is supposed to be run. Likely,
this function will only be relevant for shiny apps when this date is to
be printed
}
\examples{
# Will return Jan 30 in the current year and locale with default formatting
findNextRunDate(c(10, 20, 30), 20)
}
