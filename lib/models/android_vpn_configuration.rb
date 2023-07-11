require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # By providing the configurations in this profile you can instruct the Android device to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.
        class AndroidVpnConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # VPN Authentication Method.
            @authentication_method
            ## 
            # Connection name displayed to the user.
            @connection_name
            ## 
            # Android VPN connection type.
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
            # Realm when connection type is set to Pulse Secure.
            @realm
            ## 
            # Role when connection type is set to Pulse Secure.
            @role
            ## 
            # List of VPN Servers on the network. Make sure end users can access these network locations. This collection can contain a maximum of 500 elements.
            @servers
            ## 
            ## Gets the authenticationMethod property value. VPN Authentication Method.
            ## @return a vpn_authentication_method
            ## 
            def authentication_method
                return @authentication_method
            end
            ## 
            ## Sets the authenticationMethod property value. VPN Authentication Method.
            ## @param value Value to set for the authentication_method property.
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
            ## @param value Value to set for the connection_name property.
            ## @return a void
            ## 
            def connection_name=(value)
                @connection_name = value
            end
            ## 
            ## Gets the connectionType property value. Android VPN connection type.
            ## @return a android_vpn_connection_type
            ## 
            def connection_type
                return @connection_type
            end
            ## 
            ## Sets the connectionType property value. Android VPN connection type.
            ## @param value Value to set for the connection_type property.
            ## @return a void
            ## 
            def connection_type=(value)
                @connection_type = value
            end
            ## 
            ## Instantiates a new androidVpnConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidVpnConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_vpn_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidVpnConfiguration.new
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
            ## @param value Value to set for the custom_data property.
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
            ## @param value Value to set for the custom_key_value_data property.
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
                    "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::VpnAuthenticationMethod) },
                    "connectionName" => lambda {|n| @connection_name = n.get_string_value() },
                    "connectionType" => lambda {|n| @connection_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidVpnConnectionType) },
                    "customData" => lambda {|n| @custom_data = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValue.create_from_discriminator_value(pn) }) },
                    "customKeyValueData" => lambda {|n| @custom_key_value_data = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "fingerprint" => lambda {|n| @fingerprint = n.get_string_value() },
                    "identityCertificate" => lambda {|n| @identity_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "realm" => lambda {|n| @realm = n.get_string_value() },
                    "role" => lambda {|n| @role = n.get_string_value() },
                    "servers" => lambda {|n| @servers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VpnServer.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the identityCertificate property value. Identity certificate for client authentication when authentication method is certificate.
            ## @return a android_certificate_profile_base
            ## 
            def identity_certificate
                return @identity_certificate
            end
            ## 
            ## Sets the identityCertificate property value. Identity certificate for client authentication when authentication method is certificate.
            ## @param value Value to set for the identity_certificate property.
            ## @return a void
            ## 
            def identity_certificate=(value)
                @identity_certificate = value
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
                writer.write_enum_value("authenticationMethod", @authentication_method)
                writer.write_string_value("connectionName", @connection_name)
                writer.write_enum_value("connectionType", @connection_type)
                writer.write_collection_of_object_values("customData", @custom_data)
                writer.write_collection_of_object_values("customKeyValueData", @custom_key_value_data)
                writer.write_string_value("fingerprint", @fingerprint)
                writer.write_object_value("identityCertificate", @identity_certificate)
                writer.write_string_value("realm", @realm)
                writer.write_string_value("role", @role)
                writer.write_collection_of_object_values("servers", @servers)
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
        end
    end
end
