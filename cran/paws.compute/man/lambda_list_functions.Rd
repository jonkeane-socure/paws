% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lambda_operations.R
\name{lambda_list_functions}
\alias{lambda_list_functions}
\title{Returns a list of Lambda functions, with the version-specific
configuration of each}
\usage{
lambda_list_functions(MasterRegion, FunctionVersion, Marker, MaxItems)
}
\arguments{
\item{MasterRegion}{For Lambda\\@Edge functions, the AWS Region of the master function. For
example, \code{us-east-2} or \code{ALL}. If specified, you must set
\code{FunctionVersion} to \code{ALL}.}

\item{FunctionVersion}{Set to \code{ALL} to include entries for all published versions of each
function.}

\item{Marker}{Specify the pagination token that\'s returned by a previous request to
retrieve the next page of results.}

\item{MaxItems}{Specify a value between 1 and 50 to limit the number of functions in the
response.}
}
\description{
Returns a list of Lambda functions, with the version-specific
configuration of each.
}
\details{
Set \code{FunctionVersion} to \code{ALL} to include all published versions of each
function in addition to the unpublished version. To get more information
about a function or version, use GetFunction.
}
\section{Request syntax}{
\preformatted{svc$list_functions(
  MasterRegion = "string",
  FunctionVersion = "ALL",
  Marker = "string",
  MaxItems = 123
)
}
}

\examples{
\dontrun{
# This operation retrieves a Lambda functions
svc$list_functions(
  Marker = "",
  MaxItems = 123L
)
}

}
\keyword{internal}
