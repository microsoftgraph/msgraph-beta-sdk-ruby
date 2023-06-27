module MicrosoftGraphBeta
    module Models
        ## 
        # VPN Authentication Method.
        VpnAuthenticationMethod = {
            Certificate: :Certificate,
            UsernameAndPassword: :UsernameAndPassword,
            SharedSecret: :SharedSecret,
            DerivedCredential: :DerivedCredential,
            AzureAD: :AzureAD,
        }
    end
end
