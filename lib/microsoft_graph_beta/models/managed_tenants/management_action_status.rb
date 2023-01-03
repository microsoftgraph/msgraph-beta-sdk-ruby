module MicrosoftGraphBeta::Models::ManagedTenants
    ## 
    # Provides operations to manage the collection of accessReview entities.
    ManagementActionStatus = {
        ToAddress: :ToAddress,
        Completed: :Completed,
        Error: :Error,
        TimeOut: :TimeOut,
        InProgress: :InProgress,
        Planned: :Planned,
        ResolvedBy3rdParty: :ResolvedBy3rdParty,
        ResolvedThroughAlternateMitigation: :ResolvedThroughAlternateMitigation,
        RiskAccepted: :RiskAccepted,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
