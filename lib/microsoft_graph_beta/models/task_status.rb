module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    TaskStatus = {
        NotStarted: :NotStarted,
        InProgress: :InProgress,
        Completed: :Completed,
        WaitingOnOthers: :WaitingOnOthers,
        Deferred: :Deferred,
    }
end
