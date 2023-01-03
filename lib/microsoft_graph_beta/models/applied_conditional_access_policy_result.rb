module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    AppliedConditionalAccessPolicyResult = {
        Success: :Success,
        Failure: :Failure,
        NotApplied: :NotApplied,
        NotEnabled: :NotEnabled,
        Unknown: :Unknown,
        UnknownFutureValue: :UnknownFutureValue,
        ReportOnlySuccess: :ReportOnlySuccess,
        ReportOnlyFailure: :ReportOnlyFailure,
        ReportOnlyNotApplied: :ReportOnlyNotApplied,
        ReportOnlyInterrupted: :ReportOnlyInterrupted,
    }
end
