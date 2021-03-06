# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include lakeformation_service.R
NULL

#' Batch operation to grant permissions to the principal
#'
#' Batch operation to grant permissions to the principal.
#'
#' @usage
#' lakeformation_batch_grant_permissions(CatalogId, Entries)
#'
#' @param CatalogId The identifier for the Data Catalog. By default, the account ID. The
#' Data Catalog is the persistent metadata store. It contains database
#' definitions, table definitions, and other control information to manage
#' your AWS Lake Formation environment.
#' @param Entries &#91;required&#93; A list of up to 20 entries for resource permissions to be granted by
#' batch operation to the principal.
#'
#' @section Request syntax:
#' ```
#' svc$batch_grant_permissions(
#'   CatalogId = "string",
#'   Entries = list(
#'     list(
#'       Id = "string",
#'       Principal = list(
#'         DataLakePrincipalIdentifier = "string"
#'       ),
#'       Resource = list(
#'         Catalog = list(),
#'         Database = list(
#'           Name = "string"
#'         ),
#'         Table = list(
#'           DatabaseName = "string",
#'           Name = "string"
#'         ),
#'         TableWithColumns = list(
#'           DatabaseName = "string",
#'           Name = "string",
#'           ColumnNames = list(
#'             "string"
#'           ),
#'           ColumnWildcard = list(
#'             ExcludedColumnNames = list(
#'               "string"
#'             )
#'           )
#'         ),
#'         DataLocation = list(
#'           ResourceArn = "string"
#'         )
#'       ),
#'       Permissions = list(
#'         "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"
#'       ),
#'       PermissionsWithGrantOption = list(
#'         "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"
#'       )
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_batch_grant_permissions
lakeformation_batch_grant_permissions <- function(CatalogId = NULL, Entries) {
  op <- new_operation(
    name = "BatchGrantPermissions",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$batch_grant_permissions_input(CatalogId = CatalogId, Entries = Entries)
  output <- .lakeformation$batch_grant_permissions_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$batch_grant_permissions <- lakeformation_batch_grant_permissions

#' Batch operation to revoke permissions from the principal
#'
#' Batch operation to revoke permissions from the principal.
#'
#' @usage
#' lakeformation_batch_revoke_permissions(CatalogId, Entries)
#'
#' @param CatalogId The identifier for the Data Catalog. By default, the account ID. The
#' Data Catalog is the persistent metadata store. It contains database
#' definitions, table definitions, and other control information to manage
#' your AWS Lake Formation environment.
#' @param Entries &#91;required&#93; A list of up to 20 entries for resource permissions to be revoked by
#' batch operation to the principal.
#'
#' @section Request syntax:
#' ```
#' svc$batch_revoke_permissions(
#'   CatalogId = "string",
#'   Entries = list(
#'     list(
#'       Id = "string",
#'       Principal = list(
#'         DataLakePrincipalIdentifier = "string"
#'       ),
#'       Resource = list(
#'         Catalog = list(),
#'         Database = list(
#'           Name = "string"
#'         ),
#'         Table = list(
#'           DatabaseName = "string",
#'           Name = "string"
#'         ),
#'         TableWithColumns = list(
#'           DatabaseName = "string",
#'           Name = "string",
#'           ColumnNames = list(
#'             "string"
#'           ),
#'           ColumnWildcard = list(
#'             ExcludedColumnNames = list(
#'               "string"
#'             )
#'           )
#'         ),
#'         DataLocation = list(
#'           ResourceArn = "string"
#'         )
#'       ),
#'       Permissions = list(
#'         "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"
#'       ),
#'       PermissionsWithGrantOption = list(
#'         "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"
#'       )
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_batch_revoke_permissions
lakeformation_batch_revoke_permissions <- function(CatalogId = NULL, Entries) {
  op <- new_operation(
    name = "BatchRevokePermissions",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$batch_revoke_permissions_input(CatalogId = CatalogId, Entries = Entries)
  output <- .lakeformation$batch_revoke_permissions_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$batch_revoke_permissions <- lakeformation_batch_revoke_permissions

#' Deregisters the resource as managed by the Data Catalog
#'
#' Deregisters the resource as managed by the Data Catalog.
#' 
#' When you deregister a path, Lake Formation removes the path from the
#' inline policy attached to your service-linked role.
#'
#' @usage
#' lakeformation_deregister_resource(ResourceArn)
#'
#' @param ResourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the resource that you want to
#' deregister.
#'
#' @section Request syntax:
#' ```
#' svc$deregister_resource(
#'   ResourceArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_deregister_resource
lakeformation_deregister_resource <- function(ResourceArn) {
  op <- new_operation(
    name = "DeregisterResource",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$deregister_resource_input(ResourceArn = ResourceArn)
  output <- .lakeformation$deregister_resource_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$deregister_resource <- lakeformation_deregister_resource

#' Retrieves the current data access role for the given resource registered
#' in AWS Lake Formation
#'
#' Retrieves the current data access role for the given resource registered
#' in AWS Lake Formation.
#'
#' @usage
#' lakeformation_describe_resource(ResourceArn)
#'
#' @param ResourceArn &#91;required&#93; The resource ARN.
#'
#' @section Request syntax:
#' ```
#' svc$describe_resource(
#'   ResourceArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_describe_resource
lakeformation_describe_resource <- function(ResourceArn) {
  op <- new_operation(
    name = "DescribeResource",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$describe_resource_input(ResourceArn = ResourceArn)
  output <- .lakeformation$describe_resource_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$describe_resource <- lakeformation_describe_resource

#' The AWS Lake Formation principal
#'
#' The AWS Lake Formation principal.
#'
#' @usage
#' lakeformation_get_data_lake_settings(CatalogId)
#'
#' @param CatalogId The identifier for the Data Catalog. By default, the account ID. The
#' Data Catalog is the persistent metadata store. It contains database
#' definitions, table definitions, and other control information to manage
#' your AWS Lake Formation environment.
#'
#' @section Request syntax:
#' ```
#' svc$get_data_lake_settings(
#'   CatalogId = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_get_data_lake_settings
lakeformation_get_data_lake_settings <- function(CatalogId = NULL) {
  op <- new_operation(
    name = "GetDataLakeSettings",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$get_data_lake_settings_input(CatalogId = CatalogId)
  output <- .lakeformation$get_data_lake_settings_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$get_data_lake_settings <- lakeformation_get_data_lake_settings

#' Returns the permissions for a specified table or database resource
#' located at a path in Amazon S3
#'
#' Returns the permissions for a specified table or database resource
#' located at a path in Amazon S3.
#'
#' @usage
#' lakeformation_get_effective_permissions_for_path(CatalogId, ResourceArn,
#'   NextToken, MaxResults)
#'
#' @param CatalogId The identifier for the Data Catalog. By default, the account ID. The
#' Data Catalog is the persistent metadata store. It contains database
#' definitions, table definitions, and other control information to manage
#' your AWS Lake Formation environment.
#' @param ResourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the resource for which you want to get
#' permissions.
#' @param NextToken A continuation token, if this is not the first call to retrieve this
#' list.
#' @param MaxResults The maximum number of results to return.
#'
#' @section Request syntax:
#' ```
#' svc$get_effective_permissions_for_path(
#'   CatalogId = "string",
#'   ResourceArn = "string",
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_get_effective_permissions_for_path
lakeformation_get_effective_permissions_for_path <- function(CatalogId = NULL, ResourceArn, NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "GetEffectivePermissionsForPath",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$get_effective_permissions_for_path_input(CatalogId = CatalogId, ResourceArn = ResourceArn, NextToken = NextToken, MaxResults = MaxResults)
  output <- .lakeformation$get_effective_permissions_for_path_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$get_effective_permissions_for_path <- lakeformation_get_effective_permissions_for_path

#' Grants permissions to the principal to access metadata in the Data
#' Catalog and data organized in underlying data storage such as Amazon S3
#'
#' Grants permissions to the principal to access metadata in the Data
#' Catalog and data organized in underlying data storage such as Amazon S3.
#' 
#' For information about permissions, see Security and Access Control to
#' Metadata and Data.
#'
#' @usage
#' lakeformation_grant_permissions(CatalogId, Principal, Resource,
#'   Permissions, PermissionsWithGrantOption)
#'
#' @param CatalogId The identifier for the Data Catalog. By default, the account ID. The
#' Data Catalog is the persistent metadata store. It contains database
#' definitions, table definitions, and other control information to manage
#' your AWS Lake Formation environment.
#' @param Principal &#91;required&#93; The principal to be granted the permissions on the resource. Supported
#' principals are IAM users or IAM roles, and they are defined by their
#' principal type and their ARN.
#' 
#' Note that if you define a resource with a particular ARN, then later
#' delete, and recreate a resource with that same ARN, the resource
#' maintains the permissions already granted.
#' @param Resource &#91;required&#93; The resource to which permissions are to be granted. Resources in AWS
#' Lake Formation are the Data Catalog, databases, and tables.
#' @param Permissions &#91;required&#93; The permissions granted to the principal on the resource. AWS Lake
#' Formation defines privileges to grant and revoke access to metadata in
#' the Data Catalog and data organized in underlying data storage such as
#' Amazon S3. AWS Lake Formation requires that each principal be authorized
#' to perform a specific task on AWS Lake Formation resources.
#' @param PermissionsWithGrantOption Indicates a list of the granted permissions that the principal may pass
#' to other users. These permissions may only be a subset of the
#' permissions granted in the `Privileges`.
#'
#' @section Request syntax:
#' ```
#' svc$grant_permissions(
#'   CatalogId = "string",
#'   Principal = list(
#'     DataLakePrincipalIdentifier = "string"
#'   ),
#'   Resource = list(
#'     Catalog = list(),
#'     Database = list(
#'       Name = "string"
#'     ),
#'     Table = list(
#'       DatabaseName = "string",
#'       Name = "string"
#'     ),
#'     TableWithColumns = list(
#'       DatabaseName = "string",
#'       Name = "string",
#'       ColumnNames = list(
#'         "string"
#'       ),
#'       ColumnWildcard = list(
#'         ExcludedColumnNames = list(
#'           "string"
#'         )
#'       )
#'     ),
#'     DataLocation = list(
#'       ResourceArn = "string"
#'     )
#'   ),
#'   Permissions = list(
#'     "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"
#'   ),
#'   PermissionsWithGrantOption = list(
#'     "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_grant_permissions
lakeformation_grant_permissions <- function(CatalogId = NULL, Principal, Resource, Permissions, PermissionsWithGrantOption = NULL) {
  op <- new_operation(
    name = "GrantPermissions",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$grant_permissions_input(CatalogId = CatalogId, Principal = Principal, Resource = Resource, Permissions = Permissions, PermissionsWithGrantOption = PermissionsWithGrantOption)
  output <- .lakeformation$grant_permissions_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$grant_permissions <- lakeformation_grant_permissions

#' Returns a list of the principal permissions on the resource, filtered by
#' the permissions of the caller
#'
#' Returns a list of the principal permissions on the resource, filtered by
#' the permissions of the caller. For example, if you are granted an ALTER
#' permission, you are able to see only the principal permissions for
#' ALTER.
#' 
#' This operation returns only those permissions that have been explicitly
#' granted.
#' 
#' For information about permissions, see Security and Access Control to
#' Metadata and Data.
#'
#' @usage
#' lakeformation_list_permissions(CatalogId, Principal, ResourceType,
#'   Resource, NextToken, MaxResults)
#'
#' @param CatalogId The identifier for the Data Catalog. By default, the account ID. The
#' Data Catalog is the persistent metadata store. It contains database
#' definitions, table definitions, and other control information to manage
#' your AWS Lake Formation environment.
#' @param Principal Specifies a principal to filter the permissions returned.
#' @param ResourceType Specifies a resource type to filter the permissions returned.
#' @param Resource A resource where you will get a list of the principal permissions.
#' 
#' This operation does not support getting privileges on a table with
#' columns. Instead, call this operation on the table, and the operation
#' returns the table and the table w columns.
#' @param NextToken A continuation token, if this is not the first call to retrieve this
#' list.
#' @param MaxResults The maximum number of results to return.
#'
#' @section Request syntax:
#' ```
#' svc$list_permissions(
#'   CatalogId = "string",
#'   Principal = list(
#'     DataLakePrincipalIdentifier = "string"
#'   ),
#'   ResourceType = "CATALOG"|"DATABASE"|"TABLE"|"DATA_LOCATION",
#'   Resource = list(
#'     Catalog = list(),
#'     Database = list(
#'       Name = "string"
#'     ),
#'     Table = list(
#'       DatabaseName = "string",
#'       Name = "string"
#'     ),
#'     TableWithColumns = list(
#'       DatabaseName = "string",
#'       Name = "string",
#'       ColumnNames = list(
#'         "string"
#'       ),
#'       ColumnWildcard = list(
#'         ExcludedColumnNames = list(
#'           "string"
#'         )
#'       )
#'     ),
#'     DataLocation = list(
#'       ResourceArn = "string"
#'     )
#'   ),
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_list_permissions
lakeformation_list_permissions <- function(CatalogId = NULL, Principal = NULL, ResourceType = NULL, Resource = NULL, NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "ListPermissions",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$list_permissions_input(CatalogId = CatalogId, Principal = Principal, ResourceType = ResourceType, Resource = Resource, NextToken = NextToken, MaxResults = MaxResults)
  output <- .lakeformation$list_permissions_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$list_permissions <- lakeformation_list_permissions

#' Lists the resources registered to be managed by the Data Catalog
#'
#' Lists the resources registered to be managed by the Data Catalog.
#'
#' @usage
#' lakeformation_list_resources(FilterConditionList, MaxResults, NextToken)
#'
#' @param FilterConditionList Any applicable row-level and/or column-level filtering conditions for
#' the resources.
#' @param MaxResults The maximum number of resource results.
#' @param NextToken A continuation token, if this is not the first call to retrieve these
#' resources.
#'
#' @section Request syntax:
#' ```
#' svc$list_resources(
#'   FilterConditionList = list(
#'     list(
#'       Field = "RESOURCE_ARN"|"ROLE_ARN"|"LAST_MODIFIED",
#'       ComparisonOperator = "EQ"|"NE"|"LE"|"LT"|"GE"|"GT"|"CONTAINS"|"NOT_CONTAINS"|"BEGINS_WITH"|"IN"|"BETWEEN",
#'       StringValueList = list(
#'         "string"
#'       )
#'     )
#'   ),
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_list_resources
lakeformation_list_resources <- function(FilterConditionList = NULL, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListResources",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$list_resources_input(FilterConditionList = FilterConditionList, MaxResults = MaxResults, NextToken = NextToken)
  output <- .lakeformation$list_resources_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$list_resources <- lakeformation_list_resources

#' The AWS Lake Formation principal
#'
#' The AWS Lake Formation principal.
#'
#' @usage
#' lakeformation_put_data_lake_settings(CatalogId, DataLakeSettings)
#'
#' @param CatalogId The identifier for the Data Catalog. By default, the account ID. The
#' Data Catalog is the persistent metadata store. It contains database
#' definitions, table definitions, and other control information to manage
#' your AWS Lake Formation environment.
#' @param DataLakeSettings &#91;required&#93; A list of AWS Lake Formation principals.
#'
#' @section Request syntax:
#' ```
#' svc$put_data_lake_settings(
#'   CatalogId = "string",
#'   DataLakeSettings = list(
#'     DataLakeAdmins = list(
#'       list(
#'         DataLakePrincipalIdentifier = "string"
#'       )
#'     ),
#'     CreateDatabaseDefaultPermissions = list(
#'       list(
#'         Principal = list(
#'           DataLakePrincipalIdentifier = "string"
#'         ),
#'         Permissions = list(
#'           "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"
#'         )
#'       )
#'     ),
#'     CreateTableDefaultPermissions = list(
#'       list(
#'         Principal = list(
#'           DataLakePrincipalIdentifier = "string"
#'         ),
#'         Permissions = list(
#'           "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"
#'         )
#'       )
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_put_data_lake_settings
lakeformation_put_data_lake_settings <- function(CatalogId = NULL, DataLakeSettings) {
  op <- new_operation(
    name = "PutDataLakeSettings",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$put_data_lake_settings_input(CatalogId = CatalogId, DataLakeSettings = DataLakeSettings)
  output <- .lakeformation$put_data_lake_settings_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$put_data_lake_settings <- lakeformation_put_data_lake_settings

#' Registers the resource as managed by the Data Catalog
#'
#' Registers the resource as managed by the Data Catalog.
#' 
#' To add or update data, Lake Formation needs read/write access to the
#' chosen Amazon S3 path. Choose a role that you know has permission to do
#' this, or choose the AWSServiceRoleForLakeFormationDataAccess
#' service-linked role. When you register the first Amazon S3 path, the
#' service-linked role and a new inline policy are created on your behalf.
#' Lake Formation adds the first path to the inline policy and attaches it
#' to the service-linked role. When you register subsequent paths, Lake
#' Formation adds the path to the existing policy.
#'
#' @usage
#' lakeformation_register_resource(ResourceArn, UseServiceLinkedRole,
#'   RoleArn)
#'
#' @param ResourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the resource that you want to
#' register.
#' @param UseServiceLinkedRole Designates a trusted caller, an IAM principal, by registering this
#' caller with the Data Catalog.
#' @param RoleArn The identifier for the role.
#'
#' @section Request syntax:
#' ```
#' svc$register_resource(
#'   ResourceArn = "string",
#'   UseServiceLinkedRole = TRUE|FALSE,
#'   RoleArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_register_resource
lakeformation_register_resource <- function(ResourceArn, UseServiceLinkedRole = NULL, RoleArn = NULL) {
  op <- new_operation(
    name = "RegisterResource",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$register_resource_input(ResourceArn = ResourceArn, UseServiceLinkedRole = UseServiceLinkedRole, RoleArn = RoleArn)
  output <- .lakeformation$register_resource_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$register_resource <- lakeformation_register_resource

#' Revokes permissions to the principal to access metadata in the Data
#' Catalog and data organized in underlying data storage such as Amazon S3
#'
#' Revokes permissions to the principal to access metadata in the Data
#' Catalog and data organized in underlying data storage such as Amazon S3.
#'
#' @usage
#' lakeformation_revoke_permissions(CatalogId, Principal, Resource,
#'   Permissions, PermissionsWithGrantOption)
#'
#' @param CatalogId The identifier for the Data Catalog. By default, the account ID. The
#' Data Catalog is the persistent metadata store. It contains database
#' definitions, table definitions, and other control information to manage
#' your AWS Lake Formation environment.
#' @param Principal &#91;required&#93; The principal to be revoked permissions on the resource.
#' @param Resource &#91;required&#93; The resource to which permissions are to be revoked.
#' @param Permissions &#91;required&#93; The permissions revoked to the principal on the resource. For
#' information about permissions, see Security and Access Control to
#' Metadata and Data.
#' @param PermissionsWithGrantOption Indicates a list of permissions for which to revoke the grant option
#' allowing the principal to pass permissions to other principals.
#'
#' @section Request syntax:
#' ```
#' svc$revoke_permissions(
#'   CatalogId = "string",
#'   Principal = list(
#'     DataLakePrincipalIdentifier = "string"
#'   ),
#'   Resource = list(
#'     Catalog = list(),
#'     Database = list(
#'       Name = "string"
#'     ),
#'     Table = list(
#'       DatabaseName = "string",
#'       Name = "string"
#'     ),
#'     TableWithColumns = list(
#'       DatabaseName = "string",
#'       Name = "string",
#'       ColumnNames = list(
#'         "string"
#'       ),
#'       ColumnWildcard = list(
#'         ExcludedColumnNames = list(
#'           "string"
#'         )
#'       )
#'     ),
#'     DataLocation = list(
#'       ResourceArn = "string"
#'     )
#'   ),
#'   Permissions = list(
#'     "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"
#'   ),
#'   PermissionsWithGrantOption = list(
#'     "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_revoke_permissions
lakeformation_revoke_permissions <- function(CatalogId = NULL, Principal, Resource, Permissions, PermissionsWithGrantOption = NULL) {
  op <- new_operation(
    name = "RevokePermissions",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$revoke_permissions_input(CatalogId = CatalogId, Principal = Principal, Resource = Resource, Permissions = Permissions, PermissionsWithGrantOption = PermissionsWithGrantOption)
  output <- .lakeformation$revoke_permissions_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$revoke_permissions <- lakeformation_revoke_permissions

#' Updates the data access role used for vending access to the given
#' (registered) resource in AWS Lake Formation
#'
#' Updates the data access role used for vending access to the given
#' (registered) resource in AWS Lake Formation.
#'
#' @usage
#' lakeformation_update_resource(RoleArn, ResourceArn)
#'
#' @param RoleArn &#91;required&#93; The new role to use for the given resource registered in AWS Lake
#' Formation.
#' @param ResourceArn &#91;required&#93; The resource ARN.
#'
#' @section Request syntax:
#' ```
#' svc$update_resource(
#'   RoleArn = "string",
#'   ResourceArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname lakeformation_update_resource
lakeformation_update_resource <- function(RoleArn, ResourceArn) {
  op <- new_operation(
    name = "UpdateResource",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .lakeformation$update_resource_input(RoleArn = RoleArn, ResourceArn = ResourceArn)
  output <- .lakeformation$update_resource_output()
  config <- get_config()
  svc <- .lakeformation$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.lakeformation$operations$update_resource <- lakeformation_update_resource
