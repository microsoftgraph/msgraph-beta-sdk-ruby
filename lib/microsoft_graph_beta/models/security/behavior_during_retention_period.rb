module MicrosoftGraphBeta::Models::Security
    ## 
    # Provides operations to manage the collection of accessReview entities.
    BehaviorDuringRetentionPeriod = {
        DoNotRetain: :DoNotRetain,
        Retain: :Retain,
        RetainAsRecord: :RetainAsRecord,
        RetainAsRegulatoryRecord: :RetainAsRegulatoryRecord,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
