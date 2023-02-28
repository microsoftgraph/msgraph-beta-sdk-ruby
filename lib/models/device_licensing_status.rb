module MicrosoftGraphBeta
    module Models
        ## 
        # Indicates the device licensing status after Windows device based subscription has been enabled.
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
end
