require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # By providing the configurations in this profile you can instruct the Android Work Profile device to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.
        class AndroidWorkProfileVpnConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Whether or not to enable always-on VPN connection.
            @always_on
            ## 
            # If always-on VPN connection is enabled, whether or not to lock network traffic when that VPN is disconnected.
            @always_on_lockdown
            ## 
            # VPN Authentication Method.
            @authentication_method
            ## 
            # Connection name displayed to the user.
            @connection_name
            ## 
            # Android Work Profile VPN connection type.
            @connection_type
            ## 
            # Custom data when connection type is set to Citrix. This collection can contain a maximum of 25 elements.
            @custom_data
            ## 
            # Custom data when connection type is set to Citrix. This collection can contain a maximum of 25 elements.
            @custom_key_value_data
            ## 
            # Fingerprint is a string that will be used to verify the VPN server can be trusted, which is only applicable when connection type is Check Point Capsule VPN.
            @fingerprint
            ## 
            # Identity certificate for client authentication when authentication method is certificate.
            @identity_certificate
            ## 
            # Microsoft Tunnel site ID.
            @microsoft_tunnel_site_id
            ## 
            # Proxy server.
            @proxy_server
            ## 
            # Realm when connection type is set to Pulse Secure.
            @realm
            ## 
            # Role when connection type is set to Pulse Secure.
            @role
            ## 
            # List of VPN Servers on the network. Make sure end users can access these network locations. This collection can contain a maximum of 500 elements.
            @servers
            ## 
            # Targeted mobile apps. This collection can contain a maximum of 500 elements.
            @targeted_mobile_apps
            ## 
            # Targeted App package IDs.
            @targeted_package_ids
            ## 
            ## Gets the alwaysOn property value. Whether or not to enable always-on VPN connection.
            ## @return a boolean
            ## 
            def always_on
                return @always_on
            end
            ## 
            ## Sets the alwaysOn property value. Whether or not to enable always-on VPN connection.
            ## @param value Value to set for the alwaysOn property.
            ## @return a void
            ## 
            def always_on=(value)
                @always_on = value
            end
            ## 
            ## Gets the alwaysOnLockdown property value. If always-on VPN connection is enabled, whether or not to lock network traffic when that VPN is disconnected.
            ## @return a boolean
            ## 
            def always_on_lockdown
                return @always_on_lockdown
            end
            ## 
            ## Sets the alwaysOnLockdown property value. If always-on VPN connection is enabled, whether or not to lock network traffic when that VPN is disconnected.
            ## @param value Value to set for the alwaysOnLockdown property.
            ## @return a void
            ## 
            def always_on_lockdown=(value)
                @always_on_lockdown = value
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
            ## Gets the connectionType property value. Android Work Profile VPN connection type.
            ## @return a android_work_profile_vpn_connection_type
            ## 
            def connection_type
                return @connection_type
            end
            ## 
            ## Sets the connectionType property value. Android Work Profile VPN connection type.
            ## @param value Value to set for the connectionType property.
            ## @return a void
            ## 
            def connection_type=(value)
                @connection_type = value
            end
            ## 
            ## Instantiates a new androidWorkProfileVpnConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidWorkProfileVpnConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_work_profile_vpn_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidWorkProfileVpnConfiguration.new
            end
            ## 
            ## Gets the customData property value. Custom data when connection type is set to Citrix. This collection can contain a maximum of 25 elements.
            ## @return a key_value
            ## 
            def custom_data
                return @custom_data
            end
            ## 
            ## Sets the customData property value. Custom data when connection type is set to Citrix. This collection can contain a maximum of 25 elements.
            ## @param value Value to set for the customData property.
            ## @return a void
            ## 
            def custom_data=(value)
                @custom_data = value
            end
            ## 
            ## Gets the customKeyValueData property value. Custom data when connection type is set to Citrix. This collection can contain a maximum of 25 elements.
            ## @return a key_value_pair
            ## 
            def custom_key_value_data
                return @custom_key_value_data
            end
            ## 
            ## Sets the customKeyValueData property value. Custom data when connection type is set to Citrix. This collection can contain a maximum of 25 elements.
            ## @param value Value to set for the customKeyValueData property.
            ## @return a void
            ## 
            def custom_key_value_data=(value)
                @custom_key_value_data = value
            end
            ## 
            ## Gets the fingerprint property value. Fingerprint is a string that will be used to verify the VPN server can be trusted, which is only applicable when connection type is Check Point Capsule VPN.
            ## @return a string
            ## 
            def fingerprint
                return @fingerprint
            end
            ## 
            ## Sets the fingerprint property value. Fingerprint is a string that will be used to verify the VPN server can be trusted, which is only applicable when connection type is Check Point Capsule VPN.
            ## @param value Value to set for the fingerprint property.
            ## @return a void
            ## 
            def fingerprint=(value)
                @fingerprint = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alwaysOn" => lambda {|n| @always_on = n.get_boolean_value() },
                    "alwaysOnLockdown" => lambda {|n| @always_on_lockdown = n.get_boolean_value() },
                    "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::VpnAuthenticationMethod) },
                    "connectionName" => lambda {|n| @connection_name = n.get_string_value() },
                    "connectionType" => lambda {|n| @connection_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidWorkProfileVpnConnectionType) },
                    "customData" => lambda {|n| @custom_data = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValue.create_from_discriminator_value(pn) }) },
                    "customKeyValueData" => lambda {|n| @custom_key_value_data = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "fingerprint" => lambda {|n| @fingerprint = n.get_string_value() },
                    "identityCertificate" => lambda {|n| @identity_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidWorkProfileCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "microsoftTunnelSiteId" => lambda {|n| @microsoft_tunnel_site_id = n.get_string_value() },
                    "proxyServer" => lambda {|n| @proxy_server = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VpnProxyServer.create_from_discriminator_value(pn) }) },
                    "realm" => lambda {|n| @realm = n.get_string_value() },
                    "role" => lambda {|n| @role = n.get_string_value() },
                    "servers" => lambda {|n| @servers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VpnServer.create_from_discriminator_value(pn) }) },
                    "targetedMobileApps" => lambda {|n| @targeted_mobile_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "targetedPackageIds" => lambda {|n| @targeted_package_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the identityCertificate property value. Identity certificate for client authentication when authentication method is certificate.
            ## @return a android_work_profile_certificate_profile_base
            ## 
            def identity_certificate
                return @identity_certificate
            end
            ## 
            ## Sets the identityCertificate property value. Identity certificate for client authentication when authentication method is certificate.
            ## @param value Value to set for the identityCertificate property.
            ## @return a void
            ## 
            def identity_certificate=(value)
                @identity_certificate = value
            end
            ## 
            ## Gets the microsoftTunnelSiteId property value. Microsoft Tunnel site ID.
            ## @return a string
            ## 
            def microsoft_tunnel_site_id
                return @microsoft_tunnel_site_id
            end
            ## 
            ## Sets the microsoftTunnelSiteId property value. Microsoft Tunnel site ID.
            ## @param value Value to set for the microsoftTunnelSiteId property.
            ## @return a void
            ## 
            def microsoft_tunnel_site_id=(value)
                @microsoft_tunnel_site_id = value
            end
            ## 
            ## Gets the proxyServer property value. Proxy server.
            ## @return a vpn_proxy_server
            ## 
            def proxy_server
                return @proxy_server
            end
            ## 
            ## Sets the proxyServer property value. Proxy server.
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("alwaysOn", @always_on)
                writer.write_boolean_value("alwaysOnLockdown", @always_on_lockdown)
                writer.write_enum_value("authenticationMethod", @authentication_method)
                writer.write_string_value("connectionName", @connection_name)
                writer.write_enum_value("connectionType", @connection_type)
                writer.write_collection_of_object_values("customData", @custom_data)
                writer.write_collection_of_object_values("customKeyValueData", @custom_key_value_data)
                writer.write_string_value("fingerprint", @fingerprint)
                writer.write_object_value("identityCertificate", @identity_certificate)
                writer.write_string_value("microsoftTunnelSiteId", @microsoft_tunnel_site_id)
                writer.write_object_value("proxyServer", @proxy_server)
                writer.write_string_value("realm", @realm)
                writer.write_string_value("role", @role)
                writer.write_collection_of_object_values("servers", @servers)
                writer.write_collection_of_object_values("targetedMobileApps", @targeted_mobile_apps)
                writer.write_collection_of_primitive_values("targetedPackageIds", @targeted_package_ids)
            end
            ## 
            ## Gets the servers property value. List of VPN Servers on the network. Make sure end users can access these network locations. This collection can contain a maximum of 500 elements.
            ## @return a vpn_server
            ## 
            def servers
                return @servers
            end
            ## 
            ## Sets the servers property value. List of VPN Servers on the network. Make sure end users can access these network locations. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the servers property.
            ## @return a void
            ## 
            def servers=(value)
                @servers = value
            end
            ## 
            ## Gets the targetedMobileApps property value. Targeted mobile apps. This collection can contain a maximum of 500 elements.
            ## @return a app_list_item
            ## 
            def targeted_mobile_apps
                return @targeted_mobile_apps
            end
            ## 
            ## Sets the targetedMobileApps property value. Targeted mobile apps. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the targetedMobileApps property.
            ## @return a void
            ## 
            def targeted_mobile_apps=(value)
                @targeted_mobile_apps = value
            end
            ## 
            ## Gets the targetedPackageIds property value. Targeted App package IDs.
            ## @return a string
            ## 
            def targeted_package_ids
                return @targeted_package_ids
            end
            ## 
            ## Sets the targetedPackageIds property value. Targeted App package IDs.
            ## @param value Value to set for the targetedPackageIds property.
            ## @return a void
            ## 
            def targeted_package_ids=(value)
                @targeted_package_ids = value
            end
        end
    end
end
