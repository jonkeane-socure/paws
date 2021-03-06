% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_game_session_details}
\alias{gamelift_describe_game_session_details}
\title{Retrieves properties, including the protection policy in force, for one
or more game sessions}
\usage{
gamelift_describe_game_session_details(FleetId, GameSessionId, AliasId,
  StatusFilter, Limit, NextToken)
}
\arguments{
\item{FleetId}{A unique identifier for a fleet to retrieve all game sessions active on
the fleet. You can use either the fleet ID or ARN value.}

\item{GameSessionId}{A unique identifier for the game session to retrieve.}

\item{AliasId}{A unique identifier for an alias associated with the fleet to retrieve
all game sessions for. You can use either the alias ID or ARN value.}

\item{StatusFilter}{Game session status to filter results on. Possible game session statuses
include \code{ACTIVE}, \code{TERMINATED}, \code{ACTIVATING} and \code{TERMINATING} (the last
two are transitory).}

\item{Limit}{The maximum number of results to return. Use this parameter with
\code{NextToken} to get results as a set of sequential pages.}

\item{NextToken}{Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this action. To
start at the beginning of the result set, do not specify a value.}
}
\description{
Retrieves properties, including the protection policy in force, for one
or more game sessions. This action can be used in several ways: (1)
provide a \code{GameSessionId} or \code{GameSessionArn} to request details for a
specific game session; (2) provide either a \code{FleetId} or an \code{AliasId} to
request properties for all game sessions running on a fleet.
}
\details{
To get game session record(s), specify just one of the following: game
session ID, fleet ID, or alias ID. You can filter this request by game
session status. Use the pagination parameters to retrieve results as a
set of sequential pages. If successful, a GameSessionDetail object is
returned for each session matching the request.
\itemize{
\item CreateGameSession
\item DescribeGameSessions
\item DescribeGameSessionDetails
\item SearchGameSessions
\item UpdateGameSession
\item GetGameSessionLogUrl
\item Game session placements
\itemize{
\item StartGameSessionPlacement
\item DescribeGameSessionPlacement
\item StopGameSessionPlacement
}
}
}
\section{Request syntax}{
\preformatted{svc$describe_game_session_details(
  FleetId = "string",
  GameSessionId = "string",
  AliasId = "string",
  StatusFilter = "string",
  Limit = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
