% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_local_gateway_route_table_virtual_interface_group_associations}
\alias{ec2_describe_local_gateway_route_table_virtual_interface_group_associations}
\title{Describes the associations between virtual interface groups and local
gateway route tables}
\usage{
ec2_describe_local_gateway_route_table_virtual_interface_group_associations(
  LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds, Filters,
  MaxResults, NextToken, DryRun)
}
\arguments{
\item{LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds}{The IDs of the associations.}

\item{Filters}{One or more filters.}

\item{MaxResults}{The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned \code{nextToken}
value.}

\item{NextToken}{The token for the next page of results.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Describes the associations between virtual interface groups and local
gateway route tables.
}
\section{Request syntax}{
\preformatted{svc$describe_local_gateway_route_table_virtual_interface_group_associations(
  LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds = list(
    "string"
  ),
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  ),
  MaxResults = 123,
  NextToken = "string",
  DryRun = TRUE|FALSE
)
}
}

\keyword{internal}
