module MicrosoftGraphBeta
    module Models
        ConditionalAccessAudienceReason = {
            None: :None,
            ResourcelessRequest: :ResourcelessRequest,
            ConfidentialClientIdToken: :ConfidentialClientIdToken,
            ConfidentialClientNonIdToken: :ConfidentialClientNonIdToken,
            ResourceMapping: :ResourceMapping,
            ResourceMappingDefault: :ResourceMappingDefault,
            ScopeMapping: :ScopeMapping,
            ScopeMappingDefault: :ScopeMappingDefault,
            DelegatedScope: :DelegatedScope,
            FirstPartyResourceDefault: :FirstPartyResourceDefault,
            ThirdPartyResourceDefault: :ThirdPartyResourceDefault,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
