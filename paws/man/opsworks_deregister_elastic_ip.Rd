% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_deregister_elastic_ip}
\alias{opsworks_deregister_elastic_ip}
\title{Deregisters a specified Elastic IP address}
\usage{
opsworks_deregister_elastic_ip(ElasticIp)
}
\arguments{
\item{ElasticIp}{[required] The Elastic IP address.}
}
\description{
Deregisters a specified Elastic IP address. The address can then be
registered by another stack. For more information, see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html}{Resource Management}.
}
\details{
\strong{Required Permissions}: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Request syntax}{
\preformatted{svc$deregister_elastic_ip(
  ElasticIp = "string"
)
}
}

\keyword{internal}
