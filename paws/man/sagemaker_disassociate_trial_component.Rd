% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_disassociate_trial_component}
\alias{sagemaker_disassociate_trial_component}
\title{Disassociates a trial component from a trial}
\usage{
sagemaker_disassociate_trial_component(TrialComponentName, TrialName)
}
\arguments{
\item{TrialComponentName}{[required] The name of the component to disassociate from the trial.}

\item{TrialName}{[required] The name of the trial to disassociate from.}
}
\description{
Disassociates a trial component from a trial. This doesn\'t effect other
trials the component is associated with. Before you can delete a
component, you must disassociate the component from all trials it is
associated with. To associate a trial component with a trial, call the
AssociateTrialComponent API.
}
\section{Request syntax}{
\preformatted{svc$disassociate_trial_component(
  TrialComponentName = "string",
  TrialName = "string"
)
}
}

\keyword{internal}
