module MicrosoftGraphBeta
    module Models
        ## 
        # Enum indicating additional details regarding why an application has a particular install state.
        ResultantAppStateDetail = {
            ProcessorArchitectureNotApplicable: :ProcessorArchitectureNotApplicable,
            MinimumDiskSpaceNotMet: :MinimumDiskSpaceNotMet,
            MinimumOsVersionNotMet: :MinimumOsVersionNotMet,
            MinimumPhysicalMemoryNotMet: :MinimumPhysicalMemoryNotMet,
            MinimumLogicalProcessorCountNotMet: :MinimumLogicalProcessorCountNotMet,
            MinimumCpuSpeedNotMet: :MinimumCpuSpeedNotMet,
            PlatformNotApplicable: :PlatformNotApplicable,
            FileSystemRequirementNotMet: :FileSystemRequirementNotMet,
            RegistryRequirementNotMet: :RegistryRequirementNotMet,
            PowerShellScriptRequirementNotMet: :PowerShellScriptRequirementNotMet,
            SupersedingAppsNotApplicable: :SupersedingAppsNotApplicable,
            NoAdditionalDetails: :NoAdditionalDetails,
            DependencyFailedToInstall: :DependencyFailedToInstall,
            DependencyWithRequirementsNotMet: :DependencyWithRequirementsNotMet,
            DependencyPendingReboot: :DependencyPendingReboot,
            DependencyWithAutoInstallDisabled: :DependencyWithAutoInstallDisabled,
            SupersededAppUninstallFailed: :SupersededAppUninstallFailed,
            SupersededAppUninstallPendingReboot: :SupersededAppUninstallPendingReboot,
            RemovingSupersededApps: :RemovingSupersededApps,
            IosAppStoreUpdateFailedToInstall: :IosAppStoreUpdateFailedToInstall,
            VppAppHasUpdateAvailable: :VppAppHasUpdateAvailable,
            UserRejectedUpdate: :UserRejectedUpdate,
            UninstallPendingReboot: :UninstallPendingReboot,
            SupersedingAppsDetected: :SupersedingAppsDetected,
            SupersededAppsDetected: :SupersededAppsDetected,
            SeeInstallErrorCode: :SeeInstallErrorCode,
            AutoInstallDisabled: :AutoInstallDisabled,
            ManagedAppNoLongerPresent: :ManagedAppNoLongerPresent,
            UserRejectedInstall: :UserRejectedInstall,
            UserIsNotLoggedIntoAppStore: :UserIsNotLoggedIntoAppStore,
            UntargetedSupersedingAppsDetected: :UntargetedSupersedingAppsDetected,
            AppRemovedBySupersedence: :AppRemovedBySupersedence,
            SeeUninstallErrorCode: :SeeUninstallErrorCode,
            PendingReboot: :PendingReboot,
            InstallingDependencies: :InstallingDependencies,
            ContentDownloaded: :ContentDownloaded,
        }
    end
end
