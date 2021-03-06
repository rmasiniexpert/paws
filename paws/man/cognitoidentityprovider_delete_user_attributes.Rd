% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_delete_user_attributes}
\alias{cognitoidentityprovider_delete_user_attributes}
\title{Deletes the attributes for a user}
\usage{
cognitoidentityprovider_delete_user_attributes(UserAttributeNames,
  AccessToken)
}
\arguments{
\item{UserAttributeNames}{[required] An array of strings representing the user attribute names you wish to
delete.

For custom attributes, you must prepend the \verb{custom:} prefix to the
attribute name.}

\item{AccessToken}{[required] The access token used in the request to delete user attributes.}
}
\description{
Deletes the attributes for a user.
}
\section{Request syntax}{
\preformatted{svc$delete_user_attributes(
  UserAttributeNames = list(
    "string"
  ),
  AccessToken = "string"
)
}
}

\keyword{internal}
