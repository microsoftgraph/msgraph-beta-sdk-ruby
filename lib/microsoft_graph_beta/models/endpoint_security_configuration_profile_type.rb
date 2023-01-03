module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    EndpointSecurityConfigurationProfileType = {
        Unknown: :Unknown,
        Antivirus: :Antivirus,
        WindowsSecurity: :WindowsSecurity,
        BitLocker: :BitLocker,
        FileVault: :FileVault,
        Firewall: :Firewall,
        FirewallRules: :FirewallRules,
        EndpointDetectionAndResponse: :EndpointDetectionAndResponse,
        DeviceControl: :DeviceControl,
        AppAndBrowserIsolation: :AppAndBrowserIsolation,
        ExploitProtection: :ExploitProtection,
        WebProtection: :WebProtection,
        ApplicationControl: :ApplicationControl,
        AttackSurfaceReductionRules: :AttackSurfaceReductionRules,
        AccountProtection: :AccountProtection,
    }
end
