module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    RiskState = {
        None: :None,
        ConfirmedSafe: :ConfirmedSafe,
        Remediated: :Remediated,
        Dismissed: :Dismissed,
        AtRisk: :AtRisk,
        ConfirmedCompromised: :ConfirmedCompromised,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
