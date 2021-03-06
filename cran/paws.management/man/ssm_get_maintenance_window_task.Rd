% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_get_maintenance_window_task}
\alias{ssm_get_maintenance_window_task}
\title{Lists the tasks in a maintenance window}
\usage{
ssm_get_maintenance_window_task(WindowId, WindowTaskId)
}
\arguments{
\item{WindowId}{[required] The maintenance window ID that includes the task to retrieve.}

\item{WindowTaskId}{[required] The maintenance window task ID to retrieve.}
}
\description{
Lists the tasks in a maintenance window.
}
\section{Request syntax}{
\preformatted{svc$get_maintenance_window_task(
  WindowId = "string",
  WindowTaskId = "string"
)
}
}

\keyword{internal}
