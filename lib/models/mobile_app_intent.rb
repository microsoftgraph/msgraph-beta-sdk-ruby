module MicrosoftGraphBeta::Models
    ## 
    # Indicates the status of the mobile app on the device.
    MobileAppIntent = {
        Available: :Available,
        NotAvailable: :NotAvailable,
        RequiredInstall: :RequiredInstall,
        RequiredUninstall: :RequiredUninstall,
        RequiredAndAvailableInstall: :RequiredAndAvailableInstall,
        AvailableInstallWithoutEnrollment: :AvailableInstallWithoutEnrollment,
        Exclude: :Exclude,
    }
end
