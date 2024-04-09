module MicrosoftGraphBeta
    module Models
        ## 
        # Define the platform type for which the admin wants to create the device clean up rule
        DeviceCleanupRulePlatformType = {
            All: :All,
            AndroidAOSP: :AndroidAOSP,
            AndroidDeviceAdministrator: :AndroidDeviceAdministrator,
            AndroidDedicatedAndFullyManagedCorporateOwnedWorkProfile: :AndroidDedicatedAndFullyManagedCorporateOwnedWorkProfile,
            ChromeOS: :ChromeOS,
            AndroidPersonallyOwnedWorkProfile: :AndroidPersonallyOwnedWorkProfile,
            Ios: :Ios,
            MacOS: :MacOS,
            Windows: :Windows,
            WindowsHolographic: :WindowsHolographic,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
