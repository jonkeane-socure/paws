# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include iot1clickprojects_service.R
NULL

#' Associates a physical device with a placement
#'
#' Associates a physical device with a placement.
#'
#' @usage
#' iot1clickprojects_associate_device_with_placement(projectName,
#'   placementName, deviceId, deviceTemplateName)
#'
#' @param projectName &#91;required&#93; The name of the project containing the placement in which to associate
#' the device.
#' @param placementName &#91;required&#93; The name of the placement in which to associate the device.
#' @param deviceId &#91;required&#93; The ID of the physical device to be associated with the given placement
#' in the project. Note that a mandatory 4 character prefix is required for
#' all `deviceId` values.
#' @param deviceTemplateName &#91;required&#93; The device template name to associate with the device ID.
#'
#' @section Request syntax:
#' ```
#' svc$associate_device_with_placement(
#'   projectName = "string",
#'   placementName = "string",
#'   deviceId = "string",
#'   deviceTemplateName = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_associate_device_with_placement
iot1clickprojects_associate_device_with_placement <- function(projectName, placementName, deviceId, deviceTemplateName) {
  op <- new_operation(
    name = "AssociateDeviceWithPlacement",
    http_method = "PUT",
    http_path = "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}",
    paginator = list()
  )
  input <- .iot1clickprojects$associate_device_with_placement_input(projectName = projectName, placementName = placementName, deviceId = deviceId, deviceTemplateName = deviceTemplateName)
  output <- .iot1clickprojects$associate_device_with_placement_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$associate_device_with_placement <- iot1clickprojects_associate_device_with_placement

#' Creates an empty placement
#'
#' Creates an empty placement.
#'
#' @usage
#' iot1clickprojects_create_placement(placementName, projectName,
#'   attributes)
#'
#' @param placementName &#91;required&#93; The name of the placement to be created.
#' @param projectName &#91;required&#93; The name of the project in which to create the placement.
#' @param attributes Optional user-defined key/value pairs providing contextual data (such as
#' location or function) for the placement.
#'
#' @section Request syntax:
#' ```
#' svc$create_placement(
#'   placementName = "string",
#'   projectName = "string",
#'   attributes = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_create_placement
iot1clickprojects_create_placement <- function(placementName, projectName, attributes = NULL) {
  op <- new_operation(
    name = "CreatePlacement",
    http_method = "POST",
    http_path = "/projects/{projectName}/placements",
    paginator = list()
  )
  input <- .iot1clickprojects$create_placement_input(placementName = placementName, projectName = projectName, attributes = attributes)
  output <- .iot1clickprojects$create_placement_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$create_placement <- iot1clickprojects_create_placement

#' Creates an empty project with a placement template
#'
#' Creates an empty project with a placement template. A project contains
#' zero or more placements that adhere to the placement template defined in
#' the project.
#'
#' @usage
#' iot1clickprojects_create_project(projectName, description,
#'   placementTemplate, tags)
#'
#' @param projectName &#91;required&#93; The name of the project to create.
#' @param description An optional description for the project.
#' @param placementTemplate The schema defining the placement to be created. A placement template
#' defines placement default attributes and device templates. You cannot
#' add or remove device templates after the project has been created.
#' However, you can update `callbackOverrides` for the device templates
#' using the `UpdateProject` API.
#' @param tags Optional tags (metadata key/value pairs) to be associated with the
#' project. For example, `\{ \{"key1": "value1", "key2": "value2"\} \}`. For
#' more information, see [AWS Tagging
#' Strategies](https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).
#'
#' @section Request syntax:
#' ```
#' svc$create_project(
#'   projectName = "string",
#'   description = "string",
#'   placementTemplate = list(
#'     defaultAttributes = list(
#'       "string"
#'     ),
#'     deviceTemplates = list(
#'       list(
#'         deviceType = "string",
#'         callbackOverrides = list(
#'           "string"
#'         )
#'       )
#'     )
#'   ),
#'   tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_create_project
iot1clickprojects_create_project <- function(projectName, description = NULL, placementTemplate = NULL, tags = NULL) {
  op <- new_operation(
    name = "CreateProject",
    http_method = "POST",
    http_path = "/projects",
    paginator = list()
  )
  input <- .iot1clickprojects$create_project_input(projectName = projectName, description = description, placementTemplate = placementTemplate, tags = tags)
  output <- .iot1clickprojects$create_project_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$create_project <- iot1clickprojects_create_project

#' Deletes a placement
#'
#' Deletes a placement. To delete a placement, it must not have any devices
#' associated with it.
#' 
#' When you delete a placement, all associated data becomes irretrievable.
#'
#' @usage
#' iot1clickprojects_delete_placement(placementName, projectName)
#'
#' @param placementName &#91;required&#93; The name of the empty placement to delete.
#' @param projectName &#91;required&#93; The project containing the empty placement to delete.
#'
#' @section Request syntax:
#' ```
#' svc$delete_placement(
#'   placementName = "string",
#'   projectName = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_delete_placement
iot1clickprojects_delete_placement <- function(placementName, projectName) {
  op <- new_operation(
    name = "DeletePlacement",
    http_method = "DELETE",
    http_path = "/projects/{projectName}/placements/{placementName}",
    paginator = list()
  )
  input <- .iot1clickprojects$delete_placement_input(placementName = placementName, projectName = projectName)
  output <- .iot1clickprojects$delete_placement_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$delete_placement <- iot1clickprojects_delete_placement

#' Deletes a project
#'
#' Deletes a project. To delete a project, it must not have any placements
#' associated with it.
#' 
#' When you delete a project, all associated data becomes irretrievable.
#'
#' @usage
#' iot1clickprojects_delete_project(projectName)
#'
#' @param projectName &#91;required&#93; The name of the empty project to delete.
#'
#' @section Request syntax:
#' ```
#' svc$delete_project(
#'   projectName = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_delete_project
iot1clickprojects_delete_project <- function(projectName) {
  op <- new_operation(
    name = "DeleteProject",
    http_method = "DELETE",
    http_path = "/projects/{projectName}",
    paginator = list()
  )
  input <- .iot1clickprojects$delete_project_input(projectName = projectName)
  output <- .iot1clickprojects$delete_project_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$delete_project <- iot1clickprojects_delete_project

#' Describes a placement in a project
#'
#' Describes a placement in a project.
#'
#' @usage
#' iot1clickprojects_describe_placement(placementName, projectName)
#'
#' @param placementName &#91;required&#93; The name of the placement within a project.
#' @param projectName &#91;required&#93; The project containing the placement to be described.
#'
#' @section Request syntax:
#' ```
#' svc$describe_placement(
#'   placementName = "string",
#'   projectName = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_describe_placement
iot1clickprojects_describe_placement <- function(placementName, projectName) {
  op <- new_operation(
    name = "DescribePlacement",
    http_method = "GET",
    http_path = "/projects/{projectName}/placements/{placementName}",
    paginator = list()
  )
  input <- .iot1clickprojects$describe_placement_input(placementName = placementName, projectName = projectName)
  output <- .iot1clickprojects$describe_placement_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$describe_placement <- iot1clickprojects_describe_placement

#' Returns an object describing a project
#'
#' Returns an object describing a project.
#'
#' @usage
#' iot1clickprojects_describe_project(projectName)
#'
#' @param projectName &#91;required&#93; The name of the project to be described.
#'
#' @section Request syntax:
#' ```
#' svc$describe_project(
#'   projectName = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_describe_project
iot1clickprojects_describe_project <- function(projectName) {
  op <- new_operation(
    name = "DescribeProject",
    http_method = "GET",
    http_path = "/projects/{projectName}",
    paginator = list()
  )
  input <- .iot1clickprojects$describe_project_input(projectName = projectName)
  output <- .iot1clickprojects$describe_project_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$describe_project <- iot1clickprojects_describe_project

#' Removes a physical device from a placement
#'
#' Removes a physical device from a placement.
#'
#' @usage
#' iot1clickprojects_disassociate_device_from_placement(projectName,
#'   placementName, deviceTemplateName)
#'
#' @param projectName &#91;required&#93; The name of the project that contains the placement.
#' @param placementName &#91;required&#93; The name of the placement that the device should be removed from.
#' @param deviceTemplateName &#91;required&#93; The device ID that should be removed from the placement.
#'
#' @section Request syntax:
#' ```
#' svc$disassociate_device_from_placement(
#'   projectName = "string",
#'   placementName = "string",
#'   deviceTemplateName = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_disassociate_device_from_placement
iot1clickprojects_disassociate_device_from_placement <- function(projectName, placementName, deviceTemplateName) {
  op <- new_operation(
    name = "DisassociateDeviceFromPlacement",
    http_method = "DELETE",
    http_path = "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}",
    paginator = list()
  )
  input <- .iot1clickprojects$disassociate_device_from_placement_input(projectName = projectName, placementName = placementName, deviceTemplateName = deviceTemplateName)
  output <- .iot1clickprojects$disassociate_device_from_placement_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$disassociate_device_from_placement <- iot1clickprojects_disassociate_device_from_placement

#' Returns an object enumerating the devices in a placement
#'
#' Returns an object enumerating the devices in a placement.
#'
#' @usage
#' iot1clickprojects_get_devices_in_placement(projectName, placementName)
#'
#' @param projectName &#91;required&#93; The name of the project containing the placement.
#' @param placementName &#91;required&#93; The name of the placement to get the devices from.
#'
#' @section Request syntax:
#' ```
#' svc$get_devices_in_placement(
#'   projectName = "string",
#'   placementName = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_get_devices_in_placement
iot1clickprojects_get_devices_in_placement <- function(projectName, placementName) {
  op <- new_operation(
    name = "GetDevicesInPlacement",
    http_method = "GET",
    http_path = "/projects/{projectName}/placements/{placementName}/devices",
    paginator = list()
  )
  input <- .iot1clickprojects$get_devices_in_placement_input(projectName = projectName, placementName = placementName)
  output <- .iot1clickprojects$get_devices_in_placement_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$get_devices_in_placement <- iot1clickprojects_get_devices_in_placement

#' Lists the placement(s) of a project
#'
#' Lists the placement(s) of a project.
#'
#' @usage
#' iot1clickprojects_list_placements(projectName, nextToken, maxResults)
#'
#' @param projectName &#91;required&#93; The project containing the placements to be listed.
#' @param nextToken The token to retrieve the next set of results.
#' @param maxResults The maximum number of results to return per request. If not set, a
#' default value of 100 is used.
#'
#' @section Request syntax:
#' ```
#' svc$list_placements(
#'   projectName = "string",
#'   nextToken = "string",
#'   maxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_list_placements
iot1clickprojects_list_placements <- function(projectName, nextToken = NULL, maxResults = NULL) {
  op <- new_operation(
    name = "ListPlacements",
    http_method = "GET",
    http_path = "/projects/{projectName}/placements",
    paginator = list()
  )
  input <- .iot1clickprojects$list_placements_input(projectName = projectName, nextToken = nextToken, maxResults = maxResults)
  output <- .iot1clickprojects$list_placements_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$list_placements <- iot1clickprojects_list_placements

#' Lists the AWS IoT 1-Click project(s) associated with your AWS account
#' and region
#'
#' Lists the AWS IoT 1-Click project(s) associated with your AWS account
#' and region.
#'
#' @usage
#' iot1clickprojects_list_projects(nextToken, maxResults)
#'
#' @param nextToken The token to retrieve the next set of results.
#' @param maxResults The maximum number of results to return per request. If not set, a
#' default value of 100 is used.
#'
#' @section Request syntax:
#' ```
#' svc$list_projects(
#'   nextToken = "string",
#'   maxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_list_projects
iot1clickprojects_list_projects <- function(nextToken = NULL, maxResults = NULL) {
  op <- new_operation(
    name = "ListProjects",
    http_method = "GET",
    http_path = "/projects",
    paginator = list()
  )
  input <- .iot1clickprojects$list_projects_input(nextToken = nextToken, maxResults = maxResults)
  output <- .iot1clickprojects$list_projects_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$list_projects <- iot1clickprojects_list_projects

#' Lists the tags (metadata key/value pairs) which you have assigned to the
#' resource
#'
#' Lists the tags (metadata key/value pairs) which you have assigned to the
#' resource.
#'
#' @usage
#' iot1clickprojects_list_tags_for_resource(resourceArn)
#'
#' @param resourceArn &#91;required&#93; The ARN of the resource whose tags you want to list.
#'
#' @section Request syntax:
#' ```
#' svc$list_tags_for_resource(
#'   resourceArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_list_tags_for_resource
iot1clickprojects_list_tags_for_resource <- function(resourceArn) {
  op <- new_operation(
    name = "ListTagsForResource",
    http_method = "GET",
    http_path = "/tags/{resourceArn}",
    paginator = list()
  )
  input <- .iot1clickprojects$list_tags_for_resource_input(resourceArn = resourceArn)
  output <- .iot1clickprojects$list_tags_for_resource_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$list_tags_for_resource <- iot1clickprojects_list_tags_for_resource

#' Creates or modifies tags for a resource
#'
#' Creates or modifies tags for a resource. Tags are key/value pairs
#' (metadata) that can be used to manage a resource. For more information,
#' see [AWS Tagging
#' Strategies](https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).
#'
#' @usage
#' iot1clickprojects_tag_resource(resourceArn, tags)
#'
#' @param resourceArn &#91;required&#93; The ARN of the resouce for which tag(s) should be added or modified.
#' @param tags &#91;required&#93; The new or modifying tag(s) for the resource. See [AWS IoT 1-Click
#' Service
#' Limits](https://docs.aws.amazon.com/iot-1-click/latest/developerguide/1click-appendix.html#1click-limits)
#' for the maximum number of tags allowed per resource.
#'
#' @section Request syntax:
#' ```
#' svc$tag_resource(
#'   resourceArn = "string",
#'   tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_tag_resource
iot1clickprojects_tag_resource <- function(resourceArn, tags) {
  op <- new_operation(
    name = "TagResource",
    http_method = "POST",
    http_path = "/tags/{resourceArn}",
    paginator = list()
  )
  input <- .iot1clickprojects$tag_resource_input(resourceArn = resourceArn, tags = tags)
  output <- .iot1clickprojects$tag_resource_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$tag_resource <- iot1clickprojects_tag_resource

#' Removes one or more tags (metadata key/value pairs) from a resource
#'
#' Removes one or more tags (metadata key/value pairs) from a resource.
#'
#' @usage
#' iot1clickprojects_untag_resource(resourceArn, tagKeys)
#'
#' @param resourceArn &#91;required&#93; The ARN of the resource whose tag you want to remove.
#' @param tagKeys &#91;required&#93; The keys of those tags which you want to remove.
#'
#' @section Request syntax:
#' ```
#' svc$untag_resource(
#'   resourceArn = "string",
#'   tagKeys = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_untag_resource
iot1clickprojects_untag_resource <- function(resourceArn, tagKeys) {
  op <- new_operation(
    name = "UntagResource",
    http_method = "DELETE",
    http_path = "/tags/{resourceArn}",
    paginator = list()
  )
  input <- .iot1clickprojects$untag_resource_input(resourceArn = resourceArn, tagKeys = tagKeys)
  output <- .iot1clickprojects$untag_resource_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$untag_resource <- iot1clickprojects_untag_resource

#' Updates a placement with the given attributes
#'
#' Updates a placement with the given attributes. To clear an attribute,
#' pass an empty value (i.e., \"\").
#'
#' @usage
#' iot1clickprojects_update_placement(placementName, projectName,
#'   attributes)
#'
#' @param placementName &#91;required&#93; The name of the placement to update.
#' @param projectName &#91;required&#93; The name of the project containing the placement to be updated.
#' @param attributes The user-defined object of attributes used to update the placement. The
#' maximum number of key/value pairs is 50.
#'
#' @section Request syntax:
#' ```
#' svc$update_placement(
#'   placementName = "string",
#'   projectName = "string",
#'   attributes = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_update_placement
iot1clickprojects_update_placement <- function(placementName, projectName, attributes = NULL) {
  op <- new_operation(
    name = "UpdatePlacement",
    http_method = "PUT",
    http_path = "/projects/{projectName}/placements/{placementName}",
    paginator = list()
  )
  input <- .iot1clickprojects$update_placement_input(placementName = placementName, projectName = projectName, attributes = attributes)
  output <- .iot1clickprojects$update_placement_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$update_placement <- iot1clickprojects_update_placement

#' Updates a project associated with your AWS account and region
#'
#' Updates a project associated with your AWS account and region. With the
#' exception of device template names, you can pass just the values that
#' need to be updated because the update request will change only the
#' values that are provided. To clear a value, pass the empty string (i.e.,
#' `""`).
#'
#' @usage
#' iot1clickprojects_update_project(projectName, description,
#'   placementTemplate)
#'
#' @param projectName &#91;required&#93; The name of the project to be updated.
#' @param description An optional user-defined description for the project.
#' @param placementTemplate An object defining the project update. Once a project has been created,
#' you cannot add device template names to the project. However, for a
#' given `placementTemplate`, you can update the associated
#' `callbackOverrides` for the device definition using this API.
#'
#' @section Request syntax:
#' ```
#' svc$update_project(
#'   projectName = "string",
#'   description = "string",
#'   placementTemplate = list(
#'     defaultAttributes = list(
#'       "string"
#'     ),
#'     deviceTemplates = list(
#'       list(
#'         deviceType = "string",
#'         callbackOverrides = list(
#'           "string"
#'         )
#'       )
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname iot1clickprojects_update_project
iot1clickprojects_update_project <- function(projectName, description = NULL, placementTemplate = NULL) {
  op <- new_operation(
    name = "UpdateProject",
    http_method = "PUT",
    http_path = "/projects/{projectName}",
    paginator = list()
  )
  input <- .iot1clickprojects$update_project_input(projectName = projectName, description = description, placementTemplate = placementTemplate)
  output <- .iot1clickprojects$update_project_output()
  config <- get_config()
  svc <- .iot1clickprojects$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.iot1clickprojects$operations$update_project <- iot1clickprojects_update_project
