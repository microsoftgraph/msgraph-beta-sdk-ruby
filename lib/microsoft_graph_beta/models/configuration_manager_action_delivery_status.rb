module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    ConfigurationManagerActionDeliveryStatus = {
        Unknown: :Unknown,
        PendingDelivery: :PendingDelivery,
        DeliveredToConnectorService: :DeliveredToConnectorService,
        FailedToDeliverToConnectorService: :FailedToDeliverToConnectorService,
        DeliveredToOnPremisesServer: :DeliveredToOnPremisesServer,
    }
end
