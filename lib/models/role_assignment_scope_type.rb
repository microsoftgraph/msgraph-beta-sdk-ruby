module MicrosoftGraphBeta::Models
    ## 
    # Specifies the type of scope for a Role Assignment.
    RoleAssignmentScopeType = {
        ResourceScope: :ResourceScope,
        AllDevices: :AllDevices,
        AllLicensedUsers: :AllLicensedUsers,
        AllDevicesAndLicensedUsers: :AllDevicesAndLicensedUsers,
    }
end
