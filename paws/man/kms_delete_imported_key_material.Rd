% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kms_operations.R
\name{kms_delete_imported_key_material}
\alias{kms_delete_imported_key_material}
\title{Deletes key material that you previously imported}
\usage{
kms_delete_imported_key_material(KeyId)
}
\arguments{
\item{KeyId}{[required] Identifies the CMK from which you are deleting imported key material.
The \code{Origin} of the CMK must be \code{EXTERNAL}.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:
\itemize{
\item Key ID: \verb{1234abcd-12ab-34cd-56ef-1234567890ab}
\item Key ARN:
\verb{arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab}
}

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.}
}
\description{
Deletes key material that you previously imported. This operation makes
the specified customer master key (CMK) unusable. For more information
about importing key material into AWS KMS, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html}{Importing Key Material}
in the \emph{AWS Key Management Service Developer Guide}. You cannot perform
this operation on a CMK in a different AWS account.
}
\details{
When the specified CMK is in the \code{PendingDeletion} state, this operation
does not change the CMK\'s state. Otherwise, it changes the CMK\'s state
to \code{PendingImport}.

After you delete key material, you can use ImportKeyMaterial to reimport
the same key material into the CMK.

The CMK that you use for this operation must be in a compatible key
state. For details, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html}{How Key State Affects Use of a Customer Master Key}
in the \emph{AWS Key Management Service Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$delete_imported_key_material(
  KeyId = "string"
)
}
}

\examples{
\dontrun{
# The following example deletes the imported key material from the
# specified customer master key (CMK).
svc$delete_imported_key_material(
  KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
)
}

}
\keyword{internal}
