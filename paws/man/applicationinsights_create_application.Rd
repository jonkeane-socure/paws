% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/applicationinsights_operations.R
\name{applicationinsights_create_application}
\alias{applicationinsights_create_application}
\title{Adds an application that is created from a resource group}
\usage{
applicationinsights_create_application(ResourceGroupName,
  OpsCenterEnabled, OpsItemSNSTopicArn, Tags)
}
\arguments{
\item{ResourceGroupName}{[required] The name of the resource group.}

\item{OpsCenterEnabled}{When set to \code{true}, creates opsItems for any problems detected on an
application.}

\item{OpsItemSNSTopicArn}{The SNS topic provided to Application Insights that is associated to the
created opsItem. Allows you to receive notifications for updates to the
opsItem.}

\item{Tags}{List of tags to add to the application. tag key (\code{Key}) and an
associated tag value (\code{Value}). The maximum length of a tag key is 128
characters. The maximum length of a tag value is 256 characters.}
}
\description{
Adds an application that is created from a resource group.
}
\section{Request syntax}{
\preformatted{svc$create_application(
  ResourceGroupName = "string",
  OpsCenterEnabled = TRUE|FALSE,
  OpsItemSNSTopicArn = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
