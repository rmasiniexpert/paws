% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_create_public_key}
\alias{cloudfront_create_public_key}
\title{Add a new public key to CloudFront to use, for example, for field-level
encryption}
\usage{
cloudfront_create_public_key(PublicKeyConfig)
}
\arguments{
\item{PublicKeyConfig}{[required] The request to add a public key to CloudFront.}
}
\description{
Add a new public key to CloudFront to use, for example, for field-level
encryption. You can add a maximum of 10 public keys with one AWS
account.
}
\section{Request syntax}{
\preformatted{svc$create_public_key(
  PublicKeyConfig = list(
    CallerReference = "string",
    Name = "string",
    EncodedKey = "string",
    Comment = "string"
  )
)
}
}

\keyword{internal}
