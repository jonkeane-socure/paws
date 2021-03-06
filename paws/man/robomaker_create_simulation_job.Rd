% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robomaker_operations.R
\name{robomaker_create_simulation_job}
\alias{robomaker_create_simulation_job}
\title{Creates a simulation job}
\usage{
robomaker_create_simulation_job(clientRequestToken, outputLocation,
  loggingConfig, maxJobDurationInSeconds, iamRole, failureBehavior,
  robotApplications, simulationApplications, dataSources, tags, vpcConfig)
}
\arguments{
\item{clientRequestToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.}

\item{outputLocation}{Location for output files generated by the simulation job.}

\item{loggingConfig}{The logging configuration.}

\item{maxJobDurationInSeconds}{[required] The maximum simulation job duration in seconds (up to 14 days or
1,209,600 seconds. When \code{maxJobDurationInSeconds} is reached, the
simulation job will status will transition to \code{Completed}.}

\item{iamRole}{[required] The IAM role name that allows the simulation instance to call the AWS
APIs that are specified in its associated policies on your behalf. This
is how credentials are passed in to your simulation job.}

\item{failureBehavior}{The failure behavior the simulation job.
\subsection{Continue}{

Restart the simulation job in the same host instance.
}

\subsection{Fail}{

Stop the simulation job and terminate the instance.
}}

\item{robotApplications}{The robot application to use in the simulation job.}

\item{simulationApplications}{The simulation application to use in the simulation job.}

\item{dataSources}{The data sources for the simulation job.

There is a limit of 100 files and a combined size of 25GB for all
\code{DataSourceConfig} objects.}

\item{tags}{A map that contains tag keys and tag values that are attached to the
simulation job.}

\item{vpcConfig}{If your simulation job accesses resources in a VPC, you provide this
parameter identifying the list of security group IDs and subnet IDs.
These must belong to the same VPC. You must provide at least one
security group and one subnet ID.}
}
\description{
Creates a simulation job.
}
\details{
After 90 days, simulation jobs expire and will be deleted. They will no
longer be accessible.
}
\section{Request syntax}{
\preformatted{svc$create_simulation_job(
  clientRequestToken = "string",
  outputLocation = list(
    s3Bucket = "string",
    s3Prefix = "string"
  ),
  loggingConfig = list(
    recordAllRosTopics = TRUE|FALSE
  ),
  maxJobDurationInSeconds = 123,
  iamRole = "string",
  failureBehavior = "Fail"|"Continue",
  robotApplications = list(
    list(
      application = "string",
      applicationVersion = "string",
      launchConfig = list(
        packageName = "string",
        launchFile = "string",
        environmentVariables = list(
          "string"
        ),
        portForwardingConfig = list(
          portMappings = list(
            list(
              jobPort = 123,
              applicationPort = 123,
              enableOnPublicIp = TRUE|FALSE
            )
          )
        )
      )
    )
  ),
  simulationApplications = list(
    list(
      application = "string",
      applicationVersion = "string",
      launchConfig = list(
        packageName = "string",
        launchFile = "string",
        environmentVariables = list(
          "string"
        ),
        portForwardingConfig = list(
          portMappings = list(
            list(
              jobPort = 123,
              applicationPort = 123,
              enableOnPublicIp = TRUE|FALSE
            )
          )
        )
      )
    )
  ),
  dataSources = list(
    list(
      name = "string",
      s3Bucket = "string",
      s3Keys = list(
        "string"
      )
    )
  ),
  tags = list(
    "string"
  ),
  vpcConfig = list(
    subnets = list(
      "string"
    ),
    securityGroups = list(
      "string"
    ),
    assignPublicIp = TRUE|FALSE
  )
)
}
}

\keyword{internal}
