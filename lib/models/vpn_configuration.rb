require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class VpnConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # VPN Authentication Method.
        @authentication_method
        ## 
        # Connection name displayed to the user.
        @connection_name
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
        ## Instantiates a new VpnConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.vpnConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a vpn_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.androidDeviceOwnerVpnConfiguration"
                        return AndroidDeviceOwnerVpnConfiguration.new
                end
            end
            return VpnConfiguration.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::VpnAuthenticationMethod) },
                "connectionName" => lambda {|n| @connection_name = n.get_string_value() },
                "realm" => lambda {|n| @realm = n.get_string_value() },
                "role" => lambda {|n| @role = n.get_string_value() },
                "servers" => lambda {|n| @servers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VpnServer.create_from_discriminator_value(pn) }) },
            })
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
