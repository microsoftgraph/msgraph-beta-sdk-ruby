require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # By providing the configurations in this profile you can instruct the Android Work Profile device to connect to desired Wi-Fi endpoint. By specifying the authentication method and security types expected by Wi-Fi endpoint you can make the Wi-Fi connection seamless for end user. This profile provides limited and simpler security types than Enterprise Wi-Fi profile.
        class AndroidWorkProfileWiFiConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When set to true, device will connect automatically to the Wi-Fi network when in range, skipping the user prompt. When false, user will need to connect manually through Settings on the Android device. Default value is false.
            @connect_automatically
            ## 
            # When set to true, this profile forces the device to connect to a network that doesn't broadcast its SSID to all devices. When false, device will not automatically connect to hidden networks. Default value is false.
            @connect_when_network_name_is_hidden
            ## 
            # The name of the Wi-Fi network.
            @network_name
            ## 
            # Specify the pre-shared key for a WEP or WPA personal Wi-Fi network. Restrictions depend on the value set for wiFiSecurityType. If WEP type security is used, then preSharedKey must be a valid passphrase (5 or 13 characters) or a valid HEX key (10 or 26 hexidecimal characters). If WPA security type is used, then preSharedKey can be any string between 8 and 64 characters long.
            @pre_shared_key
            ## 
            # When set to true, indicates that the pre-shared key is configured. When set to false, indicates that pre-shared key is not configured (any values set for preSharedKey will be ignored). Default value is false.
            @pre_shared_key_is_set
            ## 
            # URL of the proxy server automatic configuration script when automatic configuration is selected. This URL is typically the location of PAC (Proxy Auto Configuration) file.
            @proxy_automatic_configuration_url
            ## 
            # Wi-Fi Proxy Settings.
            @proxy_settings
            ## 
            # This is the name of the Wi-Fi network that is broadcast to all devices.
            @ssid
            ## 
            # The possible security types for Android Wi-Fi profiles. Default value 'Open', indicates no authentication required for the network. The security protocols supported are WEP, WPA and WPA2. 'WpaEnterprise' and 'Wpa2Enterprise' options are available for Enterprise Wi-Fi profiles. 'Wep' and 'WpaPersonal' (supports WPA and WPA2) options are available for Basic Wi-Fi profiles.
            @wi_fi_security_type
            ## 
            ## Gets the connectAutomatically property value. When set to true, device will connect automatically to the Wi-Fi network when in range, skipping the user prompt. When false, user will need to connect manually through Settings on the Android device. Default value is false.
            ## @return a boolean
            ## 
            def connect_automatically
                return @connect_automatically
            end
            ## 
            ## Sets the connectAutomatically property value. When set to true, device will connect automatically to the Wi-Fi network when in range, skipping the user prompt. When false, user will need to connect manually through Settings on the Android device. Default value is false.
            ## @param value Value to set for the connectAutomatically property.
            ## @return a void
            ## 
            def connect_automatically=(value)
                @connect_automatically = value
            end
            ## 
            ## Gets the connectWhenNetworkNameIsHidden property value. When set to true, this profile forces the device to connect to a network that doesn't broadcast its SSID to all devices. When false, device will not automatically connect to hidden networks. Default value is false.
            ## @return a boolean
            ## 
            def connect_when_network_name_is_hidden
                return @connect_when_network_name_is_hidden
            end
            ## 
            ## Sets the connectWhenNetworkNameIsHidden property value. When set to true, this profile forces the device to connect to a network that doesn't broadcast its SSID to all devices. When false, device will not automatically connect to hidden networks. Default value is false.
            ## @param value Value to set for the connectWhenNetworkNameIsHidden property.
            ## @return a void
            ## 
            def connect_when_network_name_is_hidden=(value)
                @connect_when_network_name_is_hidden = value
            end
            ## 
            ## Instantiates a new AndroidWorkProfileWiFiConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidWorkProfileWiFiConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_work_profile_wi_fi_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.androidWorkProfileEnterpriseWiFiConfiguration"
                            return AndroidWorkProfileEnterpriseWiFiConfiguration.new
                    end
                end
                return AndroidWorkProfileWiFiConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "connectAutomatically" => lambda {|n| @connect_automatically = n.get_boolean_value() },
                    "connectWhenNetworkNameIsHidden" => lambda {|n| @connect_when_network_name_is_hidden = n.get_boolean_value() },
                    "networkName" => lambda {|n| @network_name = n.get_string_value() },
                    "preSharedKey" => lambda {|n| @pre_shared_key = n.get_string_value() },
                    "preSharedKeyIsSet" => lambda {|n| @pre_shared_key_is_set = n.get_boolean_value() },
                    "proxyAutomaticConfigurationUrl" => lambda {|n| @proxy_automatic_configuration_url = n.get_string_value() },
                    "proxySettings" => lambda {|n| @proxy_settings = n.get_enum_value(MicrosoftGraphBeta::Models::WiFiProxySetting) },
                    "ssid" => lambda {|n| @ssid = n.get_string_value() },
                    "wiFiSecurityType" => lambda {|n| @wi_fi_security_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidWiFiSecurityType) },
                })
            end
            ## 
            ## Gets the networkName property value. The name of the Wi-Fi network.
            ## @return a string
            ## 
            def network_name
                return @network_name
            end
            ## 
            ## Sets the networkName property value. The name of the Wi-Fi network.
            ## @param value Value to set for the networkName property.
            ## @return a void
            ## 
            def network_name=(value)
                @network_name = value
            end
            ## 
            ## Gets the preSharedKey property value. Specify the pre-shared key for a WEP or WPA personal Wi-Fi network. Restrictions depend on the value set for wiFiSecurityType. If WEP type security is used, then preSharedKey must be a valid passphrase (5 or 13 characters) or a valid HEX key (10 or 26 hexidecimal characters). If WPA security type is used, then preSharedKey can be any string between 8 and 64 characters long.
            ## @return a string
            ## 
            def pre_shared_key
                return @pre_shared_key
            end
            ## 
            ## Sets the preSharedKey property value. Specify the pre-shared key for a WEP or WPA personal Wi-Fi network. Restrictions depend on the value set for wiFiSecurityType. If WEP type security is used, then preSharedKey must be a valid passphrase (5 or 13 characters) or a valid HEX key (10 or 26 hexidecimal characters). If WPA security type is used, then preSharedKey can be any string between 8 and 64 characters long.
            ## @param value Value to set for the preSharedKey property.
            ## @return a void
            ## 
            def pre_shared_key=(value)
                @pre_shared_key = value
            end
            ## 
            ## Gets the preSharedKeyIsSet property value. When set to true, indicates that the pre-shared key is configured. When set to false, indicates that pre-shared key is not configured (any values set for preSharedKey will be ignored). Default value is false.
            ## @return a boolean
            ## 
            def pre_shared_key_is_set
                return @pre_shared_key_is_set
            end
            ## 
            ## Sets the preSharedKeyIsSet property value. When set to true, indicates that the pre-shared key is configured. When set to false, indicates that pre-shared key is not configured (any values set for preSharedKey will be ignored). Default value is false.
            ## @param value Value to set for the preSharedKeyIsSet property.
            ## @return a void
            ## 
            def pre_shared_key_is_set=(value)
                @pre_shared_key_is_set = value
            end
            ## 
            ## Gets the proxyAutomaticConfigurationUrl property value. URL of the proxy server automatic configuration script when automatic configuration is selected. This URL is typically the location of PAC (Proxy Auto Configuration) file.
            ## @return a string
            ## 
            def proxy_automatic_configuration_url
                return @proxy_automatic_configuration_url
            end
            ## 
            ## Sets the proxyAutomaticConfigurationUrl property value. URL of the proxy server automatic configuration script when automatic configuration is selected. This URL is typically the location of PAC (Proxy Auto Configuration) file.
            ## @param value Value to set for the proxyAutomaticConfigurationUrl property.
            ## @return a void
            ## 
            def proxy_automatic_configuration_url=(value)
                @proxy_automatic_configuration_url = value
            end
            ## 
            ## Gets the proxySettings property value. Wi-Fi Proxy Settings.
            ## @return a wi_fi_proxy_setting
            ## 
            def proxy_settings
                return @proxy_settings
            end
            ## 
            ## Sets the proxySettings property value. Wi-Fi Proxy Settings.
            ## @param value Value to set for the proxySettings property.
            ## @return a void
            ## 
            def proxy_settings=(value)
                @proxy_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("connectAutomatically", @connect_automatically)
                writer.write_boolean_value("connectWhenNetworkNameIsHidden", @connect_when_network_name_is_hidden)
                writer.write_string_value("networkName", @network_name)
                writer.write_string_value("preSharedKey", @pre_shared_key)
                writer.write_boolean_value("preSharedKeyIsSet", @pre_shared_key_is_set)
                writer.write_string_value("proxyAutomaticConfigurationUrl", @proxy_automatic_configuration_url)
                writer.write_enum_value("proxySettings", @proxy_settings)
                writer.write_string_value("ssid", @ssid)
                writer.write_enum_value("wiFiSecurityType", @wi_fi_security_type)
            end
            ## 
            ## Gets the ssid property value. This is the name of the Wi-Fi network that is broadcast to all devices.
            ## @return a string
            ## 
            def ssid
                return @ssid
            end
            ## 
            ## Sets the ssid property value. This is the name of the Wi-Fi network that is broadcast to all devices.
            ## @param value Value to set for the ssid property.
            ## @return a void
            ## 
            def ssid=(value)
                @ssid = value
            end
            ## 
            ## Gets the wiFiSecurityType property value. The possible security types for Android Wi-Fi profiles. Default value 'Open', indicates no authentication required for the network. The security protocols supported are WEP, WPA and WPA2. 'WpaEnterprise' and 'Wpa2Enterprise' options are available for Enterprise Wi-Fi profiles. 'Wep' and 'WpaPersonal' (supports WPA and WPA2) options are available for Basic Wi-Fi profiles.
            ## @return a android_wi_fi_security_type
            ## 
            def wi_fi_security_type
                return @wi_fi_security_type
            end
            ## 
            ## Sets the wiFiSecurityType property value. The possible security types for Android Wi-Fi profiles. Default value 'Open', indicates no authentication required for the network. The security protocols supported are WEP, WPA and WPA2. 'WpaEnterprise' and 'Wpa2Enterprise' options are available for Enterprise Wi-Fi profiles. 'Wep' and 'WpaPersonal' (supports WPA and WPA2) options are available for Basic Wi-Fi profiles.
            ## @param value Value to set for the wiFiSecurityType property.
            ## @return a void
            ## 
            def wi_fi_security_type=(value)
                @wi_fi_security_type = value
            end
        end
    end
end
