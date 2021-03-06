% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storagegateway_operations.R
\name{storagegateway_update_vtl_device_type}
\alias{storagegateway_update_vtl_device_type}
\title{Updates the type of medium changer in a tape gateway}
\usage{
storagegateway_update_vtl_device_type(VTLDeviceARN, DeviceType)
}
\arguments{
\item{VTLDeviceARN}{[required] The Amazon Resource Name (ARN) of the medium changer you want to select.}

\item{DeviceType}{[required] The type of medium changer you want to select.

Valid Values: \"STK-L700\", \"AWS-Gateway-VTL\"}
}
\description{
Updates the type of medium changer in a tape gateway. When you activate
a tape gateway, you select a medium changer type for the tape gateway.
This operation enables you to select a different type of medium changer
after a tape gateway is activated. This operation is only supported in
the tape gateway type.
}
\section{Request syntax}{
\preformatted{svc$update_vtl_device_type(
  VTLDeviceARN = "string",
  DeviceType = "string"
)
}
}

\examples{
\dontrun{
# Updates the type of medium changer in a gateway-VTL after a gateway-VTL
# is activated.
svc$update_vtl_device_type(
  DeviceType = "Medium Changer",
  VTLDeviceARN = "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/..."
)
}

}
\keyword{internal}
