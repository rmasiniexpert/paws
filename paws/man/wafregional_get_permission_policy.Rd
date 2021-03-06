% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wafregional_operations.R
\name{wafregional_get_permission_policy}
\alias{wafregional_get_permission_policy}
\title{This is AWS WAF CLASSIC documentation}
\usage{
wafregional_get_permission_policy(ResourceArn)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) of the RuleGroup for which you want to
get the policy.}
}
\description{
This is \strong{AWS WAF Classic} documentation. For more information, see
\href{https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html}{AWS WAF Classic}
in the developer guide.
}
\details{
\strong{For the latest version of AWS WAF}, use the AWS WAFV2 API and see the
\href{https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html}{AWS WAF Developer Guide}.
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

Returns the IAM policy attached to the RuleGroup.
}
\section{Request syntax}{
\preformatted{svc$get_permission_policy(
  ResourceArn = "string"
)
}
}

\keyword{internal}
