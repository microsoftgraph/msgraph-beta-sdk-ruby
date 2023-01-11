module MicrosoftGraphBeta::Models
    ## 
    # Allow(Not Configured) or prevent(Block) the syncing of Microsoft Edge Browser settings. Option to prevent syncing across devices, but allow user override.
    BrowserSyncSetting = {
        NotConfigured: :NotConfigured,
        BlockedWithUserOverride: :BlockedWithUserOverride,
        Blocked: :Blocked,
    }
end
