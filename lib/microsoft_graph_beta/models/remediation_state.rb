module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    RemediationState = {
        Unknown: :Unknown,
        Skipped: :Skipped,
        Success: :Success,
        RemediationFailed: :RemediationFailed,
        ScriptError: :ScriptError,
    }
end
