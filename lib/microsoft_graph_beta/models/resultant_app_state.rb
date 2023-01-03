module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    ResultantAppState = {
        NotApplicable: :NotApplicable,
        Installed: :Installed,
        Failed: :Failed,
        NotInstalled: :NotInstalled,
        UninstallFailed: :UninstallFailed,
        PendingInstall: :PendingInstall,
        Unknown: :Unknown,
    }
end
