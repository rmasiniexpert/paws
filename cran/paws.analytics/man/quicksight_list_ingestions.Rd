% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_list_ingestions}
\alias{quicksight_list_ingestions}
\title{Lists the history of SPICE ingestions for a dataset}
\usage{
quicksight_list_ingestions(DataSetId, NextToken, AwsAccountId,
  MaxResults)
}
\arguments{
\item{DataSetId}{[required] The ID of the dataset used in the ingestion.}

\item{NextToken}{The token for the next set of results, or null if there are no more
results.}

\item{AwsAccountId}{[required] The AWS account ID.}

\item{MaxResults}{The maximum number of results to be returned per request.}
}
\description{
Lists the history of SPICE ingestions for a dataset.
}
\section{Request syntax}{
\preformatted{svc$list_ingestions(
  DataSetId = "string",
  NextToken = "string",
  AwsAccountId = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
