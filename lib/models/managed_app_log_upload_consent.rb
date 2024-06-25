module MicrosoftGraphBeta
    module Models
        ## 
        # Represents the current consent status of the associated `managedAppLogCollectionRequest`.
        ManagedAppLogUploadConsent = {
            Unknown: :Unknown,
            Declined: :Declined,
            Accepted: :Accepted,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
