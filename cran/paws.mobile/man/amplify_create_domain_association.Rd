% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amplify_operations.R
\name{amplify_create_domain_association}
\alias{amplify_create_domain_association}
\title{Create a new DomainAssociation on an App}
\usage{
amplify_create_domain_association(appId, domainName,
  enableAutoSubDomain, subDomainSettings)
}
\arguments{
\item{appId}{[required] Unique Id for an Amplify App.}

\item{domainName}{[required] Domain name for the Domain Association.}

\item{enableAutoSubDomain}{Enables automated creation of Subdomains for branches. (Currently not
supported)}

\item{subDomainSettings}{[required] Setting structure for the Subdomain.}
}
\description{
Create a new DomainAssociation on an App
}
\section{Request syntax}{
\preformatted{svc$create_domain_association(
  appId = "string",
  domainName = "string",
  enableAutoSubDomain = TRUE|FALSE,
  subDomainSettings = list(
    list(
      prefix = "string",
      branchName = "string"
    )
  )
)
}
}

\keyword{internal}
