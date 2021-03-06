% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_create_template_alias}
\alias{quicksight_create_template_alias}
\title{Creates a template alias for a template}
\usage{
quicksight_create_template_alias(AwsAccountId, TemplateId, AliasName,
  TemplateVersionNumber)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the AWS account that contains the template that you creating
an alias for.}

\item{TemplateId}{[required] An ID for the template.}

\item{AliasName}{[required] The name that you want to give to the template alias that you\'re
creating. Don\'t start the alias name with the \code{$} character. Alias
names that start with \code{$} are reserved by QuickSight.}

\item{TemplateVersionNumber}{[required] The version number of the template.}
}
\description{
Creates a template alias for a template.
}
\section{Request syntax}{
\preformatted{svc$create_template_alias(
  AwsAccountId = "string",
  TemplateId = "string",
  AliasName = "string",
  TemplateVersionNumber = 123
)
}
}

\keyword{internal}
