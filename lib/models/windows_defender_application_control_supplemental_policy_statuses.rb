module MicrosoftGraphBeta::Models
    ## 
    # Enum values for the various WindowsDefenderApplicationControl supplemental policy deployment statuses.
    WindowsDefenderApplicationControlSupplementalPolicyStatuses = {
        Unknown: :Unknown,
        Success: :Success,
        TokenError: :TokenError,
        NotAuthorizedByToken: :NotAuthorizedByToken,
        PolicyNotFound: :PolicyNotFound,
    }
end
