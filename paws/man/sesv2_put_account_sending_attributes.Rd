% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sesv2_operations.R
\name{sesv2_put_account_sending_attributes}
\alias{sesv2_put_account_sending_attributes}
\title{Enable or disable the ability of your account to send email}
\usage{
sesv2_put_account_sending_attributes(SendingEnabled)
}
\arguments{
\item{SendingEnabled}{Enables or disables your account\'s ability to send email. Set to \code{true}
to enable email sending, or set to \code{false} to disable email sending.

If AWS paused your account\'s ability to send email, you can\'t use this
operation to resume your account\'s ability to send email.}
}
\description{
Enable or disable the ability of your account to send email.
}
\section{Request syntax}{
\preformatted{svc$put_account_sending_attributes(
  SendingEnabled = TRUE|FALSE
)
}
}

\keyword{internal}
