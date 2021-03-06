% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wafv2_operations.R
\name{wafv2_list_tags_for_resource}
\alias{wafv2_list_tags_for_resource}
\title{This is the latest version of AWS WAF, named AWS WAFV2, released in
November, 2019}
\usage{
wafv2_list_tags_for_resource(NextMarker, Limit, ResourceARN)
}
\arguments{
\item{NextMarker}{When you request a list of objects with a \code{Limit} setting, if the number
of objects that are still available for retrieval exceeds the limit, AWS
WAF returns a \code{NextMarker} value in the response. To retrieve the next
batch of objects, provide the marker from the prior call in your next
request.}

\item{Limit}{The maximum number of objects that you want AWS WAF to return for this
request. If more objects are available, in the response, AWS WAF
provides a \code{NextMarker} value that you can use in a subsequent call to
get the next batch of objects.}

\item{ResourceARN}{[required] The Amazon Resource Name (ARN) of the resource.}
}
\description{
This is the latest version of \strong{AWS WAF}, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the \href{https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html}{AWS WAF Developer Guide}.
}
\details{
Retrieves the TagInfoForResource for the specified resource.
}
\section{Request syntax}{
\preformatted{svc$list_tags_for_resource(
  NextMarker = "string",
  Limit = 123,
  ResourceARN = "string"
)
}
}

\keyword{internal}
