require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Always On VPN configuration for MacOS and iOS IKEv2
        class AppleVpnAlwaysOnConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Determine whether AirPrint service will be exempt from the always-on VPN connection. Possible values are: forceTrafficViaVPN, allowTrafficOutside, dropTraffic.
            @air_print_exception_action
            ## 
            # Specifies whether traffic from all captive network plugins should be allowed outside the vpn
            @allow_all_captive_network_plugins
            ## 
            # Determines whether traffic from the Websheet app is allowed outside of the VPN
            @allow_captive_web_sheet
            ## 
            # Determines whether all, some, or no non-native captive networking apps are allowed
            @allowed_captive_network_plugins
            ## 
            # Determine whether Cellular service will be exempt from the always-on VPN connection. Possible values are: forceTrafficViaVPN, allowTrafficOutside, dropTraffic.
            @cellular_exception_action
            ## 
            # Specifies how often in seconds to send a network address translation keepalive package through the VPN
            @nat_keep_alive_interval_in_seconds
            ## 
            # Enable hardware offloading of NAT keepalive signals when the device is asleep
            @nat_keep_alive_offload_enable
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The type of tunnels that will be present to the VPN client for configuration
            @tunnel_configuration
            ## 
            # Allow the user to toggle the VPN configuration using the UI
            @user_toggle_enabled
            ## 
            # Determine whether voicemail service will be exempt from the always-on VPN connection. Possible values are: forceTrafficViaVPN, allowTrafficOutside, dropTraffic.
            @voicemail_exception_action
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the airPrintExceptionAction property value. Determine whether AirPrint service will be exempt from the always-on VPN connection. Possible values are: forceTrafficViaVPN, allowTrafficOutside, dropTraffic.
            ## @return a vpn_service_exception_action
            ## 
            def air_print_exception_action
                return @air_print_exception_action
            end
            ## 
            ## Sets the airPrintExceptionAction property value. Determine whether AirPrint service will be exempt from the always-on VPN connection. Possible values are: forceTrafficViaVPN, allowTrafficOutside, dropTraffic.
            ## @param value Value to set for the airPrintExceptionAction property.
            ## @return a void
            ## 
            def air_print_exception_action=(value)
                @air_print_exception_action = value
            end
            ## 
            ## Gets the allowAllCaptiveNetworkPlugins property value. Specifies whether traffic from all captive network plugins should be allowed outside the vpn
            ## @return a boolean
            ## 
            def allow_all_captive_network_plugins
                return @allow_all_captive_network_plugins
            end
            ## 
            ## Sets the allowAllCaptiveNetworkPlugins property value. Specifies whether traffic from all captive network plugins should be allowed outside the vpn
            ## @param value Value to set for the allowAllCaptiveNetworkPlugins property.
            ## @return a void
            ## 
            def allow_all_captive_network_plugins=(value)
                @allow_all_captive_network_plugins = value
            end
            ## 
            ## Gets the allowCaptiveWebSheet property value. Determines whether traffic from the Websheet app is allowed outside of the VPN
            ## @return a boolean
            ## 
            def allow_captive_web_sheet
                return @allow_captive_web_sheet
            end
            ## 
            ## Sets the allowCaptiveWebSheet property value. Determines whether traffic from the Websheet app is allowed outside of the VPN
            ## @param value Value to set for the allowCaptiveWebSheet property.
            ## @return a void
            ## 
            def allow_captive_web_sheet=(value)
                @allow_captive_web_sheet = value
            end
            ## 
            ## Gets the allowedCaptiveNetworkPlugins property value. Determines whether all, some, or no non-native captive networking apps are allowed
            ## @return a specified_captive_network_plugins
            ## 
            def allowed_captive_network_plugins
                return @allowed_captive_network_plugins
            end
            ## 
            ## Sets the allowedCaptiveNetworkPlugins property value. Determines whether all, some, or no non-native captive networking apps are allowed
            ## @param value Value to set for the allowedCaptiveNetworkPlugins property.
            ## @return a void
            ## 
            def allowed_captive_network_plugins=(value)
                @allowed_captive_network_plugins = value
            end
            ## 
            ## Gets the cellularExceptionAction property value. Determine whether Cellular service will be exempt from the always-on VPN connection. Possible values are: forceTrafficViaVPN, allowTrafficOutside, dropTraffic.
            ## @return a vpn_service_exception_action
            ## 
            def cellular_exception_action
                return @cellular_exception_action
            end
            ## 
            ## Sets the cellularExceptionAction property value. Determine whether Cellular service will be exempt from the always-on VPN connection. Possible values are: forceTrafficViaVPN, allowTrafficOutside, dropTraffic.
            ## @param value Value to set for the cellularExceptionAction property.
            ## @return a void
            ## 
            def cellular_exception_action=(value)
                @cellular_exception_action = value
            end
            ## 
            ## Instantiates a new AppleVpnAlwaysOnConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a apple_vpn_always_on_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppleVpnAlwaysOnConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "airPrintExceptionAction" => lambda {|n| @air_print_exception_action = n.get_enum_value(MicrosoftGraphBeta::Models::VpnServiceExceptionAction) },
                    "allowAllCaptiveNetworkPlugins" => lambda {|n| @allow_all_captive_network_plugins = n.get_boolean_value() },
                    "allowCaptiveWebSheet" => lambda {|n| @allow_captive_web_sheet = n.get_boolean_value() },
                    "allowedCaptiveNetworkPlugins" => lambda {|n| @allowed_captive_network_plugins = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SpecifiedCaptiveNetworkPlugins.create_from_discriminator_value(pn) }) },
                    "cellularExceptionAction" => lambda {|n| @cellular_exception_action = n.get_enum_value(MicrosoftGraphBeta::Models::VpnServiceExceptionAction) },
                    "natKeepAliveIntervalInSeconds" => lambda {|n| @nat_keep_alive_interval_in_seconds = n.get_number_value() },
                    "natKeepAliveOffloadEnable" => lambda {|n| @nat_keep_alive_offload_enable = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "tunnelConfiguration" => lambda {|n| @tunnel_configuration = n.get_enum_value(MicrosoftGraphBeta::Models::VpnTunnelConfigurationType) },
                    "userToggleEnabled" => lambda {|n| @user_toggle_enabled = n.get_boolean_value() },
                    "voicemailExceptionAction" => lambda {|n| @voicemail_exception_action = n.get_enum_value(MicrosoftGraphBeta::Models::VpnServiceExceptionAction) },
                }
            end
            ## 
            ## Gets the natKeepAliveIntervalInSeconds property value. Specifies how often in seconds to send a network address translation keepalive package through the VPN
            ## @return a integer
            ## 
            def nat_keep_alive_interval_in_seconds
                return @nat_keep_alive_interval_in_seconds
            end
            ## 
            ## Sets the natKeepAliveIntervalInSeconds property value. Specifies how often in seconds to send a network address translation keepalive package through the VPN
            ## @param value Value to set for the natKeepAliveIntervalInSeconds property.
            ## @return a void
            ## 
            def nat_keep_alive_interval_in_seconds=(value)
                @nat_keep_alive_interval_in_seconds = value
            end
            ## 
            ## Gets the natKeepAliveOffloadEnable property value. Enable hardware offloading of NAT keepalive signals when the device is asleep
            ## @return a boolean
            ## 
            def nat_keep_alive_offload_enable
                return @nat_keep_alive_offload_enable
            end
            ## 
            ## Sets the natKeepAliveOffloadEnable property value. Enable hardware offloading of NAT keepalive signals when the device is asleep
            ## @param value Value to set for the natKeepAliveOffloadEnable property.
            ## @return a void
            ## 
            def nat_keep_alive_offload_enable=(value)
                @nat_keep_alive_offload_enable = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("airPrintExceptionAction", @air_print_exception_action)
                writer.write_boolean_value("allowAllCaptiveNetworkPlugins", @allow_all_captive_network_plugins)
                writer.write_boolean_value("allowCaptiveWebSheet", @allow_captive_web_sheet)
                writer.write_object_value("allowedCaptiveNetworkPlugins", @allowed_captive_network_plugins)
                writer.write_enum_value("cellularExceptionAction", @cellular_exception_action)
                writer.write_number_value("natKeepAliveIntervalInSeconds", @nat_keep_alive_interval_in_seconds)
                writer.write_boolean_value("natKeepAliveOffloadEnable", @nat_keep_alive_offload_enable)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("tunnelConfiguration", @tunnel_configuration)
                writer.write_boolean_value("userToggleEnabled", @user_toggle_enabled)
                writer.write_enum_value("voicemailExceptionAction", @voicemail_exception_action)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tunnelConfiguration property value. The type of tunnels that will be present to the VPN client for configuration
            ## @return a vpn_tunnel_configuration_type
            ## 
            def tunnel_configuration
                return @tunnel_configuration
            end
            ## 
            ## Sets the tunnelConfiguration property value. The type of tunnels that will be present to the VPN client for configuration
            ## @param value Value to set for the tunnelConfiguration property.
            ## @return a void
            ## 
            def tunnel_configuration=(value)
                @tunnel_configuration = value
            end
            ## 
            ## Gets the userToggleEnabled property value. Allow the user to toggle the VPN configuration using the UI
            ## @return a boolean
            ## 
            def user_toggle_enabled
                return @user_toggle_enabled
            end
            ## 
            ## Sets the userToggleEnabled property value. Allow the user to toggle the VPN configuration using the UI
            ## @param value Value to set for the userToggleEnabled property.
            ## @return a void
            ## 
            def user_toggle_enabled=(value)
                @user_toggle_enabled = value
            end
            ## 
            ## Gets the voicemailExceptionAction property value. Determine whether voicemail service will be exempt from the always-on VPN connection. Possible values are: forceTrafficViaVPN, allowTrafficOutside, dropTraffic.
            ## @return a vpn_service_exception_action
            ## 
            def voicemail_exception_action
                return @voicemail_exception_action
            end
            ## 
            ## Sets the voicemailExceptionAction property value. Determine whether voicemail service will be exempt from the always-on VPN connection. Possible values are: forceTrafficViaVPN, allowTrafficOutside, dropTraffic.
            ## @param value Value to set for the voicemailExceptionAction property.
            ## @return a void
            ## 
            def voicemail_exception_action=(value)
                @voicemail_exception_action = value
            end
        end
    end
end
