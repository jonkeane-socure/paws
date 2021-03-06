% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dynamodb_operations.R
\name{dynamodb_restore_table_to_point_in_time}
\alias{dynamodb_restore_table_to_point_in_time}
\title{Restores the specified table to the specified point in time within
EarliestRestorableDateTime and LatestRestorableDateTime}
\usage{
dynamodb_restore_table_to_point_in_time(SourceTableName,
  TargetTableName, UseLatestRestorableTime, RestoreDateTime,
  BillingModeOverride, GlobalSecondaryIndexOverride,
  LocalSecondaryIndexOverride, ProvisionedThroughputOverride)
}
\arguments{
\item{SourceTableName}{[required] Name of the source table that is being restored.}

\item{TargetTableName}{[required] The name of the new table to which it must be restored to.}

\item{UseLatestRestorableTime}{Restore the table to the latest possible time.
\code{LatestRestorableDateTime} is typically 5 minutes before the current
time.}

\item{RestoreDateTime}{Time in the past to restore the table to.}

\item{BillingModeOverride}{The billing mode of the restored table.}

\item{GlobalSecondaryIndexOverride}{List of global secondary indexes for the restored table. The indexes
provided should match existing secondary indexes. You can choose to
exclude some or all of the indexes at the time of restore.}

\item{LocalSecondaryIndexOverride}{List of local secondary indexes for the restored table. The indexes
provided should match existing secondary indexes. You can choose to
exclude some or all of the indexes at the time of restore.}

\item{ProvisionedThroughputOverride}{Provisioned throughput settings for the restored table.}
}
\description{
Restores the specified table to the specified point in time within
\code{EarliestRestorableDateTime} and \code{LatestRestorableDateTime}. You can
restore your table to any point in time during the last 35 days. Any
number of users can execute up to 4 concurrent restores (any type of
restore) in a given account.
}
\details{
When you restore using point in time recovery, DynamoDB restores your
table data to the state based on the selected date and time
(day:hour:minute:second) to a new table.

Along with data, the following are also included on the new restored
table using point in time recovery:
\itemize{
\item Global secondary indexes (GSIs)
\item Local secondary indexes (LSIs)
\item Provisioned read and write capacity
\item Encryption settings

All these settings come from the current settings of the source
table at the time of restore.
}

You must manually set up the following on the restored table:
\itemize{
\item Auto scaling policies
\item IAM policies
\item Amazon CloudWatch metrics and alarms
\item Tags
\item Stream settings
\item Time to Live (TTL) settings
\item Point in time recovery settings
}
}
\section{Request syntax}{
\preformatted{svc$restore_table_to_point_in_time(
  SourceTableName = "string",
  TargetTableName = "string",
  UseLatestRestorableTime = TRUE|FALSE,
  RestoreDateTime = as.POSIXct(
    "2015-01-01"
  ),
  BillingModeOverride = "PROVISIONED"|"PAY_PER_REQUEST",
  GlobalSecondaryIndexOverride = list(
    list(
      IndexName = "string",
      KeySchema = list(
        list(
          AttributeName = "string",
          KeyType = "HASH"|"RANGE"
        )
      ),
      Projection = list(
        ProjectionType = "ALL"|"KEYS_ONLY"|"INCLUDE",
        NonKeyAttributes = list(
          "string"
        )
      ),
      ProvisionedThroughput = list(
        ReadCapacityUnits = 123,
        WriteCapacityUnits = 123
      )
    )
  ),
  LocalSecondaryIndexOverride = list(
    list(
      IndexName = "string",
      KeySchema = list(
        list(
          AttributeName = "string",
          KeyType = "HASH"|"RANGE"
        )
      ),
      Projection = list(
        ProjectionType = "ALL"|"KEYS_ONLY"|"INCLUDE",
        NonKeyAttributes = list(
          "string"
        )
      )
    )
  ),
  ProvisionedThroughputOverride = list(
    ReadCapacityUnits = 123,
    WriteCapacityUnits = 123
  )
)
}
}

\keyword{internal}
