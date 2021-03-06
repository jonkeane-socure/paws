% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directconnect_operations.R
\name{directconnect_create_lag}
\alias{directconnect_create_lag}
\title{Creates a link aggregation group (LAG) with the specified number of
bundled physical connections between the customer network and a specific
AWS Direct Connect location}
\usage{
directconnect_create_lag(numberOfConnections, location,
  connectionsBandwidth, lagName, connectionId, tags, childConnectionTags,
  providerName)
}
\arguments{
\item{numberOfConnections}{[required] The number of physical connections initially provisioned and bundled by
the LAG.}

\item{location}{[required] The location for the LAG.}

\item{connectionsBandwidth}{[required] The bandwidth of the individual physical connections bundled by the LAG.
The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps,
500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps.}

\item{lagName}{[required] The name of the LAG.}

\item{connectionId}{The ID of an existing connection to migrate to the LAG.}

\item{tags}{The tags to associate with the LAG.}

\item{childConnectionTags}{The tags to associate with the automtically created LAGs.}

\item{providerName}{The name of the service provider associated with the LAG.}
}
\description{
Creates a link aggregation group (LAG) with the specified number of
bundled physical connections between the customer network and a specific
AWS Direct Connect location. A LAG is a logical interface that uses the
Link Aggregation Control Protocol (LACP) to aggregate multiple
interfaces, enabling you to treat them as a single interface.
}
\details{
All connections in a LAG must use the same bandwidth and must terminate
at the same AWS Direct Connect endpoint.

You can have up to 10 connections per LAG. Regardless of this limit, if
you request more connections for the LAG than AWS Direct Connect can
allocate on a single endpoint, no LAG is created.

You can specify an existing physical connection or interconnect to
include in the LAG (which counts towards the total number of
connections). Doing so interrupts the current physical connection or
hosted connections, and re-establishes them as a member of the LAG. The
LAG will be created on the same AWS Direct Connect endpoint to which the
connection terminates. Any virtual interfaces associated with the
connection are automatically disassociated and re-associated with the
LAG. The connection ID does not change.

If the AWS account used to create a LAG is a registered AWS Direct
Connect Partner, the LAG is automatically enabled to host
sub-connections. For a LAG owned by a partner, any associated virtual
interfaces cannot be directly configured.
}
\section{Request syntax}{
\preformatted{svc$create_lag(
  numberOfConnections = 123,
  location = "string",
  connectionsBandwidth = "string",
  lagName = "string",
  connectionId = "string",
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  ),
  childConnectionTags = list(
    list(
      key = "string",
      value = "string"
    )
  ),
  providerName = "string"
)
}
}

\keyword{internal}
