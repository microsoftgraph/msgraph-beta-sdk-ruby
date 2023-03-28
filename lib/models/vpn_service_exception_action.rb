module MicrosoftGraphBeta
    module Models
        ## 
        # The VPN action to take for a specific service.
        VpnServiceExceptionAction = {
            ForceTrafficViaVPN: :ForceTrafficViaVPN,
            AllowTrafficOutside: :AllowTrafficOutside,
            DropTraffic: :DropTraffic,
        }
    end
end
