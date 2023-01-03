module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    DeviceLicensingStatus = {
        Unknown: :Unknown,
        LicenseRefreshStarted: :LicenseRefreshStarted,
        LicenseRefreshPending: :LicenseRefreshPending,
        DeviceIsNotAzureActiveDirectoryJoined: :DeviceIsNotAzureActiveDirectoryJoined,
        VerifyingMicrosoftDeviceIdentity: :VerifyingMicrosoftDeviceIdentity,
        DeviceIdentityVerificationFailed: :DeviceIdentityVerificationFailed,
        VerifyingMirosoftAccountIdentity: :VerifyingMirosoftAccountIdentity,
        MirosoftAccountVerificationFailed: :MirosoftAccountVerificationFailed,
        AcquiringDeviceLicense: :AcquiringDeviceLicense,
        RefreshingDeviceLicense: :RefreshingDeviceLicense,
        DeviceLicenseRefreshSucceed: :DeviceLicenseRefreshSucceed,
        DeviceLicenseRefreshFailed: :DeviceLicenseRefreshFailed,
        RemovingDeviceLicense: :RemovingDeviceLicense,
        DeviceLicenseRemoveSucceed: :DeviceLicenseRemoveSucceed,
        DeviceLicenseRemoveFailed: :DeviceLicenseRemoveFailed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
