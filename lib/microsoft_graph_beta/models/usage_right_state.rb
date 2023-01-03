module MicrosoftGraphBeta::Models
    ## 
    # Casts the previous resource to device.
    UsageRightState = {
        Active: :Active,
        Inactive: :Inactive,
        Warning: :Warning,
        Suspended: :Suspended,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
