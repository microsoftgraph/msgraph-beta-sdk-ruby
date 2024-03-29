module MicrosoftGraphBeta
    module Models
        IosUpdatesInstallStatus = {
            UpdateScanFailed: :UpdateScanFailed,
            DeviceOsHigherThanDesiredOsVersion: :DeviceOsHigherThanDesiredOsVersion,
            UpdateError: :UpdateError,
            SharedDeviceUserLoggedInError: :SharedDeviceUserLoggedInError,
            NotSupportedOperation: :NotSupportedOperation,
            InstallFailed: :InstallFailed,
            InstallPhoneCallInProgress: :InstallPhoneCallInProgress,
            InstallInsufficientPower: :InstallInsufficientPower,
            InstallInsufficientSpace: :InstallInsufficientSpace,
            Installing: :Installing,
            DownloadInsufficientNetwork: :DownloadInsufficientNetwork,
            DownloadInsufficientPower: :DownloadInsufficientPower,
            DownloadInsufficientSpace: :DownloadInsufficientSpace,
            DownloadRequiresComputer: :DownloadRequiresComputer,
            DownloadFailed: :DownloadFailed,
            Downloading: :Downloading,
            Timeout: :Timeout,
            MdmClientCrashed: :MdmClientCrashed,
            Success: :Success,
            Available: :Available,
            Idle: :Idle,
            Unknown: :Unknown,
        }
    end
end
