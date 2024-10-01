module MicrosoftGraphBeta
    module Models
        ## 
        # A list of possible System Management Mode levels for a device. System Management Mode levels is determined by report sent from Microsoft Azure Attestation service. Only specific hardwares support System Management Mode. Windows 11 devices will have values "notApplicable", "level1", "level2" or "level3". Windows 10 devices will have value "notApplicable".
        SystemManagementModeLevel = {
            NotApplicable: :NotApplicable,
            Level1: :Level1,
            Level2: :Level2,
            Level3: :Level3,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
