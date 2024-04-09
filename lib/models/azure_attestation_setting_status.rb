module MicrosoftGraphBeta
    module Models
        ## 
        # A list of possible Azure Attestation states for a device. Azure Attestation setting status is determined by report sent from Microsoft Azure Attestation service. Only Windows 11 devices will have values "enabled" or "disabled". Windows 10 devices will have value "notApplicable".
        AzureAttestationSettingStatus = {
            NotApplicable: :NotApplicable,
            Enabled: :Enabled,
            Disabled: :Disabled,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
