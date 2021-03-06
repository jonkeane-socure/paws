% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53_operations.R
\name{route53_get_geo_location}
\alias{route53_get_geo_location}
\title{Gets information about whether a specified geographic location is
supported for Amazon Route 53 geolocation resource record sets}
\usage{
route53_get_geo_location(ContinentCode, CountryCode, SubdivisionCode)
}
\arguments{
\item{ContinentCode}{Amazon Route 53 supports the following continent codes:
\itemize{
\item \strong{AF}: Africa
\item \strong{AN}: Antarctica
\item \strong{AS}: Asia
\item \strong{EU}: Europe
\item \strong{OC}: Oceania
\item \strong{NA}: North America
\item \strong{SA}: South America
}}

\item{CountryCode}{Amazon Route 53 uses the two-letter country codes that are specified in
\href{https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2}{ISO standard 3166-1 alpha-2}.}

\item{SubdivisionCode}{Amazon Route 53 uses the one- to three-letter subdivision codes that are
specified in \href{https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2}{ISO standard 3166-1 alpha-2}. Route 53
doesn\'t support subdivision codes for all countries. If you specify
\code{subdivisioncode}, you must also specify \code{countrycode}.}
}
\description{
Gets information about whether a specified geographic location is
supported for Amazon Route 53 geolocation resource record sets.
}
\details{
Use the following syntax to determine whether a continent is supported
for geolocation:

\verb{GET /2013-04-01/geolocation?continentcode=<i>two-letter abbreviation for a continent</i> }

Use the following syntax to determine whether a country is supported for
geolocation:

\verb{GET /2013-04-01/geolocation?countrycode=<i>two-character country code</i> }

Use the following syntax to determine whether a subdivision of a country
is supported for geolocation:

\verb{GET /2013-04-01/geolocation?countrycode=<i>two-character country code</i>&amp;subdivisioncode=<i>subdivision code</i> }
}
\section{Request syntax}{
\preformatted{svc$get_geo_location(
  ContinentCode = "string",
  CountryCode = "string",
  SubdivisionCode = "string"
)
}
}

\keyword{internal}
