module MicrosoftGraphBeta
    module Models
        ## 
        # Defines how app messaging redirection is protected by an App Protection Policy. Default is anyApp.
        MessagingRedirectAppType = {
            AnyApp: :AnyApp,
            AnyManagedApp: :AnyManagedApp,
            SpecificApps: :SpecificApps,
            Blocked: :Blocked,
        }
    end
end
