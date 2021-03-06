% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frauddetector_operations.R
\name{frauddetector_update_detector_version}
\alias{frauddetector_update_detector_version}
\title{Updates a detector version}
\usage{
frauddetector_update_detector_version(detectorId, detectorVersionId,
  externalModelEndpoints, rules, description, modelVersions)
}
\arguments{
\item{detectorId}{[required] The parent detector ID for the detector version you want to update.}

\item{detectorVersionId}{[required] The detector version ID.}

\item{externalModelEndpoints}{[required] The Amazon SageMaker model endpoints to include in the detector version.}

\item{rules}{[required] The rules to include in the detector version.}

\item{description}{The detector version description.}

\item{modelVersions}{The model versions to include in the detector version.}
}
\description{
Updates a detector version. The detector version attributes that you can
update include models, external model endpoints, rules, and description.
You can only update a \code{DRAFT} detector version.
}
\section{Request syntax}{
\preformatted{svc$update_detector_version(
  detectorId = "string",
  detectorVersionId = "string",
  externalModelEndpoints = list(
    "string"
  ),
  rules = list(
    list(
      detectorId = "string",
      ruleId = "string",
      ruleVersion = "string"
    )
  ),
  description = "string",
  modelVersions = list(
    list(
      modelId = "string",
      modelType = "ONLINE_FRAUD_INSIGHTS",
      modelVersionNumber = "string"
    )
  )
)
}
}

\keyword{internal}
