module MicrosoftGraphBeta::Models
    ## 
    # Windows update for business configuration device states
    WindowsUpdateStatus = {
        UpToDate: :UpToDate,
        PendingInstallation: :PendingInstallation,
        PendingReboot: :PendingReboot,
        Failed: :Failed,
    }
end
