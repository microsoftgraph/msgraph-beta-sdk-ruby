module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    SetupStatus = {
        Unknown: :Unknown,
        NotRegisteredYet: :NotRegisteredYet,
        RegisteredSetupNotStarted: :RegisteredSetupNotStarted,
        RegisteredSetupInProgress: :RegisteredSetupInProgress,
        RegistrationAndSetupCompleted: :RegistrationAndSetupCompleted,
        RegistrationFailed: :RegistrationFailed,
        RegistrationTimedOut: :RegistrationTimedOut,
        Disabled: :Disabled,
    }
end
