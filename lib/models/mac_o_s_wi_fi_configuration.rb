require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # By providing the configurations in this profile you can instruct the macOS device to connect to desired Wi-Fi endpoint. By specifying the authentication method and security types expected by Wi-Fi endpoint you can make the Wi-Fi connection seamless for end user.
        class MacOSWiFiConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Connect automatically when this network is in range. Setting this to true will skip the user prompt and automatically connect the device to Wi-Fi network.
            @connect_automatically
            ## 
            # Connect when the network is not broadcasting its name (SSID). When set to true, this profile forces the device to connect to a network that doesn't broadcast its SSID to all devices.
            @connect_when_network_name_is_hidden
            ## 
            # Network Name
            @network_name
            ## 
            # This is the pre-shared key for WPA Personal Wi-Fi network.
            @pre_shared_key
            ## 
            # URL of the proxy server automatic configuration script when automatic configuration is selected. This URL is typically the location of PAC (Proxy Auto Configuration) file.
            @proxy_automatic_configuration_url
            ## 
            # IP Address or DNS hostname of the proxy server when manual configuration is selected.
            @proxy_manual_address
            ## 
            # Port of the proxy server when manual configuration is selected.
            @proxy_manual_port
            ## 
            # Wi-Fi Proxy Settings.
            @proxy_settings
            ## 
            # This is the name of the Wi-Fi network that is broadcast to all devices.
            @ssid
            ## 
            # Wi-Fi Security Types.
            @wi_fi_security_type
            ## 
            ## Gets the connectAutomatically property value. Connect automatically when this network is in range. Setting this to true will skip the user prompt and automatically connect the device to Wi-Fi network.
            ## @return a boolean
            ## 
            def connect_automatically
                return @connect_automatically
            end
            ## 
            ## Sets the connectAutomatically property value. Connect automatically when this network is in range. Setting this to true will skip the user prompt and automatically connect the device to Wi-Fi network.
            ## @param value Value to set for the connectAutomatically property.
            ## @return a void
            ## 
            def connect_automatically=(value)
                @connect_automatically = value
            end
            ## 
            ## Gets the connectWhenNetworkNameIsHidden property value. Connect when the network is not broadcasting its name (SSID). When set to true, this profile forces the device to connect to a network that doesn't broadcast its SSID to all devices.
            ## @return a boolean
            ## 
            def connect_when_network_name_is_hidden
                return @connect_when_network_name_is_hidden
            end
            ## 
            ## Sets the connectWhenNetworkNameIsHidden property value. Connect when the network is not broadcasting its name (SSID). When set to true, this profile forces the device to connect to a network that doesn't broadcast its SSID to all devices.
            ## @param value Value to set for the connectWhenNetworkNameIsHidden property.
            ## @return a void
            ## 
            def connect_when_network_name_is_hidden=(value)
                @connect_when_network_name_is_hidden = value
            end
            ## 
            ## Instantiates a new macOSWiFiConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSWiFiConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_wi_fi_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.macOSEnterpriseWiFiConfiguration"
                            return MacOSEnterpriseWiFiConfiguration.new
                    end
                end
                return MacOSWiFiConfiguration.new
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
                    "proxyAutomaticConfigurationUrl" => lambda {|n| @proxy_automatic_configuration_url = n.get_string_value() },
                    "proxyManualAddress" => lambda {|n| @proxy_manual_address = n.get_string_value() },
                    "proxyManualPort" => lambda {|n| @proxy_manual_port = n.get_number_value() },
                    "proxySettings" => lambda {|n| @proxy_settings = n.get_enum_value(MicrosoftGraphBeta::Models::WiFiProxySetting) },
                    "ssid" => lambda {|n| @ssid = n.get_string_value() },
                    "wiFiSecurityType" => lambda {|n| @wi_fi_security_type = n.get_enum_value(MicrosoftGraphBeta::Models::WiFiSecurityType) },
                })
            end
            ## 
            ## Gets the networkName property value. Network Name
            ## @return a string
            ## 
            def network_name
                return @network_name
            end
            ## 
            ## Sets the networkName property value. Network Name
            ## @param value Value to set for the networkName property.
            ## @return a void
            ## 
            def network_name=(value)
                @network_name = value
            end
            ## 
            ## Gets the preSharedKey property value. This is the pre-shared key for WPA Personal Wi-Fi network.
            ## @return a string
            ## 
            def pre_shared_key
                return @pre_shared_key
            end
            ## 
            ## Sets the preSharedKey property value. This is the pre-shared key for WPA Personal Wi-Fi network.
            ## @param value Value to set for the preSharedKey property.
            ## @return a void
            ## 
            def pre_shared_key=(value)
                @pre_shared_key = value
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
            ## Gets the proxyManualAddress property value. IP Address or DNS hostname of the proxy server when manual configuration is selected.
            ## @return a string
            ## 
            def proxy_manual_address
                return @proxy_manual_address
            end
            ## 
            ## Sets the proxyManualAddress property value. IP Address or DNS hostname of the proxy server when manual configuration is selected.
            ## @param value Value to set for the proxyManualAddress property.
            ## @return a void
            ## 
            def proxy_manual_address=(value)
                @proxy_manual_address = value
            end
            ## 
            ## Gets the proxyManualPort property value. Port of the proxy server when manual configuration is selected.
            ## @return a integer
            ## 
            def proxy_manual_port
                return @proxy_manual_port
            end
            ## 
            ## Sets the proxyManualPort property value. Port of the proxy server when manual configuration is selected.
            ## @param value Value to set for the proxyManualPort property.
            ## @return a void
            ## 
            def proxy_manual_port=(value)
                @proxy_manual_port = value
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
                writer.write_string_value("proxyAutomaticConfigurationUrl", @proxy_automatic_configuration_url)
                writer.write_string_value("proxyManualAddress", @proxy_manual_address)
                writer.write_number_value("proxyManualPort", @proxy_manual_port)
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
            ## Gets the wiFiSecurityType property value. Wi-Fi Security Types.
            ## @return a wi_fi_security_type
            ## 
            def wi_fi_security_type
                return @wi_fi_security_type
            end
            ## 
            ## Sets the wiFiSecurityType property value. Wi-Fi Security Types.
            ## @param value Value to set for the wiFiSecurityType property.
            ## @return a void
            ## 
            def wi_fi_security_type=(value)
                @wi_fi_security_type = value
            end
        end
    end
end
