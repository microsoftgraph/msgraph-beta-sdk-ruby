module MicrosoftGraphBeta
    module Models
        ## 
        # Describes which technology this setting can be deployed with
        DeviceManagementConfigurationTechnologies = {
            None: :None,
            Mdm: :Mdm,
            Windows10XManagement: :Windows10XManagement,
            ConfigManager: :ConfigManager,
            IntuneManagementExtension: :IntuneManagementExtension,
            ThirdParty: :ThirdParty,
            DocumentGateway: :DocumentGateway,
            AppleRemoteManagement: :AppleRemoteManagement,
            MicrosoftSense: :MicrosoftSense,
            ExchangeOnline: :ExchangeOnline,
            MobileApplicationManagement: :MobileApplicationManagement,
            LinuxMdm: :LinuxMdm,
            Enrollment: :Enrollment,
            EndpointPrivilegeManagement: :EndpointPrivilegeManagement,
            UnknownFutureValue: :UnknownFutureValue,
            WindowsOsRecovery: :WindowsOsRecovery,
            Android: :Android,
        }
    end
end
