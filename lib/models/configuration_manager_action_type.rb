module MicrosoftGraphBeta
    module Models
        ## 
        # Action type on Configuration Manager client
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
end
