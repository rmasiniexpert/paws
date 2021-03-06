% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eks_operations.R
\name{eks_update_nodegroup_config}
\alias{eks_update_nodegroup_config}
\title{Updates an Amazon EKS managed node group configuration}
\usage{
eks_update_nodegroup_config(clusterName, nodegroupName, labels,
  scalingConfig, clientRequestToken)
}
\arguments{
\item{clusterName}{[required] The name of the Amazon EKS cluster that the managed node group resides
in.}

\item{nodegroupName}{[required] The name of the managed node group to update.}

\item{labels}{The Kubernetes labels to be applied to the nodes in the node group after
the update.}

\item{scalingConfig}{The scaling configuration details for the Auto Scaling group after the
update.}

\item{clientRequestToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.}
}
\description{
Updates an Amazon EKS managed node group configuration. Your node group
continues to function during the update. The response output includes an
update ID that you can use to track the status of your node group update
with the DescribeUpdate API operation. Currently you can update the
Kubernetes labels for a node group or the scaling configuration.
}
\section{Request syntax}{
\preformatted{svc$update_nodegroup_config(
  clusterName = "string",
  nodegroupName = "string",
  labels = list(
    addOrUpdateLabels = list(
      "string"
    ),
    removeLabels = list(
      "string"
    )
  ),
  scalingConfig = list(
    minSize = 123,
    maxSize = 123,
    desiredSize = 123
  ),
  clientRequestToken = "string"
)
}
}

\keyword{internal}
