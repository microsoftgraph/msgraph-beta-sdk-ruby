module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    ComanagementEligibleType = {
        Comanaged: :Comanaged,
        Eligible: :Eligible,
        EligibleButNotAzureAdJoined: :EligibleButNotAzureAdJoined,
        NeedsOsUpdate: :NeedsOsUpdate,
        Ineligible: :Ineligible,
        ScheduledForEnrollment: :ScheduledForEnrollment,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
