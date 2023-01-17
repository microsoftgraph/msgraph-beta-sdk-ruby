module MicrosoftGraphBeta::Models
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
