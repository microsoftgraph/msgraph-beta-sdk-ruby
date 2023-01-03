module MicrosoftGraphBeta::Models::Security
    ## 
    # Provides operations to manage the collection of accessReview entities.
    CaseStatus = {
        Unknown: :Unknown,
        Active: :Active,
        PendingDelete: :PendingDelete,
        Closing: :Closing,
        Closed: :Closed,
        ClosedWithError: :ClosedWithError,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
