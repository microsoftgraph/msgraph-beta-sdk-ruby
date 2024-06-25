module MicrosoftGraphBeta
    module Models
        ## 
        # A list of possible Firmware protection type for a device. Firmware protection is a set of features that helps to ensure attackers can't get your device to start with untrusted or malicious firmware. Firmware protection type is determined by report sent from Microsoft Azure Attestation service. Only Windows 11 devices will have values "systemGuardSecureLaunch" or "firmwareAttackSurfaceReduction" or "disabled". Windows 10 devices will have value "notApplicable".
        FirmwareProtectionType = {
            NotApplicable: :NotApplicable,
            SystemGuardSecureLaunch: :SystemGuardSecureLaunch,
            FirmwareAttackSurfaceReduction: :FirmwareAttackSurfaceReduction,
            Disabled: :Disabled,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
