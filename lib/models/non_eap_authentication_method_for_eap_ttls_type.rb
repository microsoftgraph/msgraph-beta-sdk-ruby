module MicrosoftGraphBeta
    module Models
        ## 
        # Non-EAP methods for authentication.
        NonEapAuthenticationMethodForEapTtlsType = {
            UnencryptedPassword: :UnencryptedPassword,
            ChallengeHandshakeAuthenticationProtocol: :ChallengeHandshakeAuthenticationProtocol,
            MicrosoftChap: :MicrosoftChap,
            MicrosoftChapVersionTwo: :MicrosoftChapVersionTwo,
        }
    end
end
