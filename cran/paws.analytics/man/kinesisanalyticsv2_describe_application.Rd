% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesisanalyticsv2_operations.R
\name{kinesisanalyticsv2_describe_application}
\alias{kinesisanalyticsv2_describe_application}
\title{Returns information about a specific Amazon Kinesis Data Analytics
application}
\usage{
kinesisanalyticsv2_describe_application(ApplicationName,
  IncludeAdditionalDetails)
}
\arguments{
\item{ApplicationName}{[required] The name of the application.}

\item{IncludeAdditionalDetails}{Displays verbose information about a Kinesis Data Analytics application,
including the application\'s job plan.}
}
\description{
Returns information about a specific Amazon Kinesis Data Analytics
application.
}
\details{
If you want to retrieve a list of all applications in your account, use
the ListApplications operation.
}
\section{Request syntax}{
\preformatted{svc$describe_application(
  ApplicationName = "string",
  IncludeAdditionalDetails = TRUE|FALSE
)
}
}

\keyword{internal}
