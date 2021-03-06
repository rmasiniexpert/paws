% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appconfig_operations.R
\name{appconfig_create_application}
\alias{appconfig_create_application}
\title{An application in AppConfig is a logical unit of code that provides
capabilities for your customers}
\usage{
appconfig_create_application(Name, Description, Tags)
}
\arguments{
\item{Name}{[required] A name for the application.}

\item{Description}{A description of the application.}

\item{Tags}{Metadata to assign to the application. Tags help organize and categorize
your AppConfig resources. Each tag consists of a key and an optional
value, both of which you define.}
}
\description{
An application in AppConfig is a logical unit of code that provides
capabilities for your customers. For example, an application can be a
microservice that runs on Amazon EC2 instances, a mobile application
installed by your users, a serverless application using Amazon API
Gateway and AWS Lambda, or any system you run on behalf of others.
}
\section{Request syntax}{
\preformatted{svc$create_application(
  Name = "string",
  Description = "string",
  Tags = list(
    "string"
  )
)
}
}

\keyword{internal}
