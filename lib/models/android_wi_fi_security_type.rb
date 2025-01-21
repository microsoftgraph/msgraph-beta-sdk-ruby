module MicrosoftGraphBeta
    module Models
        ## 
        # The possible security types for Android Wi-Fi profiles. Default value 'Open', indicates no authentication required for the network. The security protocols supported are WEP, WPA and WPA2. 'WpaEnterprise' and 'Wpa2Enterprise' options are available for Enterprise Wi-Fi profiles. 'Wep' and 'WpaPersonal' (supports WPA and WPA2) options are available for Basic Wi-Fi profiles.
        AndroidWiFiSecurityType = {
            Open: :Open,
            WpaEnterprise: :WpaEnterprise,
            Wpa2Enterprise: :Wpa2Enterprise,
            Wep: :Wep,
            WpaPersonal: :WpaPersonal,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
