module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            DelegatedPrivilegeStatus = {
                None: :None,
                DelegatedAdminPrivileges: :DelegatedAdminPrivileges,
                UnknownFutureValue: :UnknownFutureValue,
                GranularDelegatedAdminPrivileges: :GranularDelegatedAdminPrivileges,
                DelegatedAndGranularDelegetedAdminPrivileges: :DelegatedAndGranularDelegetedAdminPrivileges,
            }
        end
    end
end
