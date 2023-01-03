module MicrosoftGraphBeta::Models
    ## 
    # Casts the previous resource to application.
    CrossTenantAccessPolicyTargetType = {
        User: :User,
        Group: :Group,
        Application: :Application,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
