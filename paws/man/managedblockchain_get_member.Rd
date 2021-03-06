% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/managedblockchain_operations.R
\name{managedblockchain_get_member}
\alias{managedblockchain_get_member}
\title{Returns detailed information about a member}
\usage{
managedblockchain_get_member(NetworkId, MemberId)
}
\arguments{
\item{NetworkId}{[required] The unique identifier of the network to which the member belongs.}

\item{MemberId}{[required] The unique identifier of the member.}
}
\description{
Returns detailed information about a member.
}
\section{Request syntax}{
\preformatted{svc$get_member(
  NetworkId = "string",
  MemberId = "string"
)
}
}

\keyword{internal}
