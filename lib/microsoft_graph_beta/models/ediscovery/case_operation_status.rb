module MicrosoftGraphBeta::Models::Ediscovery
    ## 
    # Provides operations to manage the compliance singleton.
    CaseOperationStatus = {
        NotStarted: :NotStarted,
        SubmissionFailed: :SubmissionFailed,
        Running: :Running,
        Succeeded: :Succeeded,
        PartiallySucceeded: :PartiallySucceeded,
        Failed: :Failed,
    }
end
