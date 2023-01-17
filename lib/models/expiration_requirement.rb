module MicrosoftGraphBeta::Models
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
