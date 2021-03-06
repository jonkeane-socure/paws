% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53_operations.R
\name{route53_update_traffic_policy_instance}
\alias{route53_update_traffic_policy_instance}
\title{Updates the resource record sets in a specified hosted zone that were
created based on the settings in a specified traffic policy version}
\usage{
route53_update_traffic_policy_instance(Id, TTL, TrafficPolicyId,
  TrafficPolicyVersion)
}
\arguments{
\item{Id}{[required] The ID of the traffic policy instance that you want to update.}

\item{TTL}{[required] The TTL that you want Amazon Route 53 to assign to all of the updated
resource record sets.}

\item{TrafficPolicyId}{[required] The ID of the traffic policy that you want Amazon Route 53 to use to
update resource record sets for the specified traffic policy instance.}

\item{TrafficPolicyVersion}{[required] The version of the traffic policy that you want Amazon Route 53 to use
to update resource record sets for the specified traffic policy
instance.}
}
\description{
Updates the resource record sets in a specified hosted zone that were
created based on the settings in a specified traffic policy version.
}
\details{
When you update a traffic policy instance, Amazon Route 53 continues to
respond to DNS queries for the root resource record set name (such as
example.com) while it replaces one group of resource record sets with
another. Route 53 performs the following operations:
\enumerate{
\item Route 53 creates a new group of resource record sets based on the
specified traffic policy. This is true regardless of how significant
the differences are between the existing resource record sets and
the new resource record sets.
\item When all of the new resource record sets have been created, Route 53
starts to respond to DNS queries for the root resource record set
name (such as example.com) by using the new resource record sets.
\item Route 53 deletes the old group of resource record sets that are
associated with the root resource record set name.
}
}
\section{Request syntax}{
\preformatted{svc$update_traffic_policy_instance(
  Id = "string",
  TTL = 123,
  TrafficPolicyId = "string",
  TrafficPolicyVersion = 123
)
}
}

\keyword{internal}
