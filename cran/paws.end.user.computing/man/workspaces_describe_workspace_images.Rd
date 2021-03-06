% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workspaces_operations.R
\name{workspaces_describe_workspace_images}
\alias{workspaces_describe_workspace_images}
\title{Retrieves a list that describes one or more specified images, if the
image identifiers are provided}
\usage{
workspaces_describe_workspace_images(ImageIds, NextToken, MaxResults)
}
\arguments{
\item{ImageIds}{The identifier of the image.}

\item{NextToken}{If you received a \code{NextToken} from a previous call that was paginated,
provide this token to receive the next set of results.}

\item{MaxResults}{The maximum number of items to return.}
}
\description{
Retrieves a list that describes one or more specified images, if the
image identifiers are provided. Otherwise, all images in the account are
described.
}
\section{Request syntax}{
\preformatted{svc$describe_workspace_images(
  ImageIds = list(
    "string"
  ),
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
