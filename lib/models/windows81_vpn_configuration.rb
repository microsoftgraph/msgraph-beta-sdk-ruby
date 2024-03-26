require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # By providing the configurations in this profile you can instruct the Windows 8.1 (and later) devices to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.
        class Windows81VpnConfiguration < MicrosoftGraphBeta::Models::WindowsVpnConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Value indicating whether this policy only applies to Windows 8.1. This property is read-only.
            @apply_only_to_windows81
            ## 
            # Windows VPN connection type.
            @connection_type
            ## 
            # Enable split tunneling for the VPN.
            @enable_split_tunneling
            ## 
            # Login group or domain when connection type is set to Dell SonicWALL Mobile Connection.
            @login_group_or_domain
            ## 
            # Proxy Server.
            @proxy_server
            ## 
            ## Gets the applyOnlyToWindows81 property value. Value indicating whether this policy only applies to Windows 8.1. This property is read-only.
            ## @return a boolean
            ## 
            def apply_only_to_windows81
                return @apply_only_to_windows81
            end
            ## 
            ## Sets the applyOnlyToWindows81 property value. Value indicating whether this policy only applies to Windows 8.1. This property is read-only.
            ## @param value Value to set for the applyOnlyToWindows81 property.
            ## @return a void
            ## 
            def apply_only_to_windows81=(value)
                @apply_only_to_windows81 = value
            end
            ## 
            ## Gets the connectionType property value. Windows VPN connection type.
            ## @return a windows_vpn_connection_type
            ## 
            def connection_type
                return @connection_type
            end
            ## 
            ## Sets the connectionType property value. Windows VPN connection type.
            ## @param value Value to set for the connectionType property.
            ## @return a void
            ## 
            def connection_type=(value)
                @connection_type = value
            end
            ## 
            ## Instantiates a new Windows81VpnConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows81VpnConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows81_vpn_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.windowsPhone81VpnConfiguration"
                            return WindowsPhone81VpnConfiguration.new
                    end
                end
                return Windows81VpnConfiguration.new
            end
            ## 
            ## Gets the enableSplitTunneling property value. Enable split tunneling for the VPN.
            ## @return a boolean
            ## 
            def enable_split_tunneling
                return @enable_split_tunneling
            end
            ## 
            ## Sets the enableSplitTunneling property value. Enable split tunneling for the VPN.
            ## @param value Value to set for the enableSplitTunneling property.
            ## @return a void
            ## 
            def enable_split_tunneling=(value)
                @enable_split_tunneling = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applyOnlyToWindows81" => lambda {|n| @apply_only_to_windows81 = n.get_boolean_value() },
                    "connectionType" => lambda {|n| @connection_type = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsVpnConnectionType) },
                    "enableSplitTunneling" => lambda {|n| @enable_split_tunneling = n.get_boolean_value() },
                    "loginGroupOrDomain" => lambda {|n| @login_group_or_domain = n.get_string_value() },
                    "proxyServer" => lambda {|n| @proxy_server = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Windows81VpnProxyServer.create_from_discriminator_value(pn) }) },
                })
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
            ## Gets the proxyServer property value. Proxy Server.
            ## @return a windows81_vpn_proxy_server
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("connectionType", @connection_type)
                writer.write_boolean_value("enableSplitTunneling", @enable_split_tunneling)
                writer.write_string_value("loginGroupOrDomain", @login_group_or_domain)
                writer.write_object_value("proxyServer", @proxy_server)
            end
        end
    end
end
