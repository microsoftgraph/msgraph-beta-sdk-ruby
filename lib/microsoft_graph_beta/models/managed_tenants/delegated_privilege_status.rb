module MicrosoftGraphBeta::Models::ManagedTenants
    ## 
    # Provides operations to manage the collection of accessReview entities.
    DelegatedPrivilegeStatus = {
        None: :None,
        DelegatedAdminPrivileges: :DelegatedAdminPrivileges,
        UnknownFutureValue: :UnknownFutureValue,
        GranularDelegatedAdminPrivileges: :GranularDelegatedAdminPrivileges,
        DelegatedAndGranularDelegetedAdminPrivileges: :DelegatedAndGranularDelegetedAdminPrivileges,
    }
end
