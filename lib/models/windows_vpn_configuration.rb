require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WindowsVpnConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Connection name displayed to the user.
        @connection_name
        ## 
        # Custom XML commands that configures the VPN connection. (UTF8 encoded byte array)
        @custom_xml
        ## 
        # List of VPN Servers on the network. Make sure end users can access these network locations. This collection can contain a maximum of 500 elements.
        @servers
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
        ## Instantiates a new WindowsVpnConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsVpnConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_vpn_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.windows10VpnConfiguration"
                        return Windows10VpnConfiguration.new
                    when "#microsoft.graph.windows81VpnConfiguration"
                        return Windows81VpnConfiguration.new
                    when "#microsoft.graph.windowsPhone81VpnConfiguration"
                        return WindowsPhone81VpnConfiguration.new
                end
            end
            return WindowsVpnConfiguration.new
        end
        ## 
        ## Gets the customXml property value. Custom XML commands that configures the VPN connection. (UTF8 encoded byte array)
        ## @return a binary
        ## 
        def custom_xml
            return @custom_xml
        end
        ## 
        ## Sets the customXml property value. Custom XML commands that configures the VPN connection. (UTF8 encoded byte array)
        ## @param value Value to set for the custom_xml property.
        ## @return a void
        ## 
        def custom_xml=(value)
            @custom_xml = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "connectionName" => lambda {|n| @connection_name = n.get_string_value() },
                "customXml" => lambda {|n| @custom_xml = n.get_string_value() },
                "servers" => lambda {|n| @servers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VpnServer.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("connectionName", @connection_name)
            writer.write_object_value("customXml", @custom_xml)
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
