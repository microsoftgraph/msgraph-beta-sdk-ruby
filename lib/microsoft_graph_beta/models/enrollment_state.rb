module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    EnrollmentState = {
        Unknown: :Unknown,
        Enrolled: :Enrolled,
        PendingReset: :PendingReset,
        Failed: :Failed,
        NotContacted: :NotContacted,
        Blocked: :Blocked,
    }
end
