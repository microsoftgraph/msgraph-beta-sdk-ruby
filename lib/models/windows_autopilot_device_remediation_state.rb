module MicrosoftGraphBeta
    module Models
        ## 
        # Device remediation status, indicating whether or not hardware has been changed for an Autopilot-registered device.
        WindowsAutopilotDeviceRemediationState = {
            Unknown: :Unknown,
            NoRemediationRequired: :NoRemediationRequired,
            AutomaticRemediationRequired: :AutomaticRemediationRequired,
            ManualRemediationRequired: :ManualRemediationRequired,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
