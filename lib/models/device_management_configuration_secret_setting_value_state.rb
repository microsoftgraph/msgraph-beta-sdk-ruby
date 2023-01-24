module MicrosoftGraphBeta::Models
    ## 
    # type tracking the encryption state of a secret setting value
    DeviceManagementConfigurationSecretSettingValueState = {
        Invalid: :Invalid,
        NotEncrypted: :NotEncrypted,
        EncryptedValueToken: :EncryptedValueToken,
    }
end
