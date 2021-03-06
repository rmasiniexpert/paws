% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_describe_user_pool}
\alias{cognitoidentityprovider_describe_user_pool}
\title{Returns the configuration information and metadata of the specified user
pool}
\usage{
cognitoidentityprovider_describe_user_pool(UserPoolId)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID for the user pool you want to describe.}
}
\description{
Returns the configuration information and metadata of the specified user
pool.
}
\section{Request syntax}{
\preformatted{svc$describe_user_pool(
  UserPoolId = "string"
)
}
}

\keyword{internal}
