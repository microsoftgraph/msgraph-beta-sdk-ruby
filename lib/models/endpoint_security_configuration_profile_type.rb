module MicrosoftGraphBeta::Models
    ## 
    # The endpoint security policy profile type.
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
