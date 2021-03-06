% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docdb_operations.R
\name{docdb_create_db_cluster_snapshot}
\alias{docdb_create_db_cluster_snapshot}
\title{Creates a snapshot of a DB cluster}
\usage{
docdb_create_db_cluster_snapshot(DBClusterSnapshotIdentifier,
  DBClusterIdentifier, Tags)
}
\arguments{
\item{DBClusterSnapshotIdentifier}{[required] The identifier of the DB cluster snapshot. This parameter is stored as a
lowercase string.

Constraints:
\itemize{
\item Must contain from 1 to 63 letters, numbers, or hyphens.
\item The first character must be a letter.
\item Cannot end with a hyphen or contain two consecutive hyphens.
}

Example: \code{my-cluster-snapshot1}}

\item{DBClusterIdentifier}{[required] The identifier of the DB cluster to create a snapshot for. This
parameter is not case sensitive.

Constraints:
\itemize{
\item Must match the identifier of an existing \code{DBCluster}.
}

Example: \code{my-cluster}}

\item{Tags}{The tags to be assigned to the DB cluster snapshot.}
}
\description{
Creates a snapshot of a DB cluster.
}
\section{Request syntax}{
\preformatted{svc$create_db_cluster_snapshot(
  DBClusterSnapshotIdentifier = "string",
  DBClusterIdentifier = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
