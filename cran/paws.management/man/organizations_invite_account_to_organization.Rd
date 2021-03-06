% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/organizations_operations.R
\name{organizations_invite_account_to_organization}
\alias{organizations_invite_account_to_organization}
\title{Sends an invitation to another account to join your organization as a
member account}
\usage{
organizations_invite_account_to_organization(Target, Notes)
}
\arguments{
\item{Target}{[required] The identifier (ID) of the AWS account that you want to invite to join
your organization. This is a JSON object that contains the following
elements:

\verb{\\\{ "Type": "ACCOUNT", "Id": "&lt;<i> <b>account id number</b> </i>&gt;" \\\}}

If you use the AWS CLI, you can submit this as a single string, similar
to the following example:

\verb{--target Id=123456789012,Type=ACCOUNT}

If you specify \code{"Type": "ACCOUNT"}, you must provide the AWS account ID
number as the \code{Id}. If you specify \code{"Type": "EMAIL"}, you must specify
the email address that is associated with the account.

\verb{--target Id=diego@example.com,Type=EMAIL}}

\item{Notes}{Additional information that you want to include in the generated email
to the recipient account owner.}
}
\description{
Sends an invitation to another account to join your organization as a
member account. AWS Organizations sends email on your behalf to the
email address that is associated with the other account\'s owner. The
invitation is implemented as a Handshake whose details are in the
response.
}
\details{
\itemize{
\item You can invite AWS accounts only from the same seller as the master
account. For example, if your organization\'s master account was
created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS seller
in India, you can invite only other AISPL accounts to your
organization. You can\'t combine accounts from AISPL and AWS or from
any other AWS seller. For more information, see \href{http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html}{Consolidated Billing in India}.
\item If you receive an exception that indicates that you exceeded your
account limits for the organization or that the operation failed
because your organization is still initializing, wait one hour and
then try again. If the error persists after an hour, contact \href{https://console.aws.amazon.com/support/home#/}{AWS Support}.
}

This operation can be called only from the organization\'s master
account.
}
\section{Request syntax}{
\preformatted{svc$invite_account_to_organization(
  Target = list(
    Id = "string",
    Type = "ACCOUNT"|"ORGANIZATION"|"EMAIL"
  ),
  Notes = "string"
)
}
}

\examples{
\dontrun{
# The following example shows the admin of the master account owned by
# bill@example.com inviting the account owned by juan@example.com to join
# an organization.
svc$invite_account_to_organization(
  Notes = "This is a request for Juan's account to join Bill's organization",
  Target = list(
    Id = "juan@example.com",
    Type = "EMAIL"
  )
)
}

}
\keyword{internal}
