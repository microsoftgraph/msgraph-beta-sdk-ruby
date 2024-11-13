module MicrosoftGraphBeta
    module Models
        ## 
        # Enum type of possible certification authority statuses. These statuses indicate whether a certification authority is currently able to issue certificates or temporarily paused or permanently revoked.
        CloudCertificationAuthorityStatus = {
            Unknown: :Unknown,
            Active: :Active,
            Paused: :Paused,
            Revoked: :Revoked,
            SigningPending: :SigningPending,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
