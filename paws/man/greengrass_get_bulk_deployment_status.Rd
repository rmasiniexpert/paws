% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrass_operations.R
\name{greengrass_get_bulk_deployment_status}
\alias{greengrass_get_bulk_deployment_status}
\title{Returns the status of a bulk deployment}
\usage{
greengrass_get_bulk_deployment_status(BulkDeploymentId)
}
\arguments{
\item{BulkDeploymentId}{[required] The ID of the bulk deployment.}
}
\description{
Returns the status of a bulk deployment.
}
\section{Request syntax}{
\preformatted{svc$get_bulk_deployment_status(
  BulkDeploymentId = "string"
)
}
}

\keyword{internal}
