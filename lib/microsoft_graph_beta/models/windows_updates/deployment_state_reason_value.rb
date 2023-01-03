module MicrosoftGraphBeta::Models::WindowsUpdates
    ## 
    # Provides operations to manage the admin singleton.
    DeploymentStateReasonValue = {
        ScheduledByOfferWindow: :ScheduledByOfferWindow,
        OfferingByRequest: :OfferingByRequest,
        PausedByRequest: :PausedByRequest,
        PausedByMonitoring: :PausedByMonitoring,
        UnknownFutureValue: :UnknownFutureValue,
        FaultedByContentOutdated: :FaultedByContentOutdated,
    }
end
