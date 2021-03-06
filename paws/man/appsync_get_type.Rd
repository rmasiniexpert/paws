% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appsync_operations.R
\name{appsync_get_type}
\alias{appsync_get_type}
\title{Retrieves a Type object}
\usage{
appsync_get_type(apiId, typeName, format)
}
\arguments{
\item{apiId}{[required] The API ID.}

\item{typeName}{[required] The type name.}

\item{format}{[required] The type format: SDL or JSON.}
}
\description{
Retrieves a \code{Type} object.
}
\section{Request syntax}{
\preformatted{svc$get_type(
  apiId = "string",
  typeName = "string",
  format = "SDL"|"JSON"
)
}
}

\keyword{internal}
