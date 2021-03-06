% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_vpc_peering_connection}
\alias{ec2_create_vpc_peering_connection}
\title{Requests a VPC peering connection between two VPCs: a requester VPC that
you own and an accepter VPC with which to create the connection}
\usage{
ec2_create_vpc_peering_connection(DryRun, PeerOwnerId, PeerVpcId, VpcId,
  PeerRegion)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{PeerOwnerId}{The AWS account ID of the owner of the accepter VPC.

Default: Your AWS account ID}

\item{PeerVpcId}{The ID of the VPC with which you are creating the VPC peering
connection. You must specify this parameter in the request.}

\item{VpcId}{The ID of the requester VPC. You must specify this parameter in the
request.}

\item{PeerRegion}{The Region code for the accepter VPC, if the accepter VPC is located in
a Region other than the Region in which you make the request.

Default: The Region in which you make the request.}
}
\description{
Requests a VPC peering connection between two VPCs: a requester VPC that
you own and an accepter VPC with which to create the connection. The
accepter VPC can belong to another AWS account and can be in a different
Region to the requester VPC. The requester VPC and accepter VPC cannot
have overlapping CIDR blocks.
}
\details{
Limitations and rules apply to a VPC peering connection. For more
information, see the
\href{https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-basics.html#vpc-peering-limitations}{limitations}
section in the \emph{VPC Peering Guide}.

The owner of the accepter VPC must accept the peering request to
activate the peering connection. The VPC peering connection request
expires after 7 days, after which it cannot be accepted or rejected.

If you create a VPC peering connection request between VPCs with
overlapping CIDR blocks, the VPC peering connection has a status of
\code{failed}.
}
\section{Request syntax}{
\preformatted{svc$create_vpc_peering_connection(
  DryRun = TRUE|FALSE,
  PeerOwnerId = "string",
  PeerVpcId = "string",
  VpcId = "string",
  PeerRegion = "string"
)
}
}

\keyword{internal}
