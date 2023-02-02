module MicrosoftGraphBeta::Models
    ## 
    # Describes which technology this setting can be deployed with
    DeviceManagementConfigurationTechnologies = {
        None: :None,
        Mdm: :Mdm,
        Windows10XManagement: :Windows10XManagement,
        ConfigManager: :ConfigManager,
        AppleRemoteManagement: :AppleRemoteManagement,
        MicrosoftSense: :MicrosoftSense,
        ExchangeOnline: :ExchangeOnline,
        LinuxMdm: :LinuxMdm,
        Enrollment: :Enrollment,
        EndpointPrivilegeManagement: :EndpointPrivilegeManagement,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
