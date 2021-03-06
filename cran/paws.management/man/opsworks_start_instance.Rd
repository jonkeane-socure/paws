% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_start_instance}
\alias{opsworks_start_instance}
\title{Starts a specified instance}
\usage{
opsworks_start_instance(InstanceId)
}
\arguments{
\item{InstanceId}{[required] The instance ID.}
}
\description{
Starts a specified instance. For more information, see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html}{Starting, Stopping, and Rebooting Instances}.
}
\details{
\strong{Required Permissions}: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Request syntax}{
\preformatted{svc$start_instance(
  InstanceId = "string"
)
}
}

\keyword{internal}
