require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IpApplicationSegment < MicrosoftGraphBeta::Models::ApplicationSegment
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The destinationHost property
            @destination_host
            ## 
            # The port property
            @port
            ## 
            # The ports property
            @ports
            ## 
            ## Instantiates a new ipApplicationSegment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.ipApplicationSegment"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ip_application_segment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IpApplicationSegment.new
            end
            ## 
            ## Gets the destinationHost property value. The destinationHost property
            ## @return a string
            ## 
            def destination_host
                return @destination_host
            end
            ## 
            ## Sets the destinationHost property value. The destinationHost property
            ## @param value Value to set for the destination_host property.
            ## @return a void
            ## 
            def destination_host=(value)
                @destination_host = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "destinationHost" => lambda {|n| @destination_host = n.get_string_value() },
                    "port" => lambda {|n| @port = n.get_number_value() },
                    "ports" => lambda {|n| @ports = n.get_collection_of_primitive_values(String) },
                })
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
            ## Gets the ports property value. The ports property
            ## @return a string
            ## 
            def ports
                return @ports
            end
            ## 
            ## Sets the ports property value. The ports property
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
                writer.write_string_value("destinationHost", @destination_host)
                writer.write_number_value("port", @port)
                writer.write_collection_of_primitive_values("ports", @ports)
            end
        end
    end
end
