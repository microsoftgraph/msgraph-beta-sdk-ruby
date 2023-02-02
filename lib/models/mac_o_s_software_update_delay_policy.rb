module MicrosoftGraphBeta::Models
    ## 
    # Flag enum to determine whether to delay software updates for macOS.
    MacOSSoftwareUpdateDelayPolicy = {
        None: :None,
        DelayOSUpdateVisibility: :DelayOSUpdateVisibility,
        DelayAppUpdateVisibility: :DelayAppUpdateVisibility,
        UnknownFutureValue: :UnknownFutureValue,
        DelayMajorOsUpdateVisibility: :DelayMajorOsUpdateVisibility,
    }
end
