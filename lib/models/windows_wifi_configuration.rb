require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Device Configuration.
        class WindowsWifiConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specify whether the wifi connection should connect automatically when in range.
            @connect_automatically
            ## 
            # Specify whether the wifi connection should connect to more preferred networks when already connected to this one.  Requires ConnectAutomatically to be true.
            @connect_to_preferred_network
            ## 
            # Specify whether the wifi connection should connect automatically even when the SSID is not broadcasting.
            @connect_when_network_name_is_hidden
            ## 
            # Specify whether to force FIPS compliance.
            @force_f_i_p_s_compliance
            ## 
            # Specify the metered connection limit type for the wifi connection. Possible values are: unrestricted, fixed, variable.
            @metered_connection_limit
            ## 
            # Specify the network configuration name.
            @network_name
            ## 
            # This is the pre-shared key for WPA Personal Wi-Fi network.
            @pre_shared_key
            ## 
            # Specify the URL for the proxy server configuration script.
            @proxy_automatic_configuration_url
            ## 
            # Specify the IP address for the proxy server.
            @proxy_manual_address
            ## 
            # Specify the port for the proxy server.
            @proxy_manual_port
            ## 
            # Specify the proxy setting for Wi-Fi configuration. Possible values are: none, manual, automatic.
            @proxy_setting
            ## 
            # Specify the SSID of the wifi connection.
            @ssid
            ## 
            # Specify the Wifi Security Type. Possible values are: open, wpaPersonal, wpaEnterprise, wep, wpa2Personal, wpa2Enterprise.
            @wifi_security_type
            ## 
            ## Gets the connectAutomatically property value. Specify whether the wifi connection should connect automatically when in range.
            ## @return a boolean
            ## 
            def connect_automatically
                return @connect_automatically
            end
            ## 
            ## Sets the connectAutomatically property value. Specify whether the wifi connection should connect automatically when in range.
            ## @param value Value to set for the connectAutomatically property.
            ## @return a void
            ## 
            def connect_automatically=(value)
                @connect_automatically = value
            end
            ## 
            ## Gets the connectToPreferredNetwork property value. Specify whether the wifi connection should connect to more preferred networks when already connected to this one.  Requires ConnectAutomatically to be true.
            ## @return a boolean
            ## 
            def connect_to_preferred_network
                return @connect_to_preferred_network
            end
            ## 
            ## Sets the connectToPreferredNetwork property value. Specify whether the wifi connection should connect to more preferred networks when already connected to this one.  Requires ConnectAutomatically to be true.
            ## @param value Value to set for the connectToPreferredNetwork property.
            ## @return a void
            ## 
            def connect_to_preferred_network=(value)
                @connect_to_preferred_network = value
            end
            ## 
            ## Gets the connectWhenNetworkNameIsHidden property value. Specify whether the wifi connection should connect automatically even when the SSID is not broadcasting.
            ## @return a boolean
            ## 
            def connect_when_network_name_is_hidden
                return @connect_when_network_name_is_hidden
            end
            ## 
            ## Sets the connectWhenNetworkNameIsHidden property value. Specify whether the wifi connection should connect automatically even when the SSID is not broadcasting.
            ## @param value Value to set for the connectWhenNetworkNameIsHidden property.
            ## @return a void
            ## 
            def connect_when_network_name_is_hidden=(value)
                @connect_when_network_name_is_hidden = value
            end
            ## 
            ## Instantiates a new windowsWifiConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsWifiConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_wifi_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.windowsWifiEnterpriseEAPConfiguration"
                            return WindowsWifiEnterpriseEAPConfiguration.new
                    end
                end
                return WindowsWifiConfiguration.new
            end
            ## 
            ## Gets the forceFIPSCompliance property value. Specify whether to force FIPS compliance.
            ## @return a boolean
            ## 
            def force_f_i_p_s_compliance
                return @force_f_i_p_s_compliance
            end
            ## 
            ## Sets the forceFIPSCompliance property value. Specify whether to force FIPS compliance.
            ## @param value Value to set for the forceFIPSCompliance property.
            ## @return a void
            ## 
            def force_f_i_p_s_compliance=(value)
                @force_f_i_p_s_compliance = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "connectAutomatically" => lambda {|n| @connect_automatically = n.get_boolean_value() },
                    "connectToPreferredNetwork" => lambda {|n| @connect_to_preferred_network = n.get_boolean_value() },
                    "connectWhenNetworkNameIsHidden" => lambda {|n| @connect_when_network_name_is_hidden = n.get_boolean_value() },
                    "forceFIPSCompliance" => lambda {|n| @force_f_i_p_s_compliance = n.get_boolean_value() },
                    "meteredConnectionLimit" => lambda {|n| @metered_connection_limit = n.get_enum_value(MicrosoftGraphBeta::Models::MeteredConnectionLimitType) },
                    "networkName" => lambda {|n| @network_name = n.get_string_value() },
                    "preSharedKey" => lambda {|n| @pre_shared_key = n.get_string_value() },
                    "proxyAutomaticConfigurationUrl" => lambda {|n| @proxy_automatic_configuration_url = n.get_string_value() },
                    "proxyManualAddress" => lambda {|n| @proxy_manual_address = n.get_string_value() },
                    "proxyManualPort" => lambda {|n| @proxy_manual_port = n.get_number_value() },
                    "proxySetting" => lambda {|n| @proxy_setting = n.get_enum_value(MicrosoftGraphBeta::Models::WiFiProxySetting) },
                    "ssid" => lambda {|n| @ssid = n.get_string_value() },
                    "wifiSecurityType" => lambda {|n| @wifi_security_type = n.get_enum_value(MicrosoftGraphBeta::Models::WiFiSecurityType) },
                })
            end
            ## 
            ## Gets the meteredConnectionLimit property value. Specify the metered connection limit type for the wifi connection. Possible values are: unrestricted, fixed, variable.
            ## @return a metered_connection_limit_type
            ## 
            def metered_connection_limit
                return @metered_connection_limit
            end
            ## 
            ## Sets the meteredConnectionLimit property value. Specify the metered connection limit type for the wifi connection. Possible values are: unrestricted, fixed, variable.
            ## @param value Value to set for the meteredConnectionLimit property.
            ## @return a void
            ## 
            def metered_connection_limit=(value)
                @metered_connection_limit = value
            end
            ## 
            ## Gets the networkName property value. Specify the network configuration name.
            ## @return a string
            ## 
            def network_name
                return @network_name
            end
            ## 
            ## Sets the networkName property value. Specify the network configuration name.
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
            ## Gets the proxyAutomaticConfigurationUrl property value. Specify the URL for the proxy server configuration script.
            ## @return a string
            ## 
            def proxy_automatic_configuration_url
                return @proxy_automatic_configuration_url
            end
            ## 
            ## Sets the proxyAutomaticConfigurationUrl property value. Specify the URL for the proxy server configuration script.
            ## @param value Value to set for the proxyAutomaticConfigurationUrl property.
            ## @return a void
            ## 
            def proxy_automatic_configuration_url=(value)
                @proxy_automatic_configuration_url = value
            end
            ## 
            ## Gets the proxyManualAddress property value. Specify the IP address for the proxy server.
            ## @return a string
            ## 
            def proxy_manual_address
                return @proxy_manual_address
            end
            ## 
            ## Sets the proxyManualAddress property value. Specify the IP address for the proxy server.
            ## @param value Value to set for the proxyManualAddress property.
            ## @return a void
            ## 
            def proxy_manual_address=(value)
                @proxy_manual_address = value
            end
            ## 
            ## Gets the proxyManualPort property value. Specify the port for the proxy server.
            ## @return a integer
            ## 
            def proxy_manual_port
                return @proxy_manual_port
            end
            ## 
            ## Sets the proxyManualPort property value. Specify the port for the proxy server.
            ## @param value Value to set for the proxyManualPort property.
            ## @return a void
            ## 
            def proxy_manual_port=(value)
                @proxy_manual_port = value
            end
            ## 
            ## Gets the proxySetting property value. Specify the proxy setting for Wi-Fi configuration. Possible values are: none, manual, automatic.
            ## @return a wi_fi_proxy_setting
            ## 
            def proxy_setting
                return @proxy_setting
            end
            ## 
            ## Sets the proxySetting property value. Specify the proxy setting for Wi-Fi configuration. Possible values are: none, manual, automatic.
            ## @param value Value to set for the proxySetting property.
            ## @return a void
            ## 
            def proxy_setting=(value)
                @proxy_setting = value
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
                writer.write_boolean_value("connectToPreferredNetwork", @connect_to_preferred_network)
                writer.write_boolean_value("connectWhenNetworkNameIsHidden", @connect_when_network_name_is_hidden)
                writer.write_boolean_value("forceFIPSCompliance", @force_f_i_p_s_compliance)
                writer.write_enum_value("meteredConnectionLimit", @metered_connection_limit)
                writer.write_string_value("networkName", @network_name)
                writer.write_string_value("preSharedKey", @pre_shared_key)
                writer.write_string_value("proxyAutomaticConfigurationUrl", @proxy_automatic_configuration_url)
                writer.write_string_value("proxyManualAddress", @proxy_manual_address)
                writer.write_number_value("proxyManualPort", @proxy_manual_port)
                writer.write_enum_value("proxySetting", @proxy_setting)
                writer.write_string_value("ssid", @ssid)
                writer.write_enum_value("wifiSecurityType", @wifi_security_type)
            end
            ## 
            ## Gets the ssid property value. Specify the SSID of the wifi connection.
            ## @return a string
            ## 
            def ssid
                return @ssid
            end
            ## 
            ## Sets the ssid property value. Specify the SSID of the wifi connection.
            ## @param value Value to set for the ssid property.
            ## @return a void
            ## 
            def ssid=(value)
                @ssid = value
            end
            ## 
            ## Gets the wifiSecurityType property value. Specify the Wifi Security Type. Possible values are: open, wpaPersonal, wpaEnterprise, wep, wpa2Personal, wpa2Enterprise.
            ## @return a wi_fi_security_type
            ## 
            def wifi_security_type
                return @wifi_security_type
            end
            ## 
            ## Sets the wifiSecurityType property value. Specify the Wifi Security Type. Possible values are: open, wpaPersonal, wpaEnterprise, wep, wpa2Personal, wpa2Enterprise.
            ## @param value Value to set for the wifiSecurityType property.
            ## @return a void
            ## 
            def wifi_security_type=(value)
                @wifi_security_type = value
            end
        end
    end
end
