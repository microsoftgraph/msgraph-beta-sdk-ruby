module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    RuleMode = {
        Audit: :Audit,
        AuditAndNotify: :AuditAndNotify,
        Enforce: :Enforce,
        PendingDeletion: :PendingDeletion,
        Test: :Test,
    }
end
