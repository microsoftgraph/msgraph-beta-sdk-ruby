module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
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
