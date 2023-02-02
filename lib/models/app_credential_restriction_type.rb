module MicrosoftGraphBeta::Models
    AppCredentialRestrictionType = {
        PasswordAddition: :PasswordAddition,
        PasswordLifetime: :PasswordLifetime,
        SymmetricKeyAddition: :SymmetricKeyAddition,
        SymmetricKeyLifetime: :SymmetricKeyLifetime,
        CustomPasswordAddition: :CustomPasswordAddition,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
