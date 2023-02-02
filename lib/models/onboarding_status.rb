module MicrosoftGraphBeta::Models
    ## 
    # The onboarding status of the tenant.
    OnboardingStatus = {
        Unknown: :Unknown,
        Inprogress: :Inprogress,
        Onboarded: :Onboarded,
        Failed: :Failed,
        Offboarding: :Offboarding,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
