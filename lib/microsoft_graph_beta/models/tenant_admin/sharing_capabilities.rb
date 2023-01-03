module MicrosoftGraphBeta::Models::TenantAdmin
    ## 
    # Provides operations to manage the admin singleton.
    SharingCapabilities = {
        Disabled: :Disabled,
        ExternalUserSharingOnly: :ExternalUserSharingOnly,
        ExternalUserAndGuestSharing: :ExternalUserAndGuestSharing,
        ExistingExternalUserSharingOnly: :ExistingExternalUserSharingOnly,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
