module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    SimulationStatus = {
        Unknown: :Unknown,
        Draft: :Draft,
        Running: :Running,
        Scheduled: :Scheduled,
        Succeeded: :Succeeded,
        Failed: :Failed,
        Cancelled: :Cancelled,
        Excluded: :Excluded,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
