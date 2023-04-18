module MicrosoftGraphBeta
    module Models
        ## 
        # Setting type of the group policy.
        GroupPolicySettingType = {
            Unknown: :Unknown,
            Policy: :Policy,
            Account: :Account,
            SecurityOptions: :SecurityOptions,
            UserRightsAssignment: :UserRightsAssignment,
            AuditSetting: :AuditSetting,
            WindowsFirewallSettings: :WindowsFirewallSettings,
            AppLockerRuleCollection: :AppLockerRuleCollection,
            DataSourcesSettings: :DataSourcesSettings,
            DevicesSettings: :DevicesSettings,
            DriveMapSettings: :DriveMapSettings,
            EnvironmentVariables: :EnvironmentVariables,
            FilesSettings: :FilesSettings,
            FolderOptions: :FolderOptions,
            Folders: :Folders,
            IniFiles: :IniFiles,
            InternetOptions: :InternetOptions,
            LocalUsersAndGroups: :LocalUsersAndGroups,
            NetworkOptions: :NetworkOptions,
            NetworkShares: :NetworkShares,
            NtServices: :NtServices,
            PowerOptions: :PowerOptions,
            Printers: :Printers,
            RegionalOptionsSettings: :RegionalOptionsSettings,
            RegistrySettings: :RegistrySettings,
            ScheduledTasks: :ScheduledTasks,
            ShortcutSettings: :ShortcutSettings,
            StartMenuSettings: :StartMenuSettings,
        }
    end
end
