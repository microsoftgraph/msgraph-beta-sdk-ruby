module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReviewDecision entities.
    TeamworkUserIdentityType = {
        AadUser: :AadUser,
        OnPremiseAadUser: :OnPremiseAadUser,
        AnonymousGuest: :AnonymousGuest,
        FederatedUser: :FederatedUser,
        PersonalMicrosoftAccountUser: :PersonalMicrosoftAccountUser,
        SkypeUser: :SkypeUser,
        PhoneUser: :PhoneUser,
        UnknownFutureValue: :UnknownFutureValue,
        EmailUser: :EmailUser,
        AzureCommunicationServicesUser: :AzureCommunicationServicesUser,
    }
end
