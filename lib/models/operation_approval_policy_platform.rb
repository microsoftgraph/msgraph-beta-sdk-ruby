module MicrosoftGraphBeta
    module Models
        ## 
        # The set of available platforms for the OperationApprovalPolicy. Allows configuration of a policy to specific platform(s) for approval. If no specific platform is required or applicable, the platform is `notApplicable`.
        OperationApprovalPolicyPlatform = {
            NotApplicable: :NotApplicable,
            AndroidDeviceAdministrator: :AndroidDeviceAdministrator,
            AndroidEnterprise: :AndroidEnterprise,
            IOSiPadOS: :IOSiPadOS,
            MacOS: :MacOS,
            Windows10AndLater: :Windows10AndLater,
            Windows81AndLater: :Windows81AndLater,
            Windows10X: :Windows10X,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
