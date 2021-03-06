% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_delete_user}
\alias{cognitoidentityprovider_delete_user}
\title{Allows a user to delete himself or herself}
\usage{
cognitoidentityprovider_delete_user(AccessToken)
}
\arguments{
\item{AccessToken}{[required] The access token from a request to delete a user.}
}
\description{
Allows a user to delete himself or herself.
}
\section{Request syntax}{
\preformatted{svc$delete_user(
  AccessToken = "string"
)
}
}

\keyword{internal}
