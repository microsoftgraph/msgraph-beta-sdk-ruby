module MicrosoftGraphBeta::Models
    ## 
    # Indicates the type of execution status of the device management script.
    RemediationState = {
        Unknown: :Unknown,
        Skipped: :Skipped,
        Success: :Success,
        RemediationFailed: :RemediationFailed,
        ScriptError: :ScriptError,
    }
end
