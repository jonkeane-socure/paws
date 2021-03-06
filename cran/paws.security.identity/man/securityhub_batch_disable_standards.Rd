% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/securityhub_operations.R
\name{securityhub_batch_disable_standards}
\alias{securityhub_batch_disable_standards}
\title{Disables the standards specified by the provided
StandardsSubscriptionArns}
\usage{
securityhub_batch_disable_standards(StandardsSubscriptionArns)
}
\arguments{
\item{StandardsSubscriptionArns}{[required] The ARNs of the standards subscriptions to disable.}
}
\description{
Disables the standards specified by the provided
\code{StandardsSubscriptionArns}. For more information, see \href{https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html}{Standards Supported in AWS Security Hub}.
}
\section{Request syntax}{
\preformatted{svc$batch_disable_standards(
  StandardsSubscriptionArns = list(
    "string"
  )
)
}
}

\keyword{internal}
