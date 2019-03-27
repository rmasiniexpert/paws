% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appmesh_operations.R
\name{appmesh_create_route}
\alias{appmesh_create_route}
\title{Creates a new route that is associated with a virtual router}
\usage{
appmesh_create_route(clientToken, meshName, routeName, spec,
  virtualRouterName)
}
\arguments{
\item{clientToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.}

\item{meshName}{[required] The name of the service mesh in which to create the route.}

\item{routeName}{[required] The name to use for the route.}

\item{spec}{[required] The route specification to apply.}

\item{virtualRouterName}{[required] The name of the virtual router in which to create the route.}
}
\description{
Creates a new route that is associated with a virtual router.
}
\details{
You can use the \code{prefix} parameter in your route specification for
path-based routing of requests. For example, if your virtual router
service name is \code{my-service.local}, and you want the route to match
requests to \code{my-service.local/metrics}, then your prefix should be
\code{/metrics}.

If your route matches a request, you can distribute traffic to one or
more target virtual nodes with relative weighting.
}
\section{Request syntax}{
\preformatted{appmesh$create_route(
  clientToken = "string",
  meshName = "string",
  routeName = "string",
  spec = list(
    httpRoute = list(
      action = list(
        weightedTargets = list(
          list(
            virtualNode = "string",
            weight = 123
          )
        )
      ),
      match = list(
        prefix = "string"
      )
    )
  ),
  virtualRouterName = "string"
)
}
}

\keyword{internal}