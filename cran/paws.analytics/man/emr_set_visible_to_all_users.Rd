% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emr_operations.R
\name{emr_set_visible_to_all_users}
\alias{emr_set_visible_to_all_users}
\title{Sets the Cluster$VisibleToAllUsers value, which determines whether the
cluster is visible to all IAM users of the AWS account associated with
the cluster}
\usage{
emr_set_visible_to_all_users(JobFlowIds, VisibleToAllUsers)
}
\arguments{
\item{JobFlowIds}{[required] The unique identifier of the job flow (cluster).}

\item{VisibleToAllUsers}{[required] A value of \code{true} indicates that all IAM users in the AWS account can
perform cluster actions if they have the proper IAM policy permissions.
This is the default. A value of \code{false} indicates that only the IAM user
who created the cluster can perform actions.}
}
\description{
Sets the Cluster\\$VisibleToAllUsers value, which determines whether the
cluster is visible to all IAM users of the AWS account associated with
the cluster. Only the IAM user who created the cluster or the AWS
account root user can call this action. The default value, \code{true},
indicates that all IAM users in the AWS account can perform cluster
actions if they have the proper IAM policy permissions. If set to
\code{false}, only the IAM user that created the cluster can perform actions.
This action works on running clusters. You can override the default
\code{true} setting when you create a cluster by using the
\code{VisibleToAllUsers} parameter with \code{RunJobFlow}.
}
\section{Request syntax}{
\preformatted{svc$set_visible_to_all_users(
  JobFlowIds = list(
    "string"
  ),
  VisibleToAllUsers = TRUE|FALSE
)
}
}

\keyword{internal}
