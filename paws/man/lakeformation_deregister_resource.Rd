% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lakeformation_operations.R
\name{lakeformation_deregister_resource}
\alias{lakeformation_deregister_resource}
\title{Deregisters the resource as managed by the Data Catalog}
\usage{
lakeformation_deregister_resource(ResourceArn)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) of the resource that you want to
deregister.}
}
\description{
Deregisters the resource as managed by the Data Catalog.
}
\details{
When you deregister a path, Lake Formation removes the path from the
inline policy attached to your service-linked role.
}
\section{Request syntax}{
\preformatted{svc$deregister_resource(
  ResourceArn = "string"
)
}
}

\keyword{internal}
