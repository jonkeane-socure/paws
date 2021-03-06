# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include augmentedairuntime_service.R
NULL

#' Deletes the specified human loop for a flow definition
#'
#' Deletes the specified human loop for a flow definition.
#'
#' @usage
#' augmentedairuntime_delete_human_loop(HumanLoopName)
#'
#' @param HumanLoopName &#91;required&#93; The name of the human loop you want to delete.
#'
#' @section Request syntax:
#' ```
#' svc$delete_human_loop(
#'   HumanLoopName = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname augmentedairuntime_delete_human_loop
augmentedairuntime_delete_human_loop <- function(HumanLoopName) {
  op <- new_operation(
    name = "DeleteHumanLoop",
    http_method = "DELETE",
    http_path = "/human-loops/{HumanLoopName}",
    paginator = list()
  )
  input <- .augmentedairuntime$delete_human_loop_input(HumanLoopName = HumanLoopName)
  output <- .augmentedairuntime$delete_human_loop_output()
  config <- get_config()
  svc <- .augmentedairuntime$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.augmentedairuntime$operations$delete_human_loop <- augmentedairuntime_delete_human_loop

#' Returns information about the specified human loop
#'
#' Returns information about the specified human loop.
#'
#' @usage
#' augmentedairuntime_describe_human_loop(HumanLoopName)
#'
#' @param HumanLoopName &#91;required&#93; The name of the human loop.
#'
#' @section Request syntax:
#' ```
#' svc$describe_human_loop(
#'   HumanLoopName = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname augmentedairuntime_describe_human_loop
augmentedairuntime_describe_human_loop <- function(HumanLoopName) {
  op <- new_operation(
    name = "DescribeHumanLoop",
    http_method = "GET",
    http_path = "/human-loops/{HumanLoopName}",
    paginator = list()
  )
  input <- .augmentedairuntime$describe_human_loop_input(HumanLoopName = HumanLoopName)
  output <- .augmentedairuntime$describe_human_loop_output()
  config <- get_config()
  svc <- .augmentedairuntime$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.augmentedairuntime$operations$describe_human_loop <- augmentedairuntime_describe_human_loop

#' Returns information about human loops, given the specified parameters
#'
#' Returns information about human loops, given the specified parameters.
#'
#' @usage
#' augmentedairuntime_list_human_loops(CreationTimeAfter,
#'   CreationTimeBefore, SortOrder, NextToken, MaxResults)
#'
#' @param CreationTimeAfter (Optional) The timestamp of the date when you want the human loops to
#' begin. For example, `1551000000`.
#' @param CreationTimeBefore (Optional) The timestamp of the date before which you want the human
#' loops to begin. For example, `1550000000`.
#' @param SortOrder An optional value that specifies whether you want the results sorted in
#' `Ascending` or `Descending` order.
#' @param NextToken A token to resume pagination.
#' @param MaxResults The total number of items to return. If the total number of available
#' items is more than the value specified in `MaxResults`, then a
#' `NextToken` will be provided in the output that you can use to resume
#' pagination.
#'
#' @section Request syntax:
#' ```
#' svc$list_human_loops(
#'   CreationTimeAfter = as.POSIXct(
#'     "2015-01-01"
#'   ),
#'   CreationTimeBefore = as.POSIXct(
#'     "2015-01-01"
#'   ),
#'   SortOrder = "Ascending"|"Descending",
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname augmentedairuntime_list_human_loops
augmentedairuntime_list_human_loops <- function(CreationTimeAfter = NULL, CreationTimeBefore = NULL, SortOrder = NULL, NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "ListHumanLoops",
    http_method = "GET",
    http_path = "/human-loops",
    paginator = list()
  )
  input <- .augmentedairuntime$list_human_loops_input(CreationTimeAfter = CreationTimeAfter, CreationTimeBefore = CreationTimeBefore, SortOrder = SortOrder, NextToken = NextToken, MaxResults = MaxResults)
  output <- .augmentedairuntime$list_human_loops_output()
  config <- get_config()
  svc <- .augmentedairuntime$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.augmentedairuntime$operations$list_human_loops <- augmentedairuntime_list_human_loops

#' Starts a human loop, provided that at least one activation condition is
#' met
#'
#' Starts a human loop, provided that at least one activation condition is
#' met.
#'
#' @usage
#' augmentedairuntime_start_human_loop(HumanLoopName, FlowDefinitionArn,
#'   HumanLoopInput, DataAttributes)
#'
#' @param HumanLoopName &#91;required&#93; The name of the human loop.
#' @param FlowDefinitionArn &#91;required&#93; The Amazon Resource Name (ARN) of the flow definition.
#' @param HumanLoopInput &#91;required&#93; An object containing information about the human loop.
#' @param DataAttributes Attributes of the data specified by the customer.
#'
#' @section Request syntax:
#' ```
#' svc$start_human_loop(
#'   HumanLoopName = "string",
#'   FlowDefinitionArn = "string",
#'   HumanLoopInput = list(
#'     InputContent = "string"
#'   ),
#'   DataAttributes = list(
#'     ContentClassifiers = list(
#'       "FreeOfPersonallyIdentifiableInformation"|"FreeOfAdultContent"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname augmentedairuntime_start_human_loop
augmentedairuntime_start_human_loop <- function(HumanLoopName, FlowDefinitionArn, HumanLoopInput, DataAttributes = NULL) {
  op <- new_operation(
    name = "StartHumanLoop",
    http_method = "POST",
    http_path = "/human-loops",
    paginator = list()
  )
  input <- .augmentedairuntime$start_human_loop_input(HumanLoopName = HumanLoopName, FlowDefinitionArn = FlowDefinitionArn, HumanLoopInput = HumanLoopInput, DataAttributes = DataAttributes)
  output <- .augmentedairuntime$start_human_loop_output()
  config <- get_config()
  svc <- .augmentedairuntime$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.augmentedairuntime$operations$start_human_loop <- augmentedairuntime_start_human_loop

#' Stops the specified human loop
#'
#' Stops the specified human loop.
#'
#' @usage
#' augmentedairuntime_stop_human_loop(HumanLoopName)
#'
#' @param HumanLoopName &#91;required&#93; The name of the human loop you want to stop.
#'
#' @section Request syntax:
#' ```
#' svc$stop_human_loop(
#'   HumanLoopName = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname augmentedairuntime_stop_human_loop
augmentedairuntime_stop_human_loop <- function(HumanLoopName) {
  op <- new_operation(
    name = "StopHumanLoop",
    http_method = "POST",
    http_path = "/human-loops/stop",
    paginator = list()
  )
  input <- .augmentedairuntime$stop_human_loop_input(HumanLoopName = HumanLoopName)
  output <- .augmentedairuntime$stop_human_loop_output()
  config <- get_config()
  svc <- .augmentedairuntime$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.augmentedairuntime$operations$stop_human_loop <- augmentedairuntime_stop_human_loop
