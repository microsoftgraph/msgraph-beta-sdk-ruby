module MicrosoftGraphBeta::Models
    ## 
    # Enum of possible MicrosoftTunnelServer health status types
    MicrosoftTunnelServerHealthStatus = {
        Unknown: :Unknown,
        Healthy: :Healthy,
        Unhealthy: :Unhealthy,
        Warning: :Warning,
        Offline: :Offline,
        UpgradeInProgress: :UpgradeInProgress,
        UpgradeFailed: :UpgradeFailed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
