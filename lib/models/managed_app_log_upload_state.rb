module MicrosoftGraphBeta
    module Models
        ## 
        # Represents the current status of the associated `managedAppLogCollectionRequest`.
        ManagedAppLogUploadState = {
            Pending: :Pending,
            InProgress: :InProgress,
            Completed: :Completed,
            DeclinedByUser: :DeclinedByUser,
            TimedOut: :TimedOut,
            Failed: :Failed,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
