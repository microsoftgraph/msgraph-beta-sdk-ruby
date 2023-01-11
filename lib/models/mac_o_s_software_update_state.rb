module MicrosoftGraphBeta::Models
    ## 
    # MacOS Software Update State
    MacOSSoftwareUpdateState = {
        Success: :Success,
        Downloading: :Downloading,
        Downloaded: :Downloaded,
        Installing: :Installing,
        Idle: :Idle,
        Available: :Available,
        Scheduled: :Scheduled,
        DownloadFailed: :DownloadFailed,
        DownloadInsufficientSpace: :DownloadInsufficientSpace,
        DownloadInsufficientPower: :DownloadInsufficientPower,
        DownloadInsufficientNetwork: :DownloadInsufficientNetwork,
        InstallInsufficientSpace: :InstallInsufficientSpace,
        InstallInsufficientPower: :InstallInsufficientPower,
        InstallFailed: :InstallFailed,
        CommandFailed: :CommandFailed,
    }
end
