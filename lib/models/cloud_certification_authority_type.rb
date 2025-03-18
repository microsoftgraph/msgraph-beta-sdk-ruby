module MicrosoftGraphBeta
    module Models
        ## 
        # Enum type of possible certificate authority types. This feature supports a two-tier certification authority model with a root certification authority and one or more child issuing (intermediate) certification authorities.
        CloudCertificationAuthorityType = {
            Unknown: :Unknown,
            RootCertificationAuthority: :RootCertificationAuthority,
            IssuingCertificationAuthority: :IssuingCertificationAuthority,
            IssuingCertificationAuthorityWithExternalRoot: :IssuingCertificationAuthorityWithExternalRoot,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
