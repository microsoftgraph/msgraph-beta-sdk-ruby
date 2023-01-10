module MicrosoftGraphBeta::Models
    ## 
    # Windows 10 VPN connection types.
    Windows10VpnAuthenticationMethod = {
        Certificate: :Certificate,
        UsernameAndPassword: :UsernameAndPassword,
        CustomEapXml: :CustomEapXml,
        DerivedCredential: :DerivedCredential,
    }
end
