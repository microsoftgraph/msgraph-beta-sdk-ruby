require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EnumeratedInboundPorts < MicrosoftGraphBeta::Models::InboundPorts
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of ports that allow inbound traffic.
            @ports
            ## 
            ## Instantiates a new EnumeratedInboundPorts and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.enumeratedInboundPorts"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a enumerated_inbound_ports
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EnumeratedInboundPorts.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "ports" => lambda {|n| @ports = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the ports property value. Collection of ports that allow inbound traffic.
            ## @return a string
            ## 
            def ports
                return @ports
            end
            ## 
            ## Sets the ports property value. Collection of ports that allow inbound traffic.
            ## @param value Value to set for the ports property.
            ## @return a void
            ## 
            def ports=(value)
                @ports = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("ports", @ports)
            end
        end
    end
end
