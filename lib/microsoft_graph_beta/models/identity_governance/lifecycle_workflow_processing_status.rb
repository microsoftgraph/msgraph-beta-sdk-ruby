module MicrosoftGraphBeta::Models::IdentityGovernance
    ## 
    # Provides operations to manage the collection of accessReview entities.
    LifecycleWorkflowProcessingStatus = {
        Queued: :Queued,
        InProgress: :InProgress,
        Completed: :Completed,
        CompletedWithErrors: :CompletedWithErrors,
        Canceled: :Canceled,
        Failed: :Failed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
