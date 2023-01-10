module MicrosoftGraphBeta::Models
    DefaultMfaMethodType = {
        None: :None,
        MobilePhone: :MobilePhone,
        AlternateMobilePhone: :AlternateMobilePhone,
        OfficePhone: :OfficePhone,
        MicrosoftAuthenticatorPush: :MicrosoftAuthenticatorPush,
        SoftwareOneTimePasscode: :SoftwareOneTimePasscode,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
