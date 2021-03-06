% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detective_service.R
\name{detective}
\alias{detective}
\title{Amazon Detective}
\usage{
detective(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
Detective uses machine learning and purpose-built visualizations to help
you analyze and investigate security issues across your Amazon Web
Services (AWS) workloads. Detective automatically extracts time-based
events such as login attempts, API calls, and network traffic from AWS
CloudTrail and Amazon Virtual Private Cloud (Amazon VPC) flow logs. It
also extracts findings detected by Amazon GuardDuty.

The Detective API primarily supports the creation and management of
behavior graphs. A behavior graph contains the extracted data from a set
of member accounts, and is created and managed by a master account.

Every behavior graph is specific to a Region. You can only use the API
to manage graphs that belong to the Region that is associated with the
currently selected endpoint.

A Detective master account can use the Detective API to do the
following:
\itemize{
\item Enable and disable Detective. Enabling Detective creates a new
behavior graph.
\item View the list of member accounts in a behavior graph.
\item Add member accounts to a behavior graph.
\item Remove member accounts from a behavior graph.
}

A member account can use the Detective API to do the following:
\itemize{
\item View the list of behavior graphs that they are invited to.
\item Accept an invitation to contribute to a behavior graph.
\item Decline an invitation to contribute to a behavior graph.
\item Remove their account from a behavior graph.
}

All API actions are logged as CloudTrail events. See \href{https://docs.aws.amazon.com/detective/latest/adminguide/logging-using-cloudtrail.html}{Logging Detective API Calls with CloudTrail}.
}
\section{Service syntax}{
\preformatted{svc <- detective(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string"
    ),
    endpoint = "string",
    region = "string"
  )
)
}
}

\section{Operations}{

\tabular{ll}{
\link[=detective_accept_invitation]{accept_invitation} \tab Accepts an invitation for the member account to contribute data to a behavior graph \cr
\link[=detective_create_graph]{create_graph} \tab Creates a new behavior graph for the calling account, and sets that account as the master account \cr
\link[=detective_create_members]{create_members} \tab Sends a request to invite the specified AWS accounts to be member accounts in the behavior graph \cr
\link[=detective_delete_graph]{delete_graph} \tab Disables the specified behavior graph and queues it to be deleted \cr
\link[=detective_delete_members]{delete_members} \tab Deletes one or more member accounts from the master account behavior graph \cr
\link[=detective_disassociate_membership]{disassociate_membership} \tab Removes the member account from the specified behavior graph \cr
\link[=detective_get_members]{get_members} \tab Returns the membership details for specified member accounts for a behavior graph \cr
\link[=detective_list_graphs]{list_graphs} \tab Returns the list of behavior graphs that the calling account is a master of \cr
\link[=detective_list_invitations]{list_invitations} \tab Retrieves the list of open and accepted behavior graph invitations for the member account \cr
\link[=detective_list_members]{list_members} \tab Retrieves the list of member accounts for a behavior graph \cr
\link[=detective_reject_invitation]{reject_invitation} \tab Rejects an invitation to contribute the account data to a behavior graph \cr
\link[=detective_start_monitoring_member]{start_monitoring_member} \tab Sends a request to enable data ingest for a member account that has a status of ACCEPTED_BUT_DISABLED
}
}

\examples{
\dontrun{
svc <- detective()
svc$accept_invitation(
  Foo = 123
)
}

}
