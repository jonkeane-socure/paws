% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_delete_voice_connector_termination}
\alias{chime_delete_voice_connector_termination}
\title{Deletes the termination settings for the specified Amazon Chime Voice
Connector}
\usage{
chime_delete_voice_connector_termination(VoiceConnectorId)
}
\arguments{
\item{VoiceConnectorId}{[required] The Amazon Chime Voice Connector ID.}
}
\description{
Deletes the termination settings for the specified Amazon Chime Voice
Connector.
}
\section{Request syntax}{
\preformatted{svc$delete_voice_connector_termination(
  VoiceConnectorId = "string"
)
}
}

\keyword{internal}
