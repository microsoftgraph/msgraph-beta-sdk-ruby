module MicrosoftGraphBeta
    module Models
        ## 
        # Represents the state of Zebra FOTA deployment.
        ZebraFotaDeploymentState = {
            PendingCreation: :PendingCreation,
            CreateFailed: :CreateFailed,
            Created: :Created,
            InProgress: :InProgress,
            Completed: :Completed,
            PendingCancel: :PendingCancel,
            Canceled: :Canceled,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
