module MicrosoftGraphBeta
    module Models
        ## 
        # Indicates the type of execution status of the device management script. This status provides insights into whether the script has been successfully executed, encountered errors, or is pending execution.
        DeviceManagementScriptRunState = {
            Unknown: :Unknown,
            Success: :Success,
            Fail: :Fail,
            ScriptError: :ScriptError,
            Pending: :Pending,
            NotApplicable: :NotApplicable,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
