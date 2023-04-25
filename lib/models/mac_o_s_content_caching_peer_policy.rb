module MicrosoftGraphBeta
    module Models
        ## 
        # Determines which content caches other content caches will peer with.
        MacOSContentCachingPeerPolicy = {
            NotConfigured: :NotConfigured,
            PeersInLocalNetwork: :PeersInLocalNetwork,
            PeersWithSamePublicIpAddress: :PeersWithSamePublicIpAddress,
            PeersInCustomLocalNetworks: :PeersInCustomLocalNetworks,
        }
    end
end
