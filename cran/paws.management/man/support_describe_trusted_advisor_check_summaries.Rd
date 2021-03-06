% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/support_operations.R
\name{support_describe_trusted_advisor_check_summaries}
\alias{support_describe_trusted_advisor_check_summaries}
\title{Returns the results for the AWS Trusted Advisor check summaries for the
check IDs that you specified}
\usage{
support_describe_trusted_advisor_check_summaries(checkIds)
}
\arguments{
\item{checkIds}{[required] The IDs of the Trusted Advisor checks.}
}
\description{
Returns the results for the AWS Trusted Advisor check summaries for the
check IDs that you specified. You can get the check IDs by calling the
DescribeTrustedAdvisorChecks operation.
}
\details{
The response contains an array of TrustedAdvisorCheckSummary objects.
\itemize{
\item You must have a Business or Enterprise support plan to use the AWS
Support API.
\item If you call the AWS Support API from an account that does not have a
Business or Enterprise support plan, the
\code{SubscriptionRequiredException} error message appears. For
information about changing your support plan, see \href{http://aws.amazon.com/premiumsupport/}{AWS Support}.
}
}
\section{Request syntax}{
\preformatted{svc$describe_trusted_advisor_check_summaries(
  checkIds = list(
    "string"
  )
)
}
}

\keyword{internal}
