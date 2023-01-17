require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AppleVpnConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Associated Domains
        @associated_domains
        ## 
        # VPN Authentication Method.
        @authentication_method
        ## 
        # Connection name displayed to the user.
        @connection_name
        ## 
        # Apple VPN connection type.
        @connection_type
        ## 
        # Custom data when connection type is set to Custom VPN. Use this field to enable functionality not supported by Intune, but available in your VPN solution. Contact your VPN vendor to learn how to add these key/value pairs. This collection can contain a maximum of 25 elements.
        @custom_data
        ## 
        # Custom data when connection type is set to Custom VPN. Use this field to enable functionality not supported by Intune, but available in your VPN solution. Contact your VPN vendor to learn how to add these key/value pairs. This collection can contain a maximum of 25 elements.
        @custom_key_value_data
        ## 
        # Toggle to prevent user from disabling automatic VPN in the Settings app
        @disable_on_demand_user_override
        ## 
        # Whether to disconnect after on-demand connection idles
        @disconnect_on_idle
        ## 
        # The length of time in seconds to wait before disconnecting an on-demand connection. Valid values 0 to 65535
        @disconnect_on_idle_timer_in_seconds
        ## 
        # Setting this to true creates Per-App VPN payload which can later be associated with Apps that can trigger this VPN conneciton on the end user's iOS device.
        @enable_per_app
        ## 
        # Send all network traffic through VPN.
        @enable_split_tunneling
        ## 
        # Domains that are accessed through the public internet instead of through VPN, even when per-app VPN is activated
        @excluded_domains
        ## 
        # Identifier provided by VPN vendor when connection type is set to Custom VPN. For example: Cisco AnyConnect uses an identifier of the form com.cisco.anyconnect.applevpn.plugin
        @identifier
        ## 
        # Login group or domain when connection type is set to Dell SonicWALL Mobile Connection.
        @login_group_or_domain
        ## 
        # On-Demand Rules. This collection can contain a maximum of 500 elements.
        @on_demand_rules
        ## 
        # Opt-In to sharing the device's Id to third-party vpn clients for use during network access control validation.
        @opt_in_to_device_id_sharing
        ## 
        # Provider type for per-app VPN. Possible values are: notConfigured, appProxy, packetTunnel.
        @provider_type
        ## 
        # Proxy Server.
        @proxy_server
        ## 
        # Realm when connection type is set to Pulse Secure.
        @realm
        ## 
        # Role when connection type is set to Pulse Secure.
        @role
        ## 
        # Safari domains when this VPN per App setting is enabled. In addition to the apps associated with this VPN, Safari domains specified here will also be able to trigger this VPN connection.
        @safari_domains
        ## 
        # VPN Server definition.
        @server
        ## 
        ## Gets the associatedDomains property value. Associated Domains
        ## @return a string
        ## 
        def associated_domains
            return @associated_domains
        end
        ## 
        ## Sets the associatedDomains property value. Associated Domains
        ## @param value Value to set for the associatedDomains property.
        ## @return a void
        ## 
        def associated_domains=(value)
            @associated_domains = value
        end
        ## 
        ## Gets the authenticationMethod property value. VPN Authentication Method.
        ## @return a vpn_authentication_method
        ## 
        def authentication_method
            return @authentication_method
        end
        ## 
        ## Sets the authenticationMethod property value. VPN Authentication Method.
        ## @param value Value to set for the authenticationMethod property.
        ## @return a void
        ## 
        def authentication_method=(value)
            @authentication_method = value
        end
        ## 
        ## Gets the connectionName property value. Connection name displayed to the user.
        ## @return a string
        ## 
        def connection_name
            return @connection_name
        end
        ## 
        ## Sets the connectionName property value. Connection name displayed to the user.
        ## @param value Value to set for the connectionName property.
        ## @return a void
        ## 
        def connection_name=(value)
            @connection_name = value
        end
        ## 
        ## Gets the connectionType property value. Apple VPN connection type.
        ## @return a apple_vpn_connection_type
        ## 
        def connection_type
            return @connection_type
        end
        ## 
        ## Sets the connectionType property value. Apple VPN connection type.
        ## @param value Value to set for the connectionType property.
        ## @return a void
        ## 
        def connection_type=(value)
            @connection_type = value
        end
        ## 
        ## Instantiates a new AppleVpnConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.appleVpnConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a apple_vpn_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.iosikEv2VpnConfiguration"
                        return IosikEv2VpnConfiguration.new
                    when "#microsoft.graph.iosVpnConfiguration"
                        return IosVpnConfiguration.new
                    when "#microsoft.graph.macOSVpnConfiguration"
                        return MacOSVpnConfiguration.new
                end
            end
            return AppleVpnConfiguration.new
        end
        ## 
        ## Gets the customData property value. Custom data when connection type is set to Custom VPN. Use this field to enable functionality not supported by Intune, but available in your VPN solution. Contact your VPN vendor to learn how to add these key/value pairs. This collection can contain a maximum of 25 elements.
        ## @return a key_value
        ## 
        def custom_data
            return @custom_data
        end
        ## 
        ## Sets the customData property value. Custom data when connection type is set to Custom VPN. Use this field to enable functionality not supported by Intune, but available in your VPN solution. Contact your VPN vendor to learn how to add these key/value pairs. This collection can contain a maximum of 25 elements.
        ## @param value Value to set for the customData property.
        ## @return a void
        ## 
        def custom_data=(value)
            @custom_data = value
        end
        ## 
        ## Gets the customKeyValueData property value. Custom data when connection type is set to Custom VPN. Use this field to enable functionality not supported by Intune, but available in your VPN solution. Contact your VPN vendor to learn how to add these key/value pairs. This collection can contain a maximum of 25 elements.
        ## @return a key_value_pair
        ## 
        def custom_key_value_data
            return @custom_key_value_data
        end
        ## 
        ## Sets the customKeyValueData property value. Custom data when connection type is set to Custom VPN. Use this field to enable functionality not supported by Intune, but available in your VPN solution. Contact your VPN vendor to learn how to add these key/value pairs. This collection can contain a maximum of 25 elements.
        ## @param value Value to set for the customKeyValueData property.
        ## @return a void
        ## 
        def custom_key_value_data=(value)
            @custom_key_value_data = value
        end
        ## 
        ## Gets the disableOnDemandUserOverride property value. Toggle to prevent user from disabling automatic VPN in the Settings app
        ## @return a boolean
        ## 
        def disable_on_demand_user_override
            return @disable_on_demand_user_override
        end
        ## 
        ## Sets the disableOnDemandUserOverride property value. Toggle to prevent user from disabling automatic VPN in the Settings app
        ## @param value Value to set for the disableOnDemandUserOverride property.
        ## @return a void
        ## 
        def disable_on_demand_user_override=(value)
            @disable_on_demand_user_override = value
        end
        ## 
        ## Gets the disconnectOnIdle property value. Whether to disconnect after on-demand connection idles
        ## @return a boolean
        ## 
        def disconnect_on_idle
            return @disconnect_on_idle
        end
        ## 
        ## Sets the disconnectOnIdle property value. Whether to disconnect after on-demand connection idles
        ## @param value Value to set for the disconnectOnIdle property.
        ## @return a void
        ## 
        def disconnect_on_idle=(value)
            @disconnect_on_idle = value
        end
        ## 
        ## Gets the disconnectOnIdleTimerInSeconds property value. The length of time in seconds to wait before disconnecting an on-demand connection. Valid values 0 to 65535
        ## @return a integer
        ## 
        def disconnect_on_idle_timer_in_seconds
            return @disconnect_on_idle_timer_in_seconds
        end
        ## 
        ## Sets the disconnectOnIdleTimerInSeconds property value. The length of time in seconds to wait before disconnecting an on-demand connection. Valid values 0 to 65535
        ## @param value Value to set for the disconnectOnIdleTimerInSeconds property.
        ## @return a void
        ## 
        def disconnect_on_idle_timer_in_seconds=(value)
            @disconnect_on_idle_timer_in_seconds = value
        end
        ## 
        ## Gets the enablePerApp property value. Setting this to true creates Per-App VPN payload which can later be associated with Apps that can trigger this VPN conneciton on the end user's iOS device.
        ## @return a boolean
        ## 
        def enable_per_app
            return @enable_per_app
        end
        ## 
        ## Sets the enablePerApp property value. Setting this to true creates Per-App VPN payload which can later be associated with Apps that can trigger this VPN conneciton on the end user's iOS device.
        ## @param value Value to set for the enablePerApp property.
        ## @return a void
        ## 
        def enable_per_app=(value)
            @enable_per_app = value
        end
        ## 
        ## Gets the enableSplitTunneling property value. Send all network traffic through VPN.
        ## @return a boolean
        ## 
        def enable_split_tunneling
            return @enable_split_tunneling
        end
        ## 
        ## Sets the enableSplitTunneling property value. Send all network traffic through VPN.
        ## @param value Value to set for the enableSplitTunneling property.
        ## @return a void
        ## 
        def enable_split_tunneling=(value)
            @enable_split_tunneling = value
        end
        ## 
        ## Gets the excludedDomains property value. Domains that are accessed through the public internet instead of through VPN, even when per-app VPN is activated
        ## @return a string
        ## 
        def excluded_domains
            return @excluded_domains
        end
        ## 
        ## Sets the excludedDomains property value. Domains that are accessed through the public internet instead of through VPN, even when per-app VPN is activated
        ## @param value Value to set for the excludedDomains property.
        ## @return a void
        ## 
        def excluded_domains=(value)
            @excluded_domains = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "associatedDomains" => lambda {|n| @associated_domains = n.get_collection_of_primitive_values(String) },
                "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::VpnAuthenticationMethod) },
                "connectionName" => lambda {|n| @connection_name = n.get_string_value() },
                "connectionType" => lambda {|n| @connection_type = n.get_enum_value(MicrosoftGraphBeta::Models::AppleVpnConnectionType) },
                "customData" => lambda {|n| @custom_data = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValue.create_from_discriminator_value(pn) }) },
                "customKeyValueData" => lambda {|n| @custom_key_value_data = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                "disableOnDemandUserOverride" => lambda {|n| @disable_on_demand_user_override = n.get_boolean_value() },
                "disconnectOnIdle" => lambda {|n| @disconnect_on_idle = n.get_boolean_value() },
                "disconnectOnIdleTimerInSeconds" => lambda {|n| @disconnect_on_idle_timer_in_seconds = n.get_number_value() },
                "enablePerApp" => lambda {|n| @enable_per_app = n.get_boolean_value() },
                "enableSplitTunneling" => lambda {|n| @enable_split_tunneling = n.get_boolean_value() },
                "excludedDomains" => lambda {|n| @excluded_domains = n.get_collection_of_primitive_values(String) },
                "identifier" => lambda {|n| @identifier = n.get_string_value() },
                "loginGroupOrDomain" => lambda {|n| @login_group_or_domain = n.get_string_value() },
                "onDemandRules" => lambda {|n| @on_demand_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VpnOnDemandRule.create_from_discriminator_value(pn) }) },
                "optInToDeviceIdSharing" => lambda {|n| @opt_in_to_device_id_sharing = n.get_boolean_value() },
                "providerType" => lambda {|n| @provider_type = n.get_enum_value(MicrosoftGraphBeta::Models::VpnProviderType) },
                "proxyServer" => lambda {|n| @proxy_server = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VpnProxyServer.create_from_discriminator_value(pn) }) },
                "realm" => lambda {|n| @realm = n.get_string_value() },
                "role" => lambda {|n| @role = n.get_string_value() },
                "safariDomains" => lambda {|n| @safari_domains = n.get_collection_of_primitive_values(String) },
                "server" => lambda {|n| @server = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VpnServer.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the identifier property value. Identifier provided by VPN vendor when connection type is set to Custom VPN. For example: Cisco AnyConnect uses an identifier of the form com.cisco.anyconnect.applevpn.plugin
        ## @return a string
        ## 
        def identifier
            return @identifier
        end
        ## 
        ## Sets the identifier property value. Identifier provided by VPN vendor when connection type is set to Custom VPN. For example: Cisco AnyConnect uses an identifier of the form com.cisco.anyconnect.applevpn.plugin
        ## @param value Value to set for the identifier property.
        ## @return a void
        ## 
        def identifier=(value)
            @identifier = value
        end
        ## 
        ## Gets the loginGroupOrDomain property value. Login group or domain when connection type is set to Dell SonicWALL Mobile Connection.
        ## @return a string
        ## 
        def login_group_or_domain
            return @login_group_or_domain
        end
        ## 
        ## Sets the loginGroupOrDomain property value. Login group or domain when connection type is set to Dell SonicWALL Mobile Connection.
        ## @param value Value to set for the loginGroupOrDomain property.
        ## @return a void
        ## 
        def login_group_or_domain=(value)
            @login_group_or_domain = value
        end
        ## 
        ## Gets the onDemandRules property value. On-Demand Rules. This collection can contain a maximum of 500 elements.
        ## @return a vpn_on_demand_rule
        ## 
        def on_demand_rules
            return @on_demand_rules
        end
        ## 
        ## Sets the onDemandRules property value. On-Demand Rules. This collection can contain a maximum of 500 elements.
        ## @param value Value to set for the onDemandRules property.
        ## @return a void
        ## 
        def on_demand_rules=(value)
            @on_demand_rules = value
        end
        ## 
        ## Gets the optInToDeviceIdSharing property value. Opt-In to sharing the device's Id to third-party vpn clients for use during network access control validation.
        ## @return a boolean
        ## 
        def opt_in_to_device_id_sharing
            return @opt_in_to_device_id_sharing
        end
        ## 
        ## Sets the optInToDeviceIdSharing property value. Opt-In to sharing the device's Id to third-party vpn clients for use during network access control validation.
        ## @param value Value to set for the optInToDeviceIdSharing property.
        ## @return a void
        ## 
        def opt_in_to_device_id_sharing=(value)
            @opt_in_to_device_id_sharing = value
        end
        ## 
        ## Gets the providerType property value. Provider type for per-app VPN. Possible values are: notConfigured, appProxy, packetTunnel.
        ## @return a vpn_provider_type
        ## 
        def provider_type
            return @provider_type
        end
        ## 
        ## Sets the providerType property value. Provider type for per-app VPN. Possible values are: notConfigured, appProxy, packetTunnel.
        ## @param value Value to set for the providerType property.
        ## @return a void
        ## 
        def provider_type=(value)
            @provider_type = value
        end
        ## 
        ## Gets the proxyServer property value. Proxy Server.
        ## @return a vpn_proxy_server
        ## 
        def proxy_server
            return @proxy_server
        end
        ## 
        ## Sets the proxyServer property value. Proxy Server.
        ## @param value Value to set for the proxyServer property.
        ## @return a void
        ## 
        def proxy_server=(value)
            @proxy_server = value
        end
        ## 
        ## Gets the realm property value. Realm when connection type is set to Pulse Secure.
        ## @return a string
        ## 
        def realm
            return @realm
        end
        ## 
        ## Sets the realm property value. Realm when connection type is set to Pulse Secure.
        ## @param value Value to set for the realm property.
        ## @return a void
        ## 
        def realm=(value)
            @realm = value
        end
        ## 
        ## Gets the role property value. Role when connection type is set to Pulse Secure.
        ## @return a string
        ## 
        def role
            return @role
        end
        ## 
        ## Sets the role property value. Role when connection type is set to Pulse Secure.
        ## @param value Value to set for the role property.
        ## @return a void
        ## 
        def role=(value)
            @role = value
        end
        ## 
        ## Gets the safariDomains property value. Safari domains when this VPN per App setting is enabled. In addition to the apps associated with this VPN, Safari domains specified here will also be able to trigger this VPN connection.
        ## @return a string
        ## 
        def safari_domains
            return @safari_domains
        end
        ## 
        ## Sets the safariDomains property value. Safari domains when this VPN per App setting is enabled. In addition to the apps associated with this VPN, Safari domains specified here will also be able to trigger this VPN connection.
        ## @param value Value to set for the safariDomains property.
        ## @return a void
        ## 
        def safari_domains=(value)
            @safari_domains = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_primitive_values("associatedDomains", @associated_domains)
            writer.write_enum_value("authenticationMethod", @authentication_method)
            writer.write_string_value("connectionName", @connection_name)
            writer.write_enum_value("connectionType", @connection_type)
            writer.write_collection_of_object_values("customData", @custom_data)
            writer.write_collection_of_object_values("customKeyValueData", @custom_key_value_data)
            writer.write_boolean_value("disableOnDemandUserOverride", @disable_on_demand_user_override)
            writer.write_boolean_value("disconnectOnIdle", @disconnect_on_idle)
            writer.write_number_value("disconnectOnIdleTimerInSeconds", @disconnect_on_idle_timer_in_seconds)
            writer.write_boolean_value("enablePerApp", @enable_per_app)
            writer.write_boolean_value("enableSplitTunneling", @enable_split_tunneling)
            writer.write_collection_of_primitive_values("excludedDomains", @excluded_domains)
            writer.write_string_value("identifier", @identifier)
            writer.write_string_value("loginGroupOrDomain", @login_group_or_domain)
            writer.write_collection_of_object_values("onDemandRules", @on_demand_rules)
            writer.write_boolean_value("optInToDeviceIdSharing", @opt_in_to_device_id_sharing)
            writer.write_enum_value("providerType", @provider_type)
            writer.write_object_value("proxyServer", @proxy_server)
            writer.write_string_value("realm", @realm)
            writer.write_string_value("role", @role)
            writer.write_collection_of_primitive_values("safariDomains", @safari_domains)
            writer.write_object_value("server", @server)
        end
        ## 
        ## Gets the server property value. VPN Server definition.
        ## @return a vpn_server
        ## 
        def server
            return @server
        end
        ## 
        ## Sets the server property value. VPN Server definition.
        ## @param value Value to set for the server property.
        ## @return a void
        ## 
        def server=(value)
            @server = value
        end
    end
end
