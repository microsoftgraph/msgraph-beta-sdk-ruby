module MicrosoftGraphBeta
    module Models
        ## 
        # Contains all supported registry data detection type.
        Win32LobAppRegistryDetectionType = {
            NotConfigured: :NotConfigured,
            Exists: :Exists,
            DoesNotExist: :DoesNotExist,
            String: :String,
            Integer: :Integer,
            Version: :Version,
        }
    end
end
