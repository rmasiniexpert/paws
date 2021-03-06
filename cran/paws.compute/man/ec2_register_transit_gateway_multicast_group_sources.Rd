% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_register_transit_gateway_multicast_group_sources}
\alias{ec2_register_transit_gateway_multicast_group_sources}
\title{Registers sources (network interfaces) with the specified transit
gateway multicast group}
\usage{
ec2_register_transit_gateway_multicast_group_sources(
  TransitGatewayMulticastDomainId, GroupIpAddress, NetworkInterfaceIds,
  DryRun)
}
\arguments{
\item{TransitGatewayMulticastDomainId}{The ID of the transit gateway multicast domain.}

\item{GroupIpAddress}{The IP address assigned to the transit gateway multicast group.}

\item{NetworkInterfaceIds}{The group sources\' network interface IDs to register with the transit
gateway multicast group.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Registers sources (network interfaces) with the specified transit
gateway multicast group.
}
\details{
A multicast source is a network interface attached to a supported
instance that sends multicast traffic. For information about supported
instances, see \href{https://docs.aws.amazon.com/vpc/latest/tgw/transit-gateway-limits.html#multicast-limits}{Multicast Considerations}
in \emph{Amazon VPC Transit Gateways}.

After you add the source, use
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayMulticastGroups.html}{SearchTransitGatewayMulticastGroups}
to verify that the source was added to the multicast group.
}
\section{Request syntax}{
\preformatted{svc$register_transit_gateway_multicast_group_sources(
  TransitGatewayMulticastDomainId = "string",
  GroupIpAddress = "string",
  NetworkInterfaceIds = list(
    "string"
  ),
  DryRun = TRUE|FALSE
)
}
}

\keyword{internal}
