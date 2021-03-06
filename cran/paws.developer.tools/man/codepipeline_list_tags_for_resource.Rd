% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codepipeline_operations.R
\name{codepipeline_list_tags_for_resource}
\alias{codepipeline_list_tags_for_resource}
\title{Gets the set of key-value pairs (metadata) that are used to manage the
resource}
\usage{
codepipeline_list_tags_for_resource(resourceArn, nextToken, maxResults)
}
\arguments{
\item{resourceArn}{[required] The Amazon Resource Name (ARN) of the resource to get tags for.}

\item{nextToken}{The token that was returned from the previous API call, which would be
used to return the next page of the list. The ListTagsforResource call
lists all available tags in one call and does not use pagination.}

\item{maxResults}{The maximum number of results to return in a single call.}
}
\description{
Gets the set of key-value pairs (metadata) that are used to manage the
resource.
}
\section{Request syntax}{
\preformatted{svc$list_tags_for_resource(
  resourceArn = "string",
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}
