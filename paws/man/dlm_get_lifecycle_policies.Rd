% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dlm_operations.R
\name{dlm_get_lifecycle_policies}
\alias{dlm_get_lifecycle_policies}
\title{Gets summary information about all or the specified data lifecycle
policies}
\usage{
dlm_get_lifecycle_policies(PolicyIds, State, ResourceTypes, TargetTags,
  TagsToAdd)
}
\arguments{
\item{PolicyIds}{The identifiers of the data lifecycle policies.}

\item{State}{The activation state.}

\item{ResourceTypes}{The resource type.}

\item{TargetTags}{The target tag for a policy.

Tags are strings in the format \code{key=value}.}

\item{TagsToAdd}{The tags to add to objects created by the policy.

Tags are strings in the format \code{key=value}.

These user-defined tags are added in addition to the AWS-added lifecycle
tags.}
}
\description{
Gets summary information about all or the specified data lifecycle
policies.
}
\details{
To get complete information about a policy, use GetLifecyclePolicy.
}
\section{Request syntax}{
\preformatted{svc$get_lifecycle_policies(
  PolicyIds = list(
    "string"
  ),
  State = "ENABLED"|"DISABLED"|"ERROR",
  ResourceTypes = list(
    "VOLUME"|"INSTANCE"
  ),
  TargetTags = list(
    "string"
  ),
  TagsToAdd = list(
    "string"
  )
)
}
}

\keyword{internal}
