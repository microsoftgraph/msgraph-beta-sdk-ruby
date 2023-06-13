module MicrosoftGraphBeta
    module Models
        ## 
        # The classes of apps that are allowed to click-to-open a phone number, for making phone calls or sending text messages.
        ManagedAppPhoneNumberRedirectLevel = {
            AllApps: :AllApps,
            ManagedApps: :ManagedApps,
            CustomApp: :CustomApp,
            Blocked: :Blocked,
        }
    end
end
