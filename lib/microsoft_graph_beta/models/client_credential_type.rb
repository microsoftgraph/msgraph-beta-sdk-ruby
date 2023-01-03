module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    ClientCredentialType = {
        None: :None,
        ClientSecret: :ClientSecret,
        ClientAssertion: :ClientAssertion,
        FederatedIdentityCredential: :FederatedIdentityCredential,
        ManagedIdentity: :ManagedIdentity,
        Certificate: :Certificate,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
