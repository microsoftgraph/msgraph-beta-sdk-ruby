module MicrosoftGraphBeta::Models
    ## 
    # A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins.
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
