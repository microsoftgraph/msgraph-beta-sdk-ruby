module MicrosoftGraphBeta::Models
    ## 
    # Represents various network types for Zebra FOTA deployment.
    ZebraFotaNetworkType = {
        Any: :Any,
        Wifi: :Wifi,
        Cellular: :Cellular,
        WifiAndCellular: :WifiAndCellular,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
