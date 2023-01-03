module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    ConditionalAccessGrantControl = {
        Block: :Block,
        Mfa: :Mfa,
        CompliantDevice: :CompliantDevice,
        DomainJoinedDevice: :DomainJoinedDevice,
        ApprovedApplication: :ApprovedApplication,
        CompliantApplication: :CompliantApplication,
        PasswordChange: :PasswordChange,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
