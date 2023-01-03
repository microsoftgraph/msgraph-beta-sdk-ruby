module MicrosoftGraphBeta::Models::ManagedTenants
    ## 
    # Provides operations to manage the collection of accessReview entities.
    TenantOnboardingStatus = {
        Ineligible: :Ineligible,
        InProcess: :InProcess,
        Active: :Active,
        Inactive: :Inactive,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
