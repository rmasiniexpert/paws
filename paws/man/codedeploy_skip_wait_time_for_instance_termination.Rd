% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codedeploy_operations.R
\name{codedeploy_skip_wait_time_for_instance_termination}
\alias{codedeploy_skip_wait_time_for_instance_termination}
\title{In a blue/green deployment, overrides any specified wait time and starts
terminating instances immediately after the traffic routing is complete}
\usage{
codedeploy_skip_wait_time_for_instance_termination(deploymentId)
}
\arguments{
\item{deploymentId}{The unique ID of a blue/green deployment for which you want to skip the
instance termination wait time.}
}
\description{
In a blue/green deployment, overrides any specified wait time and starts
terminating instances immediately after the traffic routing is complete.
}
\section{Request syntax}{
\preformatted{svc$skip_wait_time_for_instance_termination(
  deploymentId = "string"
)
}
}

\keyword{internal}
