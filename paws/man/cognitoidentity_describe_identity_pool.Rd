% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentity_operations.R
\name{cognitoidentity_describe_identity_pool}
\alias{cognitoidentity_describe_identity_pool}
\title{Gets details about a particular identity pool, including the pool name,
ID description, creation date, and current number of users}
\usage{
cognitoidentity_describe_identity_pool(IdentityPoolId)
}
\arguments{
\item{IdentityPoolId}{[required] An identity pool ID in the format REGION:GUID.}
}
\description{
Gets details about a particular identity pool, including the pool name,
ID description, creation date, and current number of users.
}
\details{
You must use AWS Developer credentials to call this API.
}
\section{Request syntax}{
\preformatted{svc$describe_identity_pool(
  IdentityPoolId = "string"
)
}
}

\keyword{internal}
