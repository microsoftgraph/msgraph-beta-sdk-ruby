module MicrosoftGraphBeta::Models
    ## 
    # Possible values for LocalSecurityOptionsStandardUserElevationPromptBehavior
    LocalSecurityOptionsStandardUserElevationPromptBehaviorType = {
        NotConfigured: :NotConfigured,
        AutomaticallyDenyElevationRequests: :AutomaticallyDenyElevationRequests,
        PromptForCredentialsOnTheSecureDesktop: :PromptForCredentialsOnTheSecureDesktop,
        PromptForCredentials: :PromptForCredentials,
    }
end
