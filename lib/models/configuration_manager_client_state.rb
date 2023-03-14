module MicrosoftGraphBeta
    module Models
        ## 
        # Configuration manager client state
        ConfigurationManagerClientState = {
            Unknown: :Unknown,
            Installed: :Installed,
            Healthy: :Healthy,
            InstallFailed: :InstallFailed,
            UpdateFailed: :UpdateFailed,
            CommunicationError: :CommunicationError,
        }
    end
end
