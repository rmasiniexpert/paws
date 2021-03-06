% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inspector_operations.R
\name{inspector_list_assessment_targets}
\alias{inspector_list_assessment_targets}
\title{Lists the ARNs of the assessment targets within this AWS account}
\usage{
inspector_list_assessment_targets(filter, nextToken, maxResults)
}
\arguments{
\item{filter}{You can use this parameter to specify a subset of data to be included in
the action\'s response.

For a record to match a filter, all specified filter attributes must
match. When multiple values are specified for a filter attribute, any of
the values can match.}

\item{nextToken}{You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the
\strong{ListAssessmentTargets} action. Subsequent calls to the action fill
\strong{nextToken} in the request with the value of \strong{NextToken} from the
previous response to continue listing data.}

\item{maxResults}{You can use this parameter to indicate the maximum number of items you
want in the response. The default value is 10. The maximum value is 500.}
}
\description{
Lists the ARNs of the assessment targets within this AWS account. For
more information about assessment targets, see \href{https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html}{Amazon Inspector Assessment Targets}.
}
\section{Request syntax}{
\preformatted{svc$list_assessment_targets(
  filter = list(
    assessmentTargetNamePattern = "string"
  ),
  nextToken = "string",
  maxResults = 123
)
}
}

\examples{
\dontrun{
# Lists the ARNs of the assessment targets within this AWS account.
svc$list_assessment_targets(
  maxResults = 123L
)
}

}
\keyword{internal}
