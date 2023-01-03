module MicrosoftGraphBeta::Models
    ## 
    # Casts the previous resource to application.
    AppCredentialRestrictionType = {
        PasswordAddition: :PasswordAddition,
        PasswordLifetime: :PasswordLifetime,
        SymmetricKeyAddition: :SymmetricKeyAddition,
        SymmetricKeyLifetime: :SymmetricKeyLifetime,
        CustomPasswordAddition: :CustomPasswordAddition,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
