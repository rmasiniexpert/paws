% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrass_operations.R
\name{greengrass_list_deployments}
\alias{greengrass_list_deployments}
\title{Returns a history of deployments for the group}
\usage{
greengrass_list_deployments(GroupId, MaxResults, NextToken)
}
\arguments{
\item{GroupId}{[required] The ID of the Greengrass group.}

\item{MaxResults}{The maximum number of results to be returned per request.}

\item{NextToken}{The token for the next set of results, or ''null'' if there are no additional results.}
}
\description{
Returns a history of deployments for the group.
}
\section{Request syntax}{
\preformatted{svc$list_deployments(
  GroupId = "string",
  MaxResults = "string",
  NextToken = "string"
)
}
}

\keyword{internal}
