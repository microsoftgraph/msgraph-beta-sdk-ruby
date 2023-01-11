module MicrosoftGraphBeta::Models
    ## 
    # Bind status of the tenant with the Google EMM API
    AndroidManagedStoreAccountBindStatus = {
        NotBound: :NotBound,
        Bound: :Bound,
        BoundAndValidated: :BoundAndValidated,
        Unbinding: :Unbinding,
    }
end
