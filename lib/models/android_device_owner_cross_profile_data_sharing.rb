module MicrosoftGraphBeta::Models
    ## 
    # An enum representing possible values for cross profile data sharing.
    AndroidDeviceOwnerCrossProfileDataSharing = {
        NotConfigured: :NotConfigured,
        CrossProfileDataSharingBlocked: :CrossProfileDataSharingBlocked,
        DataSharingFromWorkToPersonalBlocked: :DataSharingFromWorkToPersonalBlocked,
        CrossProfileDataSharingAllowed: :CrossProfileDataSharingAllowed,
        UnkownFutureValue: :UnkownFutureValue,
    }
end
