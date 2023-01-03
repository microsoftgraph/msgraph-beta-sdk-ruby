module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    ExpirationRequirement = {
        RememberMultifactorAuthenticationOnTrustedDevices: :RememberMultifactorAuthenticationOnTrustedDevices,
        TenantTokenLifetimePolicy: :TenantTokenLifetimePolicy,
        AudienceTokenLifetimePolicy: :AudienceTokenLifetimePolicy,
        SignInFrequencyPeriodicReauthentication: :SignInFrequencyPeriodicReauthentication,
        NgcMfa: :NgcMfa,
        SignInFrequencyEveryTime: :SignInFrequencyEveryTime,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
