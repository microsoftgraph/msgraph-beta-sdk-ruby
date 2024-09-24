module MicrosoftGraphBeta
    module Models
        ## 
        # A list of possible device assignment item types to execute this action on the managed device. Device assignment item represents existing assigned Intune resource such as application or configuration. Currently supported device assignment item types are Application, DeviceConfiguration, DeviceManagementConfigurationPolicy and MobileAppConfiguration
        DeviceAssignmentItemType = {
            Application: :Application,
            DeviceConfiguration: :DeviceConfiguration,
            DeviceManagementConfigurationPolicy: :DeviceManagementConfigurationPolicy,
            MobileAppConfiguration: :MobileAppConfiguration,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
