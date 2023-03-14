module MicrosoftGraphBeta
    module Models
        ## 
        # Advanced BitLocker State
        AdvancedBitLockerState = {
            Success: :Success,
            NoUserConsent: :NoUserConsent,
            OsVolumeUnprotected: :OsVolumeUnprotected,
            OsVolumeTpmRequired: :OsVolumeTpmRequired,
            OsVolumeTpmOnlyRequired: :OsVolumeTpmOnlyRequired,
            OsVolumeTpmPinRequired: :OsVolumeTpmPinRequired,
            OsVolumeTpmStartupKeyRequired: :OsVolumeTpmStartupKeyRequired,
            OsVolumeTpmPinStartupKeyRequired: :OsVolumeTpmPinStartupKeyRequired,
            OsVolumeEncryptionMethodMismatch: :OsVolumeEncryptionMethodMismatch,
            RecoveryKeyBackupFailed: :RecoveryKeyBackupFailed,
            FixedDriveNotEncrypted: :FixedDriveNotEncrypted,
            FixedDriveEncryptionMethodMismatch: :FixedDriveEncryptionMethodMismatch,
            LoggedOnUserNonAdmin: :LoggedOnUserNonAdmin,
            WindowsRecoveryEnvironmentNotConfigured: :WindowsRecoveryEnvironmentNotConfigured,
            TpmNotAvailable: :TpmNotAvailable,
            TpmNotReady: :TpmNotReady,
            NetworkError: :NetworkError,
        }
    end
end
