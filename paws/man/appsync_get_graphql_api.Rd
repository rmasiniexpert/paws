% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appsync_operations.R
\name{appsync_get_graphql_api}
\alias{appsync_get_graphql_api}
\title{Retrieves a GraphqlApi object}
\usage{
appsync_get_graphql_api(apiId)
}
\arguments{
\item{apiId}{[required] The API ID for the GraphQL API.}
}
\description{
Retrieves a \code{GraphqlApi} object.
}
\section{Request syntax}{
\preformatted{svc$get_graphql_api(
  apiId = "string"
)
}
}

\keyword{internal}
