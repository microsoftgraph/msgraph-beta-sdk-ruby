module MicrosoftGraphBeta::Models
    ## 
    # Casts the previous resource to application.
    QuarantineReason = {
        EncounteredBaseEscrowThreshold: :EncounteredBaseEscrowThreshold,
        EncounteredTotalEscrowThreshold: :EncounteredTotalEscrowThreshold,
        EncounteredEscrowProportionThreshold: :EncounteredEscrowProportionThreshold,
        EncounteredQuarantineException: :EncounteredQuarantineException,
        Unknown: :Unknown,
        QuarantinedOnDemand: :QuarantinedOnDemand,
        TooManyDeletes: :TooManyDeletes,
        IngestionInterrupted: :IngestionInterrupted,
    }
end
