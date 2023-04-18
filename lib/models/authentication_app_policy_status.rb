module MicrosoftGraphBeta
    module Models
        AuthenticationAppPolicyStatus = {
            Unknown: :Unknown,
            AppLockOutOfDate: :AppLockOutOfDate,
            AppLockEnabled: :AppLockEnabled,
            AppLockDisabled: :AppLockDisabled,
            AppContextOutOfDate: :AppContextOutOfDate,
            AppContextShown: :AppContextShown,
            AppContextNotShown: :AppContextNotShown,
            LocationContextOutOfDate: :LocationContextOutOfDate,
            LocationContextShown: :LocationContextShown,
            LocationContextNotShown: :LocationContextNotShown,
            NumberMatchOutOfDate: :NumberMatchOutOfDate,
            NumberMatchCorrectNumberEntered: :NumberMatchCorrectNumberEntered,
            NumberMatchIncorrectNumberEntered: :NumberMatchIncorrectNumberEntered,
            NumberMatchDeny: :NumberMatchDeny,
            TamperResistantHardwareOutOfDate: :TamperResistantHardwareOutOfDate,
            TamperResistantHardwareUsed: :TamperResistantHardwareUsed,
            TamperResistantHardwareNotUsed: :TamperResistantHardwareNotUsed,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
