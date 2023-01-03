module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    ManagementState = {
        Managed: :Managed,
        RetirePending: :RetirePending,
        RetireFailed: :RetireFailed,
        WipePending: :WipePending,
        WipeFailed: :WipeFailed,
        Unhealthy: :Unhealthy,
        DeletePending: :DeletePending,
        RetireIssued: :RetireIssued,
        WipeIssued: :WipeIssued,
        WipeCanceled: :WipeCanceled,
        RetireCanceled: :RetireCanceled,
        Discovered: :Discovered,
    }
end
