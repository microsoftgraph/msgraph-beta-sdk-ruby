module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    ComplianceState = {
        Unknown: :Unknown,
        Compliant: :Compliant,
        Noncompliant: :Noncompliant,
        Conflict: :Conflict,
        Error: :Error,
        InGracePeriod: :InGracePeriod,
        ConfigManager: :ConfigManager,
    }
end
