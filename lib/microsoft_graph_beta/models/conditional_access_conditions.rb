module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    ConditionalAccessConditions = {
        None: :None,
        Application: :Application,
        Users: :Users,
        DevicePlatform: :DevicePlatform,
        Location: :Location,
        ClientType: :ClientType,
        SignInRisk: :SignInRisk,
        UserRisk: :UserRisk,
        Time: :Time,
        DeviceState: :DeviceState,
        Client: :Client,
        IpAddressSeenByAzureAD: :IpAddressSeenByAzureAD,
        IpAddressSeenByResourceProvider: :IpAddressSeenByResourceProvider,
        UnknownFutureValue: :UnknownFutureValue,
        ServicePrincipals: :ServicePrincipals,
        ServicePrincipalRisk: :ServicePrincipalRisk,
    }
end
