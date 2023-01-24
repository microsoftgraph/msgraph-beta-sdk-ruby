module MicrosoftGraphBeta::Models
    ## 
    # Update behavior options for macOS software updates.
    MacOSSoftwareUpdateBehavior = {
        NotConfigured: :NotConfigured,
        Default: :Default,
        DownloadOnly: :DownloadOnly,
        InstallASAP: :InstallASAP,
        NotifyOnly: :NotifyOnly,
        InstallLater: :InstallLater,
    }
end
