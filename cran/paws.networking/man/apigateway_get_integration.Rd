% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_get_integration}
\alias{apigateway_get_integration}
\title{Get the integration settings}
\usage{
apigateway_get_integration(restApiId, resourceId, httpMethod)
}
\arguments{
\item{restApiId}{[required] [Required] The string identifier of the associated RestApi.}

\item{resourceId}{[required] [Required] Specifies a get integration request\'s resource identifier}

\item{httpMethod}{[required] [Required] Specifies a get integration request\'s HTTP method.}
}
\description{
Get the integration settings.
}
\section{Request syntax}{
\preformatted{svc$get_integration(
  restApiId = "string",
  resourceId = "string",
  httpMethod = "string"
)
}
}

\keyword{internal}
