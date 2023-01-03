module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    EducationSynchronizationStatus = {
        Paused: :Paused,
        InProgress: :InProgress,
        Success: :Success,
        Error: :Error,
        ValidationError: :ValidationError,
        Quarantined: :Quarantined,
        UnknownFutureValue: :UnknownFutureValue,
        Extracting: :Extracting,
        Validating: :Validating,
    }
end
