module MicrosoftGraphBeta::Models
    ## 
    # Determines how content caches select a parent cache.
    MacOSContentCachingParentSelectionPolicy = {
        NotConfigured: :NotConfigured,
        RoundRobin: :RoundRobin,
        FirstAvailable: :FirstAvailable,
        UrlPathHash: :UrlPathHash,
        Random: :Random,
        StickyAvailable: :StickyAvailable,
    }
end
