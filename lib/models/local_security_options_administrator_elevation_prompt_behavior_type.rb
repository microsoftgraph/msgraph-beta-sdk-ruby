module MicrosoftGraphBeta::Models
    ## 
    # Possible values for LocalSecurityOptionsAdministratorElevationPromptBehavior
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
