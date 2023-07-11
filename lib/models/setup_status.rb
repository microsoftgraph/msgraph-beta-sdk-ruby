module MicrosoftGraphBeta
    module Models
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
end
