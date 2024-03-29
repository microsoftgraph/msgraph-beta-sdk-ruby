module MicrosoftGraphBeta
    module Models
        ## 
        # Remote actions Intune supports.
        RemoteAction = {
            Unknown: :Unknown,
            FactoryReset: :FactoryReset,
            RemoveCompanyData: :RemoveCompanyData,
            ResetPasscode: :ResetPasscode,
            RemoteLock: :RemoteLock,
            EnableLostMode: :EnableLostMode,
            DisableLostMode: :DisableLostMode,
            LocateDevice: :LocateDevice,
            RebootNow: :RebootNow,
            RecoverPasscode: :RecoverPasscode,
            CleanWindowsDevice: :CleanWindowsDevice,
            LogoutSharedAppleDeviceActiveUser: :LogoutSharedAppleDeviceActiveUser,
            QuickScan: :QuickScan,
            FullScan: :FullScan,
            WindowsDefenderUpdateSignatures: :WindowsDefenderUpdateSignatures,
            FactoryResetKeepEnrollmentData: :FactoryResetKeepEnrollmentData,
            UpdateDeviceAccount: :UpdateDeviceAccount,
            AutomaticRedeployment: :AutomaticRedeployment,
            ShutDown: :ShutDown,
            RotateBitLockerKeys: :RotateBitLockerKeys,
            RotateFileVaultKey: :RotateFileVaultKey,
            GetFileVaultKey: :GetFileVaultKey,
            SetDeviceName: :SetDeviceName,
            ActivateDeviceEsim: :ActivateDeviceEsim,
            Deprovision: :Deprovision,
            Disable: :Disable,
            Reenable: :Reenable,
            MoveDeviceToOrganizationalUnit: :MoveDeviceToOrganizationalUnit,
            InitiateMobileDeviceManagementKeyRecovery: :InitiateMobileDeviceManagementKeyRecovery,
            InitiateOnDemandProactiveRemediation: :InitiateOnDemandProactiveRemediation,
            RotateLocalAdminPassword: :RotateLocalAdminPassword,
            UnknownFutureValue: :UnknownFutureValue,
            LaunchRemoteHelp: :LaunchRemoteHelp,
            RevokeAppleVppLicenses: :RevokeAppleVppLicenses,
            RemoveDeviceFirmwareConfigurationInterfaceManagement: :RemoveDeviceFirmwareConfigurationInterfaceManagement,
        }
    end
end
