% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/log.R
\name{appendLog}
\alias{appendLog}
\title{Append a log record}
\usage{
appendLog(event, name)
}
\arguments{
\item{event}{data.frame of one record holding the fields of whatever that
is to be logged.}

\item{name}{String defining the name of the log, currently one of "appLog" or
"reportLog".}
}
\value{
Provides a new record in the log. If the log does not exist a new
one is created before appending the new record when the log target is
configured to be files. When logging to a database this have to be set up in
advance.
}
\description{
Internal function adding a record to the log.
}
\keyword{internal}
