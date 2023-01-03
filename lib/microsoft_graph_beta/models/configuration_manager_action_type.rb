module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to call the triggerConfigurationManagerAction method.
    ConfigurationManagerActionType = {
        RefreshMachinePolicy: :RefreshMachinePolicy,
        RefreshUserPolicy: :RefreshUserPolicy,
        WakeUpClient: :WakeUpClient,
        AppEvaluation: :AppEvaluation,
        QuickScan: :QuickScan,
        FullScan: :FullScan,
        WindowsDefenderUpdateSignatures: :WindowsDefenderUpdateSignatures,
    }
end
