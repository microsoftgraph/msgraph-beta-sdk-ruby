module MicrosoftGraphBeta::Models
    ## 
    # Determines which clients a content cache will serve.
    MacOSContentCachingClientPolicy = {
        NotConfigured: :NotConfigured,
        ClientsInLocalNetwork: :ClientsInLocalNetwork,
        ClientsWithSamePublicIpAddress: :ClientsWithSamePublicIpAddress,
        ClientsInCustomLocalNetworks: :ClientsInCustomLocalNetworks,
        ClientsInCustomLocalNetworksWithFallback: :ClientsInCustomLocalNetworksWithFallback,
    }
end
