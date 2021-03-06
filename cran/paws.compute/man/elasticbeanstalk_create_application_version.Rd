% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticbeanstalk_operations.R
\name{elasticbeanstalk_create_application_version}
\alias{elasticbeanstalk_create_application_version}
\title{Creates an application version for the specified application}
\usage{
elasticbeanstalk_create_application_version(ApplicationName,
  VersionLabel, Description, SourceBuildInformation, SourceBundle,
  BuildConfiguration, AutoCreateApplication, Process, Tags)
}
\arguments{
\item{ApplicationName}{[required] The name of the application. If no application is found with this name,
and \code{AutoCreateApplication} is \code{false}, returns an
\code{InvalidParameterValue} error.}

\item{VersionLabel}{[required] A label identifying this version.

Constraint: Must be unique per application. If an application version
already exists with this label for the specified application, AWS
Elastic Beanstalk returns an \code{InvalidParameterValue} error.}

\item{Description}{Describes this version.}

\item{SourceBuildInformation}{Specify a commit in an AWS CodeCommit Git repository to use as the
source code for the application version.}

\item{SourceBundle}{The Amazon S3 bucket and key that identify the location of the source
bundle for this version.

The Amazon S3 bucket must be in the same region as the environment.

Specify a source bundle in S3 or a commit in an AWS CodeCommit
repository (with \code{SourceBuildInformation}), but not both. If neither
\code{SourceBundle} nor \code{SourceBuildInformation} are provided, Elastic
Beanstalk uses a sample application.}

\item{BuildConfiguration}{Settings for an AWS CodeBuild build.}

\item{AutoCreateApplication}{Set to \code{true} to create an application with the specified name if it
doesn\'t already exist.}

\item{Process}{Pre-processes and validates the environment manifest (\code{env.yaml}) and
configuration files (\verb{*.config} files in the \code{.ebextensions} folder) in
the source bundle. Validating configuration files can identify issues
prior to deploying the application version to an environment.

You must turn processing on for application versions that you create
using AWS CodeBuild or AWS CodeCommit. For application versions built
from a source bundle in Amazon S3, processing is optional.

The \code{Process} option validates Elastic Beanstalk configuration files. It
doesn\'t validate your application\'s configuration files, like proxy
server or Docker configuration.}

\item{Tags}{Specifies the tags applied to the application version.

Elastic Beanstalk applies these tags only to the application version.
Environments that use the application version don\'t inherit the tags.}
}
\description{
Creates an application version for the specified application. You can
create an application version from a source bundle in Amazon S3, a
commit in AWS CodeCommit, or the output of an AWS CodeBuild build as
follows:
}
\details{
Specify a commit in an AWS CodeCommit repository with
\code{SourceBuildInformation}.

Specify a build in an AWS CodeBuild with \code{SourceBuildInformation} and
\code{BuildConfiguration}.

Specify a source bundle in S3 with \code{SourceBundle}

Omit both \code{SourceBuildInformation} and \code{SourceBundle} to use the default
sample application.

Once you create an application version with a specified Amazon S3 bucket
and key location, you cannot change that Amazon S3 location. If you
change the Amazon S3 location, you receive an exception when you attempt
to launch an environment from the application version.
}
\section{Request syntax}{
\preformatted{svc$create_application_version(
  ApplicationName = "string",
  VersionLabel = "string",
  Description = "string",
  SourceBuildInformation = list(
    SourceType = "Git"|"Zip",
    SourceRepository = "CodeCommit"|"S3",
    SourceLocation = "string"
  ),
  SourceBundle = list(
    S3Bucket = "string",
    S3Key = "string"
  ),
  BuildConfiguration = list(
    ArtifactName = "string",
    CodeBuildServiceRole = "string",
    ComputeType = "BUILD_GENERAL1_SMALL"|"BUILD_GENERAL1_MEDIUM"|"BUILD_GENERAL1_LARGE",
    Image = "string",
    TimeoutInMinutes = 123
  ),
  AutoCreateApplication = TRUE|FALSE,
  Process = TRUE|FALSE,
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\examples{
\dontrun{
# The following operation creates a new version (v1) of an application
# named my-app:
svc$create_application_version(
  ApplicationName = "my-app",
  AutoCreateApplication = TRUE,
  Description = "my-app-v1",
  Process = TRUE,
  SourceBundle = list(
    S3Bucket = "my-bucket",
    S3Key = "sample.war"
  ),
  VersionLabel = "v1"
)
}

}
\keyword{internal}
