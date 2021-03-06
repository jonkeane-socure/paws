% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/support_operations.R
\name{support_describe_trusted_advisor_check_refresh_statuses}
\alias{support_describe_trusted_advisor_check_refresh_statuses}
\title{Returns the refresh status of the Trusted Advisor checks that have the
specified check IDs}
\usage{
support_describe_trusted_advisor_check_refresh_statuses(checkIds)
}
\arguments{
\item{checkIds}{[required] The IDs of the Trusted Advisor checks to get the status of. \strong{Note:}
Specifying the check ID of a check that is automatically refreshed
causes an \code{InvalidParameterValue} error.}
}
\description{
Returns the refresh status of the Trusted Advisor checks that have the
specified check IDs. Check IDs can be obtained by calling
DescribeTrustedAdvisorChecks.
}
\details{
Some checks are refreshed automatically, and their refresh statuses
cannot be retrieved by using this operation. Use of the
\code{DescribeTrustedAdvisorCheckRefreshStatuses} operation for these checks
causes an \code{InvalidParameterValue} error.
}
\section{Request syntax}{
\preformatted{svc$describe_trusted_advisor_check_refresh_statuses(
  checkIds = list(
    "string"
  )
)
}
}

\keyword{internal}
