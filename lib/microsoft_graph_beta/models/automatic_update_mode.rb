module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    AutomaticUpdateMode = {
        UserDefined: :UserDefined,
        NotifyDownload: :NotifyDownload,
        AutoInstallAtMaintenanceTime: :AutoInstallAtMaintenanceTime,
        AutoInstallAndRebootAtMaintenanceTime: :AutoInstallAndRebootAtMaintenanceTime,
        AutoInstallAndRebootAtScheduledTime: :AutoInstallAndRebootAtScheduledTime,
        AutoInstallAndRebootWithoutEndUserControl: :AutoInstallAndRebootWithoutEndUserControl,
        WindowsDefault: :WindowsDefault,
    }
end
