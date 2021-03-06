% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotanalytics_operations.R
\name{iotanalytics_start_pipeline_reprocessing}
\alias{iotanalytics_start_pipeline_reprocessing}
\title{Starts the reprocessing of raw message data through the pipeline}
\usage{
iotanalytics_start_pipeline_reprocessing(pipelineName, startTime,
  endTime)
}
\arguments{
\item{pipelineName}{[required] The name of the pipeline on which to start reprocessing.}

\item{startTime}{The start time (inclusive) of raw message data that is reprocessed.}

\item{endTime}{The end time (exclusive) of raw message data that is reprocessed.}
}
\description{
Starts the reprocessing of raw message data through the pipeline.
}
\section{Request syntax}{
\preformatted{svc$start_pipeline_reprocessing(
  pipelineName = "string",
  startTime = as.POSIXct(
    "2015-01-01"
  ),
  endTime = as.POSIXct(
    "2015-01-01"
  )
)
}
}

\keyword{internal}
