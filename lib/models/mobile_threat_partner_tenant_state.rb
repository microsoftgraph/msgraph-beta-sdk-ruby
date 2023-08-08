module MicrosoftGraphBeta
    module Models
        ## 
        # Partner state of this tenant.
        MobileThreatPartnerTenantState = {
            Unavailable: :Unavailable,
            Available: :Available,
            Enabled: :Enabled,
            Unresponsive: :Unresponsive,
            NotSetUp: :NotSetUp,
            Error: :Error,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
