% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_delete_dhcp_options}
\alias{ec2_delete_dhcp_options}
\title{Deletes the specified set of DHCP options}
\usage{
ec2_delete_dhcp_options(DhcpOptionsId, DryRun)
}
\arguments{
\item{DhcpOptionsId}{[required] The ID of the DHCP options set.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Deletes the specified set of DHCP options. You must disassociate the set
of DHCP options before you can delete it. You can disassociate the set
of DHCP options by associating either a new set of options or the
default set of options with the VPC.
}
\section{Request syntax}{
\preformatted{svc$delete_dhcp_options(
  DhcpOptionsId = "string",
  DryRun = TRUE|FALSE
)
}
}

\examples{
\dontrun{
# This example deletes the specified DHCP options set.
svc$delete_dhcp_options(
  DhcpOptionsId = "dopt-d9070ebb"
)
}

}
\keyword{internal}
