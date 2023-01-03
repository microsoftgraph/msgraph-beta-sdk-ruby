module MicrosoftGraphBeta::Models::Security
    ## 
    # Provides operations to manage the collection of accessReview entities.
    CaseOperationStatus = {
        NotStarted: :NotStarted,
        SubmissionFailed: :SubmissionFailed,
        Running: :Running,
        Succeeded: :Succeeded,
        PartiallySucceeded: :PartiallySucceeded,
        Failed: :Failed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
