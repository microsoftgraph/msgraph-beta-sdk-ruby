module MicrosoftGraphBeta
    module Models
        ## 
        # Possible values for LocalSecurityOptionsMinimumSessionSecurity
        LocalSecurityOptionsMinimumSessionSecurity = {
            None: :None,
            RequireNtmlV2SessionSecurity: :RequireNtmlV2SessionSecurity,
            Require128BitEncryption: :Require128BitEncryption,
            NtlmV2And128BitEncryption: :NtlmV2And128BitEncryption,
        }
    end
end
