module MicrosoftGraphBeta::Models
    ## 
    # Indicates the type of execution status of the device management script.
    RunState = {
        Unknown: :Unknown,
        Success: :Success,
        Fail: :Fail,
        ScriptError: :ScriptError,
        Pending: :Pending,
        NotApplicable: :NotApplicable,
    }
end
