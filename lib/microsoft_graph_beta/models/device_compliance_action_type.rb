module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    DeviceComplianceActionType = {
        NoAction: :NoAction,
        Notification: :Notification,
        Block: :Block,
        Retire: :Retire,
        Wipe: :Wipe,
        RemoveResourceAccessProfiles: :RemoveResourceAccessProfiles,
        PushNotification: :PushNotification,
        RemoteLock: :RemoteLock,
    }
end
