% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xray_operations.R
\name{xray_get_time_series_service_statistics}
\alias{xray_get_time_series_service_statistics}
\title{Get an aggregation of service statistics defined by a specific time
range}
\usage{
xray_get_time_series_service_statistics(StartTime, EndTime, GroupName,
  GroupARN, EntitySelectorExpression, Period, NextToken)
}
\arguments{
\item{StartTime}{[required] The start of the time frame for which to aggregate statistics.}

\item{EndTime}{[required] The end of the time frame for which to aggregate statistics.}

\item{GroupName}{The case-sensitive name of the group for which to pull statistics from.}

\item{GroupARN}{The ARN of the group for which to pull statistics from.}

\item{EntitySelectorExpression}{A filter expression defining entities that will be aggregated for
statistics. Supports ID, service, and edge functions. If no selector
expression is specified, edge statistics are returned.}

\item{Period}{Aggregation period in seconds.}

\item{NextToken}{Pagination token.}
}
\description{
Get an aggregation of service statistics defined by a specific time
range.
}
\section{Request syntax}{
\preformatted{svc$get_time_series_service_statistics(
  StartTime = as.POSIXct(
    "2015-01-01"
  ),
  EndTime = as.POSIXct(
    "2015-01-01"
  ),
  GroupName = "string",
  GroupARN = "string",
  EntitySelectorExpression = "string",
  Period = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
