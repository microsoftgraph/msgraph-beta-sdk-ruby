module MicrosoftGraphBeta::Models::ExternalConnectors
    ## 
    # Provides operations to manage the collection of accessReview entities.
    AclType = {
        User: :User,
        Group: :Group,
        Everyone: :Everyone,
        EveryoneExceptGuests: :EveryoneExceptGuests,
        ExternalGroup: :ExternalGroup,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
