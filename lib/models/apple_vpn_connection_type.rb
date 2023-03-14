module MicrosoftGraphBeta
    module Models
        ## 
        # Apple VPN connection type.
        AppleVpnConnectionType = {
            CiscoAnyConnect: :CiscoAnyConnect,
            PulseSecure: :PulseSecure,
            F5EdgeClient: :F5EdgeClient,
            DellSonicWallMobileConnect: :DellSonicWallMobileConnect,
            CheckPointCapsuleVpn: :CheckPointCapsuleVpn,
            CustomVpn: :CustomVpn,
            CiscoIPSec: :CiscoIPSec,
            Citrix: :Citrix,
            CiscoAnyConnectV2: :CiscoAnyConnectV2,
            PaloAltoGlobalProtect: :PaloAltoGlobalProtect,
            ZscalerPrivateAccess: :ZscalerPrivateAccess,
            F5Access2018: :F5Access2018,
            CitrixSso: :CitrixSso,
            PaloAltoGlobalProtectV2: :PaloAltoGlobalProtectV2,
            IkEv2: :IkEv2,
            AlwaysOn: :AlwaysOn,
            MicrosoftTunnel: :MicrosoftTunnel,
            NetMotionMobility: :NetMotionMobility,
            MicrosoftProtect: :MicrosoftProtect,
        }
    end
end
