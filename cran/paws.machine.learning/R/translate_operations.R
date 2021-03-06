# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include translate_service.R
NULL

#' A synchronous action that deletes a custom terminology
#'
#' A synchronous action that deletes a custom terminology.
#'
#' @usage
#' translate_delete_terminology(Name)
#'
#' @param Name &#91;required&#93; The name of the custom terminology being deleted.
#'
#' @section Request syntax:
#' ```
#' svc$delete_terminology(
#'   Name = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname translate_delete_terminology
translate_delete_terminology <- function(Name) {
  op <- new_operation(
    name = "DeleteTerminology",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .translate$delete_terminology_input(Name = Name)
  output <- .translate$delete_terminology_output()
  config <- get_config()
  svc <- .translate$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.translate$operations$delete_terminology <- translate_delete_terminology

#' Gets the properties associated with an asycnhronous batch translation
#' job including name, ID, status, source and target languages,
#' input/output S3 buckets, and so on
#'
#' Gets the properties associated with an asycnhronous batch translation
#' job including name, ID, status, source and target languages,
#' input/output S3 buckets, and so on.
#'
#' @usage
#' translate_describe_text_translation_job(JobId)
#'
#' @param JobId &#91;required&#93; The identifier that Amazon Translate generated for the job. The
#' StartTextTranslationJob operation returns this identifier in its
#' response.
#'
#' @section Request syntax:
#' ```
#' svc$describe_text_translation_job(
#'   JobId = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname translate_describe_text_translation_job
translate_describe_text_translation_job <- function(JobId) {
  op <- new_operation(
    name = "DescribeTextTranslationJob",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .translate$describe_text_translation_job_input(JobId = JobId)
  output <- .translate$describe_text_translation_job_output()
  config <- get_config()
  svc <- .translate$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.translate$operations$describe_text_translation_job <- translate_describe_text_translation_job

#' Retrieves a custom terminology
#'
#' Retrieves a custom terminology.
#'
#' @usage
#' translate_get_terminology(Name, TerminologyDataFormat)
#'
#' @param Name &#91;required&#93; The name of the custom terminology being retrieved.
#' @param TerminologyDataFormat &#91;required&#93; The data format of the custom terminology being retrieved, either CSV or
#' TMX.
#'
#' @section Request syntax:
#' ```
#' svc$get_terminology(
#'   Name = "string",
#'   TerminologyDataFormat = "CSV"|"TMX"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname translate_get_terminology
translate_get_terminology <- function(Name, TerminologyDataFormat) {
  op <- new_operation(
    name = "GetTerminology",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .translate$get_terminology_input(Name = Name, TerminologyDataFormat = TerminologyDataFormat)
  output <- .translate$get_terminology_output()
  config <- get_config()
  svc <- .translate$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.translate$operations$get_terminology <- translate_get_terminology

#' Creates or updates a custom terminology, depending on whether or not one
#' already exists for the given terminology name
#'
#' Creates or updates a custom terminology, depending on whether or not one
#' already exists for the given terminology name. Importing a terminology
#' with the same name as an existing one will merge the terminologies based
#' on the chosen merge strategy. Currently, the only supported merge
#' strategy is OVERWRITE, and so the imported terminology will overwrite an
#' existing terminology of the same name.
#' 
#' If you import a terminology that overwrites an existing one, the new
#' terminology take up to 10 minutes to fully propagate and be available
#' for use in a translation due to cache policies with the DataPlane
#' service that performs the translations.
#'
#' @usage
#' translate_import_terminology(Name, MergeStrategy, Description,
#'   TerminologyData, EncryptionKey)
#'
#' @param Name &#91;required&#93; The name of the custom terminology being imported.
#' @param MergeStrategy &#91;required&#93; The merge strategy of the custom terminology being imported. Currently,
#' only the OVERWRITE merge strategy is supported. In this case, the
#' imported terminology will overwrite an existing terminology of the same
#' name.
#' @param Description The description of the custom terminology being imported.
#' @param TerminologyData &#91;required&#93; The terminology data for the custom terminology being imported.
#' @param EncryptionKey The encryption key for the custom terminology being imported.
#'
#' @section Request syntax:
#' ```
#' svc$import_terminology(
#'   Name = "string",
#'   MergeStrategy = "OVERWRITE",
#'   Description = "string",
#'   TerminologyData = list(
#'     File = raw,
#'     Format = "CSV"|"TMX"
#'   ),
#'   EncryptionKey = list(
#'     Type = "KMS",
#'     Id = "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname translate_import_terminology
translate_import_terminology <- function(Name, MergeStrategy, Description = NULL, TerminologyData, EncryptionKey = NULL) {
  op <- new_operation(
    name = "ImportTerminology",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .translate$import_terminology_input(Name = Name, MergeStrategy = MergeStrategy, Description = Description, TerminologyData = TerminologyData, EncryptionKey = EncryptionKey)
  output <- .translate$import_terminology_output()
  config <- get_config()
  svc <- .translate$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.translate$operations$import_terminology <- translate_import_terminology

#' Provides a list of custom terminologies associated with your account
#'
#' Provides a list of custom terminologies associated with your account.
#'
#' @usage
#' translate_list_terminologies(NextToken, MaxResults)
#'
#' @param NextToken If the result of the request to ListTerminologies was truncated, include
#' the NextToken to fetch the next group of custom terminologies.
#' @param MaxResults The maximum number of custom terminologies returned per list request.
#'
#' @section Request syntax:
#' ```
#' svc$list_terminologies(
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname translate_list_terminologies
translate_list_terminologies <- function(NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "ListTerminologies",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .translate$list_terminologies_input(NextToken = NextToken, MaxResults = MaxResults)
  output <- .translate$list_terminologies_output()
  config <- get_config()
  svc <- .translate$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.translate$operations$list_terminologies <- translate_list_terminologies

#' Gets a list of the batch translation jobs that you have submitted
#'
#' Gets a list of the batch translation jobs that you have submitted.
#'
#' @usage
#' translate_list_text_translation_jobs(Filter, NextToken, MaxResults)
#'
#' @param Filter The parameters that specify which batch translation jobs to retrieve.
#' Filters include job name, job status, and submission time. You can only
#' set one filter at a time.
#' @param NextToken The token to request the next page of results.
#' @param MaxResults The maximum number of results to return in each page. The default value
#' is 100.
#'
#' @section Request syntax:
#' ```
#' svc$list_text_translation_jobs(
#'   Filter = list(
#'     JobName = "string",
#'     JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"COMPLETED_WITH_ERROR"|"FAILED"|"STOP_REQUESTED"|"STOPPED",
#'     SubmittedBeforeTime = as.POSIXct(
#'       "2015-01-01"
#'     ),
#'     SubmittedAfterTime = as.POSIXct(
#'       "2015-01-01"
#'     )
#'   ),
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname translate_list_text_translation_jobs
translate_list_text_translation_jobs <- function(Filter = NULL, NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "ListTextTranslationJobs",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .translate$list_text_translation_jobs_input(Filter = Filter, NextToken = NextToken, MaxResults = MaxResults)
  output <- .translate$list_text_translation_jobs_output()
  config <- get_config()
  svc <- .translate$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.translate$operations$list_text_translation_jobs <- translate_list_text_translation_jobs

#' Starts an asynchronous batch translation job
#'
#' Starts an asynchronous batch translation job. Batch translation jobs can
#' be used to translate large volumes of text across multiple documents at
#' once. For more information, see async.
#' 
#' Batch translation jobs can be described with the
#' DescribeTextTranslationJob operation, listed with the
#' ListTextTranslationJobs operation, and stopped with the
#' StopTextTranslationJob operation.
#' 
#' Amazon Translate does not support batch translation of multiple source
#' languages at once.
#'
#' @usage
#' translate_start_text_translation_job(JobName, InputDataConfig,
#'   OutputDataConfig, DataAccessRoleArn, SourceLanguageCode,
#'   TargetLanguageCodes, TerminologyNames, ClientToken)
#'
#' @param JobName The name of the batch translation job to be performed.
#' @param InputDataConfig &#91;required&#93; Specifies the format and S3 location of the input documents for the
#' translation job.
#' @param OutputDataConfig &#91;required&#93; Specifies the S3 folder to which your job output will be saved.
#' @param DataAccessRoleArn &#91;required&#93; The Amazon Resource Name (ARN) of an AWS Identity Access and Management
#' (IAM) role that grants Amazon Translate read access to your input data.
#' For more nformation, see identity-and-access-management.
#' @param SourceLanguageCode &#91;required&#93; The language code of the input language. For a list of language codes,
#' see what-is-languages.
#' 
#' Amazon Translate does not automatically detect a source language during
#' batch translation jobs.
#' @param TargetLanguageCodes &#91;required&#93; The language code of the output language.
#' @param TerminologyNames The name of the terminology to use in the batch translation job. For a
#' list of available terminologies, use the ListTerminologies operation.
#' @param ClientToken &#91;required&#93; The client token of the EC2 instance calling the request. This token is
#' auto-generated when using the Amazon Translate SDK. Otherwise, use the
#' [DescribeInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html)
#' EC2 operation to retreive an instance\'s client token. For more
#' information, see [Client
#' Tokens](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html#client-tokens)
#' in the EC2 User Guide.
#'
#' @section Request syntax:
#' ```
#' svc$start_text_translation_job(
#'   JobName = "string",
#'   InputDataConfig = list(
#'     S3Uri = "string",
#'     ContentType = "string"
#'   ),
#'   OutputDataConfig = list(
#'     S3Uri = "string"
#'   ),
#'   DataAccessRoleArn = "string",
#'   SourceLanguageCode = "string",
#'   TargetLanguageCodes = list(
#'     "string"
#'   ),
#'   TerminologyNames = list(
#'     "string"
#'   ),
#'   ClientToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname translate_start_text_translation_job
translate_start_text_translation_job <- function(JobName = NULL, InputDataConfig, OutputDataConfig, DataAccessRoleArn, SourceLanguageCode, TargetLanguageCodes, TerminologyNames = NULL, ClientToken) {
  op <- new_operation(
    name = "StartTextTranslationJob",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .translate$start_text_translation_job_input(JobName = JobName, InputDataConfig = InputDataConfig, OutputDataConfig = OutputDataConfig, DataAccessRoleArn = DataAccessRoleArn, SourceLanguageCode = SourceLanguageCode, TargetLanguageCodes = TargetLanguageCodes, TerminologyNames = TerminologyNames, ClientToken = ClientToken)
  output <- .translate$start_text_translation_job_output()
  config <- get_config()
  svc <- .translate$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.translate$operations$start_text_translation_job <- translate_start_text_translation_job

#' Stops an asynchronous batch translation job that is in progress
#'
#' Stops an asynchronous batch translation job that is in progress.
#' 
#' If the job\'s state is `IN_PROGRESS`, the job will be marked for
#' termination and put into the `STOP_REQUESTED` state. If the job
#' completes before it can be stopped, it is put into the `COMPLETED`
#' state. Otherwise, the job is put into the `STOPPED` state.
#' 
#' Asynchronous batch translation jobs are started with the
#' StartTextTranslationJob operation. You can use the
#' DescribeTextTranslationJob or ListTextTranslationJobs operations to get
#' a batch translation job\'s `JobId`.
#'
#' @usage
#' translate_stop_text_translation_job(JobId)
#'
#' @param JobId &#91;required&#93; The job ID of the job to be stopped.
#'
#' @section Request syntax:
#' ```
#' svc$stop_text_translation_job(
#'   JobId = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname translate_stop_text_translation_job
translate_stop_text_translation_job <- function(JobId) {
  op <- new_operation(
    name = "StopTextTranslationJob",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .translate$stop_text_translation_job_input(JobId = JobId)
  output <- .translate$stop_text_translation_job_output()
  config <- get_config()
  svc <- .translate$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.translate$operations$stop_text_translation_job <- translate_stop_text_translation_job

#' Translates input text from the source language to the target language
#'
#' Translates input text from the source language to the target language.
#' For a list of available languages and language codes, see
#' what-is-languages.
#'
#' @usage
#' translate_translate_text(Text, TerminologyNames, SourceLanguageCode,
#'   TargetLanguageCode)
#'
#' @param Text &#91;required&#93; The text to translate. The text string can be a maximum of 5,000 bytes
#' long. Depending on your character set, this may be fewer than 5,000
#' characters.
#' @param TerminologyNames The name of the terminology list file to be used in the TranslateText
#' request. You can use 1 terminology list at most in a `TranslateText`
#' request. Terminology lists can contain a maximum of 256 terms.
#' @param SourceLanguageCode &#91;required&#93; The language code for the language of the source text. The language must
#' be a language supported by Amazon Translate. For a list of language
#' codes, see what-is-languages.
#' 
#' To have Amazon Translate determine the source language of your text, you
#' can specify `auto` in the `SourceLanguageCode` field. If you specify
#' `auto`, Amazon Translate will call [Amazon
#' Comprehend](https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html)
#' to determine the source language.
#' @param TargetLanguageCode &#91;required&#93; The language code requested for the language of the target text. The
#' language must be a language supported by Amazon Translate.
#'
#' @section Request syntax:
#' ```
#' svc$translate_text(
#'   Text = "string",
#'   TerminologyNames = list(
#'     "string"
#'   ),
#'   SourceLanguageCode = "string",
#'   TargetLanguageCode = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname translate_translate_text
translate_translate_text <- function(Text, TerminologyNames = NULL, SourceLanguageCode, TargetLanguageCode) {
  op <- new_operation(
    name = "TranslateText",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .translate$translate_text_input(Text = Text, TerminologyNames = TerminologyNames, SourceLanguageCode = SourceLanguageCode, TargetLanguageCode = TargetLanguageCode)
  output <- .translate$translate_text_output()
  config <- get_config()
  svc <- .translate$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.translate$operations$translate_text <- translate_translate_text
