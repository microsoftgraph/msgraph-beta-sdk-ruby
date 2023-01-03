module MicrosoftGraphBeta::Models
    ## 
    # Casts the previous resource to application.
    SingleSignOnMode = {
        None: :None,
        OnPremisesKerberos: :OnPremisesKerberos,
        Saml: :Saml,
        PingHeaderBased: :PingHeaderBased,
        AadHeaderBased: :AadHeaderBased,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
