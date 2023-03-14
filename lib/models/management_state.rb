module MicrosoftGraphBeta
    module Models
        ## 
        # Management state of device in Microsoft Intune.
        ManagementState = {
            Managed: :Managed,
            RetirePending: :RetirePending,
            RetireFailed: :RetireFailed,
            WipePending: :WipePending,
            WipeFailed: :WipeFailed,
            Unhealthy: :Unhealthy,
            DeletePending: :DeletePending,
            RetireIssued: :RetireIssued,
            WipeIssued: :WipeIssued,
            WipeCanceled: :WipeCanceled,
            RetireCanceled: :RetireCanceled,
            Discovered: :Discovered,
        }
    end
end
