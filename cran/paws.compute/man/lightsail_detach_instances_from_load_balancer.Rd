% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_detach_instances_from_load_balancer}
\alias{lightsail_detach_instances_from_load_balancer}
\title{Detaches the specified instances from a Lightsail load balancer}
\usage{
lightsail_detach_instances_from_load_balancer(loadBalancerName,
  instanceNames)
}
\arguments{
\item{loadBalancerName}{[required] The name of the Lightsail load balancer.}

\item{instanceNames}{[required] An array of strings containing the names of the instances you want to
detach from the load balancer.}
}
\description{
Detaches the specified instances from a Lightsail load balancer.
}
\details{
This operation waits until the instances are no longer needed before
they are detached from the load balancer.

The \verb{detach instances from load balancer} operation supports tag-based
access control via resource tags applied to the resource identified by
\verb{load balancer name}. For more information, see the \href{https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags}{Lightsail Dev Guide}.
}
\section{Request syntax}{
\preformatted{svc$detach_instances_from_load_balancer(
  loadBalancerName = "string",
  instanceNames = list(
    "string"
  )
)
}
}

\keyword{internal}
