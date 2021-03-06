% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3control_operations.R
\name{s3control_create_job}
\alias{s3control_create_job}
\title{You can use Amazon S3 Batch Operations to perform large-scale Batch
Operations on Amazon S3 objects}
\usage{
s3control_create_job(AccountId, ConfirmationRequired, Operation, Report,
  ClientRequestToken, Manifest, Description, Priority, RoleArn, Tags)
}
\arguments{
\item{AccountId}{[required]}

\item{ConfirmationRequired}{Indicates whether confirmation is required before Amazon S3 runs the
job. Confirmation is only required for jobs created through the Amazon
S3 console.}

\item{Operation}{[required] The operation that you want this job to perform on each object listed in
the manifest. For more information about the available operations, see
\href{https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html}{Available Operations}
in the \emph{Amazon Simple Storage Service Developer Guide}.}

\item{Report}{[required] Configuration parameters for the optional job-completion report.}

\item{ClientRequestToken}{[required] An idempotency token to ensure that you don\'t accidentally submit the
same request twice. You can use any string up to the maximum length.}

\item{Manifest}{[required] Configuration parameters for the manifest.}

\item{Description}{A description for this job. You can use any string within the permitted
length. Descriptions don\'t need to be unique and can be used for
multiple jobs.}

\item{Priority}{[required] The numerical priority for this job. Higher numbers indicate higher
priority.}

\item{RoleArn}{[required] The Amazon Resource Name (ARN) for the AWS Identity and Access
Management (IAM) role that Batch Operations will use to execute this
job\'s operation on each object in the manifest.}

\item{Tags}{A set of tags to associate with the Amazon S3 Batch Operations job. This
is an optional parameter.}
}
\description{
You can use Amazon S3 Batch Operations to perform large-scale Batch
Operations on Amazon S3 objects. Amazon S3 Batch Operations can execute
a single operation or action on lists of Amazon S3 objects that you
specify. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html}{Amazon S3 Batch Operations}
in the Amazon Simple Storage Service Developer Guide.
}
\details{
Related actions include:
\itemize{
\item DescribeJob
\item ListJobs
\item UpdateJobPriority
\item UpdateJobStatus
}
}
\section{Request syntax}{
\preformatted{svc$create_job(
  AccountId = "string",
  ConfirmationRequired = TRUE|FALSE,
  Operation = list(
    LambdaInvoke = list(
      FunctionArn = "string"
    ),
    S3PutObjectCopy = list(
      TargetResource = "string",
      CannedAccessControlList = "private"|"public-read"|"public-read-write"|"aws-exec-read"|"authenticated-read"|"bucket-owner-read"|"bucket-owner-full-control",
      AccessControlGrants = list(
        list(
          Grantee = list(
            TypeIdentifier = "id"|"emailAddress"|"uri",
            Identifier = "string",
            DisplayName = "string"
          ),
          Permission = "FULL_CONTROL"|"READ"|"WRITE"|"READ_ACP"|"WRITE_ACP"
        )
      ),
      MetadataDirective = "COPY"|"REPLACE",
      ModifiedSinceConstraint = as.POSIXct(
        "2015-01-01"
      ),
      NewObjectMetadata = list(
        CacheControl = "string",
        ContentDisposition = "string",
        ContentEncoding = "string",
        ContentLanguage = "string",
        UserMetadata = list(
          "string"
        ),
        ContentLength = 123,
        ContentMD5 = "string",
        ContentType = "string",
        HttpExpiresDate = as.POSIXct(
          "2015-01-01"
        ),
        RequesterCharged = TRUE|FALSE,
        SSEAlgorithm = "AES256"|"KMS"
      ),
      NewObjectTagging = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      RedirectLocation = "string",
      RequesterPays = TRUE|FALSE,
      StorageClass = "STANDARD"|"STANDARD_IA"|"ONEZONE_IA"|"GLACIER"|"INTELLIGENT_TIERING"|"DEEP_ARCHIVE",
      UnModifiedSinceConstraint = as.POSIXct(
        "2015-01-01"
      ),
      SSEAwsKmsKeyId = "string",
      TargetKeyPrefix = "string",
      ObjectLockLegalHoldStatus = "OFF"|"ON",
      ObjectLockMode = "COMPLIANCE"|"GOVERNANCE",
      ObjectLockRetainUntilDate = as.POSIXct(
        "2015-01-01"
      )
    ),
    S3PutObjectAcl = list(
      AccessControlPolicy = list(
        AccessControlList = list(
          Owner = list(
            ID = "string",
            DisplayName = "string"
          ),
          Grants = list(
            list(
              Grantee = list(
                TypeIdentifier = "id"|"emailAddress"|"uri",
                Identifier = "string",
                DisplayName = "string"
              ),
              Permission = "FULL_CONTROL"|"READ"|"WRITE"|"READ_ACP"|"WRITE_ACP"
            )
          )
        ),
        CannedAccessControlList = "private"|"public-read"|"public-read-write"|"aws-exec-read"|"authenticated-read"|"bucket-owner-read"|"bucket-owner-full-control"
      )
    ),
    S3PutObjectTagging = list(
      TagSet = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    ),
    S3InitiateRestoreObject = list(
      ExpirationInDays = 123,
      GlacierJobTier = "BULK"|"STANDARD"
    ),
    S3PutObjectLegalHold = list(
      LegalHold = list(
        Status = "OFF"|"ON"
      )
    ),
    S3PutObjectRetention = list(
      BypassGovernanceRetention = TRUE|FALSE,
      Retention = list(
        RetainUntilDate = as.POSIXct(
          "2015-01-01"
        ),
        Mode = "COMPLIANCE"|"GOVERNANCE"
      )
    )
  ),
  Report = list(
    Bucket = "string",
    Format = "Report_CSV_20180820",
    Enabled = TRUE|FALSE,
    Prefix = "string",
    ReportScope = "AllTasks"|"FailedTasksOnly"
  ),
  ClientRequestToken = "string",
  Manifest = list(
    Spec = list(
      Format = "S3BatchOperations_CSV_20180820"|"S3InventoryReport_CSV_20161130",
      Fields = list(
        "Ignore"|"Bucket"|"Key"|"VersionId"
      )
    ),
    Location = list(
      ObjectArn = "string",
      ObjectVersionId = "string",
      ETag = "string"
    )
  ),
  Description = "string",
  Priority = 123,
  RoleArn = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
