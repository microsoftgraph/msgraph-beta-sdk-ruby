module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    CertificateIssuanceStates = {
        Unknown: :Unknown,
        ChallengeIssued: :ChallengeIssued,
        ChallengeIssueFailed: :ChallengeIssueFailed,
        RequestCreationFailed: :RequestCreationFailed,
        RequestSubmitFailed: :RequestSubmitFailed,
        ChallengeValidationSucceeded: :ChallengeValidationSucceeded,
        ChallengeValidationFailed: :ChallengeValidationFailed,
        IssueFailed: :IssueFailed,
        IssuePending: :IssuePending,
        Issued: :Issued,
        ResponseProcessingFailed: :ResponseProcessingFailed,
        ResponsePending: :ResponsePending,
        EnrollmentSucceeded: :EnrollmentSucceeded,
        EnrollmentNotNeeded: :EnrollmentNotNeeded,
        Revoked: :Revoked,
        RemovedFromCollection: :RemovedFromCollection,
        RenewVerified: :RenewVerified,
        InstallFailed: :InstallFailed,
        Installed: :Installed,
        DeleteFailed: :DeleteFailed,
        Deleted: :Deleted,
        RenewalRequested: :RenewalRequested,
        Requested: :Requested,
    }
end
