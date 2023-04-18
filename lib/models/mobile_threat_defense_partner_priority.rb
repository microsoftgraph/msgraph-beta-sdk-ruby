module MicrosoftGraphBeta
    module Models
        ## 
        # Determines the conflict resolution strategy, when more than one Mobile Threat Defense provider is enabled.
        MobileThreatDefensePartnerPriority = {
            DefenderOverThirdPartyPartner: :DefenderOverThirdPartyPartner,
            ThirdPartyPartnerOverDefender: :ThirdPartyPartnerOverDefender,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
