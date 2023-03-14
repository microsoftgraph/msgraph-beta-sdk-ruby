module MicrosoftGraphBeta
    module Models
        ## 
        # Defines the Action Types for an Intune Application.
        MobileAppActionType = {
            Unknown: :Unknown,
            InstallCommandSent: :InstallCommandSent,
            Installed: :Installed,
            Uninstalled: :Uninstalled,
            UserRequestedInstall: :UserRequestedInstall,
        }
    end
end
