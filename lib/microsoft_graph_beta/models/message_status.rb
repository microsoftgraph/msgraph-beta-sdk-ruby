module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    MessageStatus = {
        GettingStatus: :GettingStatus,
        Pending: :Pending,
        Failed: :Failed,
        Delivered: :Delivered,
        Expanded: :Expanded,
        Quarantined: :Quarantined,
        FilteredAsSpam: :FilteredAsSpam,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
