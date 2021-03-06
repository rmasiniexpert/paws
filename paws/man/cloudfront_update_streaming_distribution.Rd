% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_update_streaming_distribution}
\alias{cloudfront_update_streaming_distribution}
\title{Update a streaming distribution}
\usage{
cloudfront_update_streaming_distribution(StreamingDistributionConfig,
  Id, IfMatch)
}
\arguments{
\item{StreamingDistributionConfig}{[required] The streaming distribution\'s configuration information.}

\item{Id}{[required] The streaming distribution\'s id.}

\item{IfMatch}{The value of the \code{ETag} header that you received when retrieving the
streaming distribution\'s configuration. For example: \code{E2QWRUHAPOMQZL}.}
}
\description{
Update a streaming distribution.
}
\section{Request syntax}{
\preformatted{svc$update_streaming_distribution(
  StreamingDistributionConfig = list(
    CallerReference = "string",
    S3Origin = list(
      DomainName = "string",
      OriginAccessIdentity = "string"
    ),
    Aliases = list(
      Quantity = 123,
      Items = list(
        "string"
      )
    ),
    Comment = "string",
    Logging = list(
      Enabled = TRUE|FALSE,
      Bucket = "string",
      Prefix = "string"
    ),
    TrustedSigners = list(
      Enabled = TRUE|FALSE,
      Quantity = 123,
      Items = list(
        "string"
      )
    ),
    PriceClass = "PriceClass_100"|"PriceClass_200"|"PriceClass_All",
    Enabled = TRUE|FALSE
  ),
  Id = "string",
  IfMatch = "string"
)
}
}

\keyword{internal}
