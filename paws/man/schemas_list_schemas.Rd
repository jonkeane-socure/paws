% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/schemas_operations.R
\name{schemas_list_schemas}
\alias{schemas_list_schemas}
\title{List the schemas}
\usage{
schemas_list_schemas(Limit, NextToken, RegistryName, SchemaNamePrefix)
}
\arguments{
\item{Limit}{}

\item{NextToken}{}

\item{RegistryName}{[required]}

\item{SchemaNamePrefix}{}
}
\description{
List the schemas.
}
\section{Request syntax}{
\preformatted{svc$list_schemas(
  Limit = 123,
  NextToken = "string",
  RegistryName = "string",
  SchemaNamePrefix = "string"
)
}
}

\keyword{internal}
