module MicrosoftGraphBeta
    module Models
        ## 
        # The available deployment modes for a managed Tunnel server. The deployment mode is determined during the deployment depending on the Tunnel containers, namely standalone or as part of a pod, and whether the containers are running in rootful or rootless mode.
        MicrosoftTunnelDeploymentMode = {
            StandaloneRootful: :StandaloneRootful,
            StandaloneRootless: :StandaloneRootless,
            PodRootful: :PodRootful,
            PodRootless: :PodRootless,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
