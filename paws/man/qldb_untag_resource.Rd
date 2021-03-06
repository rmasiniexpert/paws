% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qldb_operations.R
\name{qldb_untag_resource}
\alias{qldb_untag_resource}
\title{Removes one or more tags from a specified Amazon QLDB resource}
\usage{
qldb_untag_resource(ResourceArn, TagKeys)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) from which you want to remove the tags.
For example:

\code{arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger}}

\item{TagKeys}{[required] The list of tag keys that you want to remove.}
}
\description{
Removes one or more tags from a specified Amazon QLDB resource. You can
specify up to 50 tag keys to remove.
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
