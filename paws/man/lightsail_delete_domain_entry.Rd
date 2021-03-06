% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_delete_domain_entry}
\alias{lightsail_delete_domain_entry}
\title{Deletes a specific domain entry}
\usage{
lightsail_delete_domain_entry(domainName, domainEntry)
}
\arguments{
\item{domainName}{[required] The name of the domain entry to delete.}

\item{domainEntry}{[required] An array of key-value pairs containing information about your domain
entries.}
}
\description{
Deletes a specific domain entry.
}
\details{
The \verb{delete domain entry} operation supports tag-based access control
via resource tags applied to the resource identified by \verb{domain name}.
For more information, see the \href{https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags}{Lightsail Dev Guide}.
}
\section{Request syntax}{
\preformatted{svc$delete_domain_entry(
  domainName = "string",
  domainEntry = list(
    id = "string",
    name = "string",
    target = "string",
    isAlias = TRUE|FALSE,
    type = "string",
    options = list(
      "string"
    )
  )
)
}
}

\keyword{internal}
