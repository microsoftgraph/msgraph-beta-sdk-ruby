module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to call the executeAction method.
    ManagedDeviceRemoteAction = {
        Retire: :Retire,
        Delete: :Delete,
        FullScan: :FullScan,
        QuickScan: :QuickScan,
        SignatureUpdate: :SignatureUpdate,
        Wipe: :Wipe,
        CustomTextNotification: :CustomTextNotification,
        RebootNow: :RebootNow,
        SetDeviceName: :SetDeviceName,
        SyncDevice: :SyncDevice,
        Deprovision: :Deprovision,
        Disable: :Disable,
        Reenable: :Reenable,
        MoveDeviceToOrganizationalUnit: :MoveDeviceToOrganizationalUnit,
        ActivateDeviceEsim: :ActivateDeviceEsim,
        CollectDiagnostics: :CollectDiagnostics,
        InitiateMobileDeviceManagementKeyRecovery: :InitiateMobileDeviceManagementKeyRecovery,
    }
end
