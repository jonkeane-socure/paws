% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codepipeline_operations.R
\name{codepipeline_poll_for_third_party_jobs}
\alias{codepipeline_poll_for_third_party_jobs}
\title{Determines whether there are any third party jobs for a job worker to
act on}
\usage{
codepipeline_poll_for_third_party_jobs(actionTypeId, maxBatchSize)
}
\arguments{
\item{actionTypeId}{[required] Represents information about an action type.}

\item{maxBatchSize}{The maximum number of jobs to return in a poll for jobs call.}
}
\description{
Determines whether there are any third party jobs for a job worker to
act on. Used for partner actions only.
}
\details{
When this API is called, AWS CodePipeline returns temporary credentials
for the Amazon S3 bucket used to store artifacts for the pipeline, if
the action requires access to that Amazon S3 bucket for input or output
artifacts.
}
\section{Request syntax}{
\preformatted{svc$poll_for_third_party_jobs(
  actionTypeId = list(
    category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
    owner = "AWS"|"ThirdParty"|"Custom",
    provider = "string",
    version = "string"
  ),
  maxBatchSize = 123
)
}
}

\keyword{internal}
