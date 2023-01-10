module MicrosoftGraphBeta::Models::ManagedTenants
    DelegatedPrivilegeStatus = {
        None: :None,
        DelegatedAdminPrivileges: :DelegatedAdminPrivileges,
        UnknownFutureValue: :UnknownFutureValue,
        GranularDelegatedAdminPrivileges: :GranularDelegatedAdminPrivileges,
        DelegatedAndGranularDelegetedAdminPrivileges: :DelegatedAndGranularDelegetedAdminPrivileges,
    }
end
