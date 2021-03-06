# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include codestarconnections_service.R
NULL

#' Creates a connection that can then be given to other AWS services like
#' CodePipeline so that it can access third-party code repositories
#'
#' Creates a connection that can then be given to other AWS services like
#' CodePipeline so that it can access third-party code repositories. The
#' connection is in pending status until the third-party connection
#' handshake is completed from the console.
#'
#' @usage
#' codestarconnections_create_connection(ProviderType, ConnectionName)
#'
#' @param ProviderType &#91;required&#93; The name of the external provider where your third-party code repository
#' is configured. Currently, the valid provider type is Bitbucket.
#' @param ConnectionName &#91;required&#93; The name of the connection to be created. The name must be unique in the
#' calling AWS account.
#'
#' @section Request syntax:
#' ```
#' svc$create_connection(
#'   ProviderType = "Bitbucket",
#'   ConnectionName = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarconnections_create_connection
codestarconnections_create_connection <- function(ProviderType, ConnectionName) {
  op <- new_operation(
    name = "CreateConnection",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .codestarconnections$create_connection_input(ProviderType = ProviderType, ConnectionName = ConnectionName)
  output <- .codestarconnections$create_connection_output()
  config <- get_config()
  svc <- .codestarconnections$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarconnections$operations$create_connection <- codestarconnections_create_connection

#' The connection to be deleted
#'
#' The connection to be deleted.
#'
#' @usage
#' codestarconnections_delete_connection(ConnectionArn)
#'
#' @param ConnectionArn &#91;required&#93; The Amazon Resource Name (ARN) of the connection to be deleted.
#' 
#' The ARN is never reused if the connection is deleted.
#'
#' @section Request syntax:
#' ```
#' svc$delete_connection(
#'   ConnectionArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarconnections_delete_connection
codestarconnections_delete_connection <- function(ConnectionArn) {
  op <- new_operation(
    name = "DeleteConnection",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .codestarconnections$delete_connection_input(ConnectionArn = ConnectionArn)
  output <- .codestarconnections$delete_connection_output()
  config <- get_config()
  svc <- .codestarconnections$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarconnections$operations$delete_connection <- codestarconnections_delete_connection

#' Returns the connection ARN and details such as status, owner, and
#' provider type
#'
#' Returns the connection ARN and details such as status, owner, and
#' provider type.
#'
#' @usage
#' codestarconnections_get_connection(ConnectionArn)
#'
#' @param ConnectionArn &#91;required&#93; The Amazon Resource Name (ARN) of a connection.
#'
#' @section Request syntax:
#' ```
#' svc$get_connection(
#'   ConnectionArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarconnections_get_connection
codestarconnections_get_connection <- function(ConnectionArn) {
  op <- new_operation(
    name = "GetConnection",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .codestarconnections$get_connection_input(ConnectionArn = ConnectionArn)
  output <- .codestarconnections$get_connection_output()
  config <- get_config()
  svc <- .codestarconnections$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarconnections$operations$get_connection <- codestarconnections_get_connection

#' Lists the connections associated with your account
#'
#' Lists the connections associated with your account.
#'
#' @usage
#' codestarconnections_list_connections(ProviderTypeFilter, MaxResults,
#'   NextToken)
#'
#' @param ProviderTypeFilter Filters the list of connections to those associated with a specified
#' provider, such as Bitbucket.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve
#' the remaining results, make another call with the returned `nextToken`
#' value.
#' @param NextToken The token that was returned from the previous `ListConnections` call,
#' which can be used to return the next set of connections in the list.
#'
#' @section Request syntax:
#' ```
#' svc$list_connections(
#'   ProviderTypeFilter = "Bitbucket",
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarconnections_list_connections
codestarconnections_list_connections <- function(ProviderTypeFilter = NULL, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListConnections",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .codestarconnections$list_connections_input(ProviderTypeFilter = ProviderTypeFilter, MaxResults = MaxResults, NextToken = NextToken)
  output <- .codestarconnections$list_connections_output()
  config <- get_config()
  svc <- .codestarconnections$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarconnections$operations$list_connections <- codestarconnections_list_connections
