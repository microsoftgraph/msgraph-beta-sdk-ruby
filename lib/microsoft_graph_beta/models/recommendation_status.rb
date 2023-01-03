module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    RecommendationStatus = {
        Active: :Active,
        CompletedBySystem: :CompletedBySystem,
        CompletedByUser: :CompletedByUser,
        Dismissed: :Dismissed,
        Postponed: :Postponed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
