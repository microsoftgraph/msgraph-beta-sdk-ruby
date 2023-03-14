module MicrosoftGraphBeta
    module Models
        ## 
        # The endpoint security policy type.
        EndpointSecurityConfigurationType = {
            Unknown: :Unknown,
            Antivirus: :Antivirus,
            DiskEncryption: :DiskEncryption,
            Firewall: :Firewall,
            EndpointDetectionAndResponse: :EndpointDetectionAndResponse,
            AttackSurfaceReduction: :AttackSurfaceReduction,
            AccountProtection: :AccountProtection,
        }
    end
end
