module MicrosoftGraphBeta::Models
    ## 
    # Connector health state for connector status
    ConnectorHealthState = {
        Healthy: :Healthy,
        Warning: :Warning,
        Unhealthy: :Unhealthy,
        Unknown: :Unknown,
    }
end
