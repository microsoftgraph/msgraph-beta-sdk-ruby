require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessRelatedDestination < MicrosoftGraphBeta::Models::NetworkaccessRelatedResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The fqdn property
            @fqdn
            ## 
            # The ip property
            @ip
            ## 
            # The networkingProtocol property
            @networking_protocol
            ## 
            # The port property
            @port
            ## 
            ## Instantiates a new NetworkaccessRelatedDestination and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.relatedDestination"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_related_destination
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessRelatedDestination.new
            end
            ## 
            ## Gets the fqdn property value. The fqdn property
            ## @return a string
            ## 
            def fqdn
                return @fqdn
            end
            ## 
            ## Sets the fqdn property value. The fqdn property
            ## @param value Value to set for the fqdn property.
            ## @return a void
            ## 
            def fqdn=(value)
                @fqdn = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "fqdn" => lambda {|n| @fqdn = n.get_string_value() },
                    "ip" => lambda {|n| @ip = n.get_string_value() },
                    "networkingProtocol" => lambda {|n| @networking_protocol = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessNetworkingProtocol) },
                    "port" => lambda {|n| @port = n.get_number_value() },
                })
            end
            ## 
            ## Gets the ip property value. The ip property
            ## @return a string
            ## 
            def ip
                return @ip
            end
            ## 
            ## Sets the ip property value. The ip property
            ## @param value Value to set for the ip property.
            ## @return a void
            ## 
            def ip=(value)
                @ip = value
            end
            ## 
            ## Gets the networkingProtocol property value. The networkingProtocol property
            ## @return a networkaccess_networking_protocol
            ## 
            def networking_protocol
                return @networking_protocol
            end
            ## 
            ## Sets the networkingProtocol property value. The networkingProtocol property
            ## @param value Value to set for the networkingProtocol property.
            ## @return a void
            ## 
            def networking_protocol=(value)
                @networking_protocol = value
            end
            ## 
            ## Gets the port property value. The port property
            ## @return a integer
            ## 
            def port
                return @port
            end
            ## 
            ## Sets the port property value. The port property
            ## @param value Value to set for the port property.
            ## @return a void
            ## 
            def port=(value)
                @port = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("fqdn", @fqdn)
                writer.write_string_value("ip", @ip)
                writer.write_enum_value("networkingProtocol", @networking_protocol)
                writer.write_number_value("port", @port)
            end
        end
    end
end
