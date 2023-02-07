module MicrosoftGraphBeta::Models
    ## 
    # Management levels for apps
    AppManagementLevel = {
        Unspecified: :Unspecified,
        Unmanaged: :Unmanaged,
        Mdm: :Mdm,
        AndroidEnterprise: :AndroidEnterprise,
        AndroidEnterpriseDedicatedDevicesWithAzureAdSharedMode: :AndroidEnterpriseDedicatedDevicesWithAzureAdSharedMode,
        AndroidOpenSourceProjectUserAssociated: :AndroidOpenSourceProjectUserAssociated,
        AndroidOpenSourceProjectUserless: :AndroidOpenSourceProjectUserless,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
