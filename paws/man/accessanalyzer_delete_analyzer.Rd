% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/accessanalyzer_operations.R
\name{accessanalyzer_delete_analyzer}
\alias{accessanalyzer_delete_analyzer}
\title{Deletes the specified analyzer}
\usage{
accessanalyzer_delete_analyzer(analyzerName, clientToken)
}
\arguments{
\item{analyzerName}{[required] The name of the analyzer to delete.}

\item{clientToken}{A client token.}
}
\description{
Deletes the specified analyzer. When you delete an analyzer, Access
Analyzer is disabled for the account in the current or specific Region.
All findings that were generated by the analyzer are deleted. You cannot
undo this action.
}
\section{Request syntax}{
\preformatted{svc$delete_analyzer(
  analyzerName = "string",
  clientToken = "string"
)
}
}

\keyword{internal}
