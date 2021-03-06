% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/worklink_operations.R
\name{worklink_untag_resource}
\alias{worklink_untag_resource}
\title{Removes one or more tags from the specified resource}
\usage{
worklink_untag_resource(ResourceArn, TagKeys)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) of the fleet.}

\item{TagKeys}{[required] The list of tag keys to remove from the resource.}
}
\description{
Removes one or more tags from the specified resource.
}
\section{Request syntax}{
\preformatted{svc$untag_resource(
  ResourceArn = "string",
  TagKeys = list(
    "string"
  )
)
}
}

\keyword{internal}
