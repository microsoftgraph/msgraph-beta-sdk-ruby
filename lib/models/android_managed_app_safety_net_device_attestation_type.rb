module MicrosoftGraphBeta::Models
    ## 
    # An admin enforced Android SafetyNet Device Attestation requirement on a managed app.
    AndroidManagedAppSafetyNetDeviceAttestationType = {
        None: :None,
        BasicIntegrity: :BasicIntegrity,
        BasicIntegrityAndDeviceCertification: :BasicIntegrityAndDeviceCertification,
    }
end
