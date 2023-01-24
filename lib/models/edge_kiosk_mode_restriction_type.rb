module MicrosoftGraphBeta::Models
    ## 
    # Specify how the Microsoft Edge settings are restricted based on kiosk mode.
    EdgeKioskModeRestrictionType = {
        NotConfigured: :NotConfigured,
        DigitalSignage: :DigitalSignage,
        NormalMode: :NormalMode,
        PublicBrowsingSingleApp: :PublicBrowsingSingleApp,
        PublicBrowsingMultiApp: :PublicBrowsingMultiApp,
    }
end
