module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    LobbyBypassScope = {
        Organizer: :Organizer,
        Organization: :Organization,
        OrganizationAndFederated: :OrganizationAndFederated,
        Everyone: :Everyone,
        UnknownFutureValue: :UnknownFutureValue,
        Invited: :Invited,
        OrganizationExcludingGuests: :OrganizationExcludingGuests,
    }
end
