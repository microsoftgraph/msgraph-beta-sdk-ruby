module MicrosoftGraphBeta
    module Models
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
end
