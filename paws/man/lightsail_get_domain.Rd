% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_domain}
\alias{lightsail_get_domain}
\title{Returns information about a specific domain recordset}
\usage{
lightsail_get_domain(domainName)
}
\arguments{
\item{domainName}{[required] The domain name for which your want to return information about.}
}
\description{
Returns information about a specific domain recordset.
}
\section{Request syntax}{
\preformatted{svc$get_domain(
  domainName = "string"
)
}
}

\keyword{internal}
