module MicrosoftGraphBeta::Models::WindowsUpdates
    ## 
    # Provides operations to manage the admin singleton.
    DeploymentStateValue = {
        Scheduled: :Scheduled,
        Offering: :Offering,
        Paused: :Paused,
        Faulted: :Faulted,
        Archived: :Archived,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
