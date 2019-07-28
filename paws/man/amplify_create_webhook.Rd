% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amplify_operations.R
\name{amplify_create_webhook}
\alias{amplify_create_webhook}
\title{Create a new webhook on an App}
\usage{
amplify_create_webhook(appId, branchName, description)
}
\arguments{
\item{appId}{[required] Unique Id for an Amplify App.}

\item{branchName}{[required] Name for a branch, part of an Amplify App.}

\item{description}{Description for a webhook.}
}
\description{
Create a new webhook on an App.
}
\section{Request syntax}{
\preformatted{svc$create_webhook(
  appId = "string",
  branchName = "string",
  description = "string"
)
}
}

\keyword{internal}