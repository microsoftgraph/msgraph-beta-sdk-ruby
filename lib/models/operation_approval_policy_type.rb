module MicrosoftGraphBeta
    module Models
        ## 
        # The set of available policy types that can be configured for approval. There is no default value for this enum, indicating that the policy type must always be chosen.
        OperationApprovalPolicyType = {
            Unknown: :Unknown,
            DeviceAction: :DeviceAction,
            DeviceWipe: :DeviceWipe,
            DeviceRetire: :DeviceRetire,
            DeviceRetireNonCompliant: :DeviceRetireNonCompliant,
            DeviceDelete: :DeviceDelete,
            DeviceLock: :DeviceLock,
            DeviceErase: :DeviceErase,
            DeviceDisableActivationLock: :DeviceDisableActivationLock,
            WindowsEnrollment: :WindowsEnrollment,
            CompliancePolicy: :CompliancePolicy,
            ConfigurationPolicy: :ConfigurationPolicy,
            AppProtectionPolicy: :AppProtectionPolicy,
            PolicySet: :PolicySet,
            Filter: :Filter,
            EndpointSecurityPolicy: :EndpointSecurityPolicy,
            App: :App,
            Script: :Script,
            Role: :Role,
            DeviceResetPasscode: :DeviceResetPasscode,
            CustomOrganizationalMessage: :CustomOrganizationalMessage,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
