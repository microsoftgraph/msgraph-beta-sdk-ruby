module MicrosoftGraphBeta
    module Models
        ## 
        # Enum type of possible leaf certificate statuses. These statuses indicate whether certificates are active and usable or unusable if they have been revoked or expired.
        CloudCertificationAuthorityLeafCertificateStatus = {
            Unknown: :Unknown,
            Active: :Active,
            Revoked: :Revoked,
            Expired: :Expired,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
