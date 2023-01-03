module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    LocalSecurityOptionsAdministratorElevationPromptBehaviorType = {
        NotConfigured: :NotConfigured,
        ElevateWithoutPrompting: :ElevateWithoutPrompting,
        PromptForCredentialsOnTheSecureDesktop: :PromptForCredentialsOnTheSecureDesktop,
        PromptForConsentOnTheSecureDesktop: :PromptForConsentOnTheSecureDesktop,
        PromptForCredentials: :PromptForCredentials,
        PromptForConsent: :PromptForConsent,
        PromptForConsentForNonWindowsBinaries: :PromptForConsentForNonWindowsBinaries,
    }
end
