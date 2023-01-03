module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    ConditionalAccessGuestOrExternalUserTypes = {
        None: :None,
        InternalGuest: :InternalGuest,
        B2bCollaborationGuest: :B2bCollaborationGuest,
        B2bCollaborationMember: :B2bCollaborationMember,
        B2bDirectConnectUser: :B2bDirectConnectUser,
        OtherExternalUser: :OtherExternalUser,
        ServiceProvider: :ServiceProvider,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
