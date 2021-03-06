% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_disable_metrics_collection}
\alias{autoscaling_disable_metrics_collection}
\title{Disables group metrics for the specified Auto Scaling group}
\usage{
autoscaling_disable_metrics_collection(AutoScalingGroupName, Metrics)
}
\arguments{
\item{AutoScalingGroupName}{[required] The name of the Auto Scaling group.}

\item{Metrics}{One or more of the following metrics. If you omit this parameter, all
metrics are disabled.
\itemize{
\item \code{GroupMinSize}
\item \code{GroupMaxSize}
\item \code{GroupDesiredCapacity}
\item \code{GroupInServiceInstances}
\item \code{GroupPendingInstances}
\item \code{GroupStandbyInstances}
\item \code{GroupTerminatingInstances}
\item \code{GroupTotalInstances}
}}
}
\description{
Disables group metrics for the specified Auto Scaling group.
}
\section{Request syntax}{
\preformatted{svc$disable_metrics_collection(
  AutoScalingGroupName = "string",
  Metrics = list(
    "string"
  )
)
}
}

\examples{
\dontrun{
# This example disables collecting data for the GroupDesiredCapacity
# metric for the specified Auto Scaling group.
svc$disable_metrics_collection(
  AutoScalingGroupName = "my-auto-scaling-group",
  Metrics = list(
    "GroupDesiredCapacity"
  )
)
}

}
\keyword{internal}
