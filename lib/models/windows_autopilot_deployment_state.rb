module MicrosoftGraphBeta::Models
    ## 
    # Deployment states for Autopilot devices
    WindowsAutopilotDeploymentState = {
        Unknown: :Unknown,
        Success: :Success,
        InProgress: :InProgress,
        Failure: :Failure,
        SuccessWithTimeout: :SuccessWithTimeout,
        NotAttempted: :NotAttempted,
        Disabled: :Disabled,
        SuccessOnRetry: :SuccessOnRetry,
    }
end
