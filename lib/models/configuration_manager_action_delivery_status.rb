module MicrosoftGraphBeta::Models
    ## 
    # Delivery state of Configuration Manager device action
    ConfigurationManagerActionDeliveryStatus = {
        Unknown: :Unknown,
        PendingDelivery: :PendingDelivery,
        DeliveredToConnectorService: :DeliveredToConnectorService,
        FailedToDeliverToConnectorService: :FailedToDeliverToConnectorService,
        DeliveredToOnPremisesServer: :DeliveredToOnPremisesServer,
    }
end
