module MicrosoftGraphBeta
    module Models
        ## 
        # Determines when notification previews are visible on an iOS device. Previews can include things like text (from Messages and Mail) and invitation details (from Calendar). When configured, it will override the user's defined preview settings.
        IosNotificationPreviewVisibility = {
            NotConfigured: :NotConfigured,
            AlwaysShow: :AlwaysShow,
            HideWhenLocked: :HideWhenLocked,
            NeverShow: :NeverShow,
        }
    end
end
