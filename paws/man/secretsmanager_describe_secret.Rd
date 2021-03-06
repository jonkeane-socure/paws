% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/secretsmanager_operations.R
\name{secretsmanager_describe_secret}
\alias{secretsmanager_describe_secret}
\title{Retrieves the details of a secret}
\usage{
secretsmanager_describe_secret(SecretId)
}
\arguments{
\item{SecretId}{[required] The identifier of the secret whose details you want to retrieve. You can
specify either the Amazon Resource Name (ARN) or the friendly name of
the secret.

If you specify an ARN, we generally recommend that you specify a
complete ARN. You can specify a partial ARN too---for example, if you
don't include the final hyphen and six random characters that Secrets
Manager adds at the end of the ARN when you created the secret. A
partial ARN match can work as long as it uniquely matches only one
secret. However, if your secret has a name that ends in a hyphen
followed by six characters (before Secrets Manager adds the hyphen and
six characters to the ARN) and you try to use that as a partial ARN,
then those characters cause Secrets Manager to assume that you're
specifying a complete ARN. This confusion can cause unexpected results.
To avoid this situation, we recommend that you don't create secret names
that end with a hyphen followed by six characters.}
}
\description{
Retrieves the details of a secret. It does not include the encrypted
fields. Only those fields that are populated with a value are returned
in the response.
}
\details{
\strong{Minimum permissions}

To run this command, you must have the following permissions:
\itemize{
\item secretsmanager:DescribeSecret
}

\strong{Related operations}
\itemize{
\item To create a secret, use CreateSecret.
\item To modify a secret, use UpdateSecret.
\item To retrieve the encrypted secret information in a version of the
secret, use GetSecretValue.
\item To list all of the secrets in the AWS account, use ListSecrets.
}
}
\section{Request syntax}{
\preformatted{svc$describe_secret(
  SecretId = "string"
)
}
}

\examples{
\dontrun{
# The following example shows how to get the details about a secret.
svc$describe_secret(
  SecretId = "MyTestDatabaseSecret"
)
}

}
\keyword{internal}
