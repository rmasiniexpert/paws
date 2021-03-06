% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchlogs_operations.R
\name{cloudwatchlogs_put_query_definition}
\alias{cloudwatchlogs_put_query_definition}
\title{Put query definition}
\usage{
cloudwatchlogs_put_query_definition(name, queryDefinitionId,
  logGroupNames, queryString)
}
\arguments{
\item{name}{[required]}

\item{queryDefinitionId}{}

\item{logGroupNames}{}

\item{queryString}{[required]}
}
\description{
Put query definition
}
\section{Request syntax}{
\preformatted{svc$put_query_definition(
  name = "string",
  queryDefinitionId = "string",
  logGroupNames = list(
    "string"
  ),
  queryString = "string"
)
}
}

\keyword{internal}
