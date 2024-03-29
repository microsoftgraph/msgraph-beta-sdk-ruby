module MicrosoftGraphBeta
    module Models
        ## 
        # VPN connection types.
        Windows10VpnConnectionType = {
            PulseSecure: :PulseSecure,
            F5EdgeClient: :F5EdgeClient,
            DellSonicWallMobileConnect: :DellSonicWallMobileConnect,
            CheckPointCapsuleVpn: :CheckPointCapsuleVpn,
            Automatic: :Automatic,
            IkEv2: :IkEv2,
            L2tp: :L2tp,
            Pptp: :Pptp,
            Citrix: :Citrix,
            PaloAltoGlobalProtect: :PaloAltoGlobalProtect,
            CiscoAnyConnect: :CiscoAnyConnect,
            UnknownFutureValue: :UnknownFutureValue,
            MicrosoftTunnel: :MicrosoftTunnel,
        }
    end
end
