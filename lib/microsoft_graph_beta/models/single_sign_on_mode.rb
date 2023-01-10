module MicrosoftGraphBeta::Models
    SingleSignOnMode = {
        None: :None,
        OnPremisesKerberos: :OnPremisesKerberos,
        Saml: :Saml,
        PingHeaderBased: :PingHeaderBased,
        AadHeaderBased: :AadHeaderBased,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
