% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_put_instance_public_ports}
\alias{lightsail_put_instance_public_ports}
\title{Sets the specified open ports for an Amazon Lightsail instance, and
closes all ports for every protocol not included in the current request}
\usage{
lightsail_put_instance_public_ports(portInfos, instanceName)
}
\arguments{
\item{portInfos}{[required] Specifies information about the public port(s).}

\item{instanceName}{[required] The Lightsail instance name of the public port(s) you are setting.}
}
\description{
Sets the specified open ports for an Amazon Lightsail instance, and
closes all ports for every protocol not included in the current request.
}
\details{
The \verb{put instance public ports} operation supports tag-based access
control via resource tags applied to the resource identified by
\verb{instance name}. For more information, see the \href{https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags}{Lightsail Dev Guide}.
}
\section{Request syntax}{
\preformatted{svc$put_instance_public_ports(
  portInfos = list(
    list(
      fromPort = 123,
      toPort = 123,
      protocol = "tcp"|"all"|"udp"
    )
  ),
  instanceName = "string"
)
}
}

\keyword{internal}
