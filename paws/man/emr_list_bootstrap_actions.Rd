% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emr_operations.R
\name{emr_list_bootstrap_actions}
\alias{emr_list_bootstrap_actions}
\title{Provides information about the bootstrap actions associated with a
cluster}
\usage{
emr_list_bootstrap_actions(ClusterId, Marker)
}
\arguments{
\item{ClusterId}{[required] The cluster identifier for the bootstrap actions to list.}

\item{Marker}{The pagination token that indicates the next set of results to retrieve.}
}
\description{
Provides information about the bootstrap actions associated with a
cluster.
}
\section{Request syntax}{
\preformatted{svc$list_bootstrap_actions(
  ClusterId = "string",
  Marker = "string"
)
}
}

\keyword{internal}
