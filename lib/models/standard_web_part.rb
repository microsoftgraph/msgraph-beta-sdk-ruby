require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class StandardWebPart < MicrosoftGraphBeta::Models::WebPart
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Data of the webPart.
            @data
            ## 
            # A Guid which indicates the type of the webParts
            @web_part_type
            ## 
            ## Instantiates a new StandardWebPart and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.standardWebPart"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a standard_web_part
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return StandardWebPart.new
            end
            ## 
            ## Gets the data property value. Data of the webPart.
            ## @return a web_part_data
            ## 
            def data
                return @data
            end
            ## 
            ## Sets the data property value. Data of the webPart.
            ## @param value Value to set for the data property.
            ## @return a void
            ## 
            def data=(value)
                @data = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "data" => lambda {|n| @data = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WebPartData.create_from_discriminator_value(pn) }) },
                    "webPartType" => lambda {|n| @web_part_type = n.get_string_value() },
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
                writer.write_object_value("data", @data)
                writer.write_string_value("webPartType", @web_part_type)
            end
            ## 
            ## Gets the webPartType property value. A Guid which indicates the type of the webParts
            ## @return a string
            ## 
            def web_part_type
                return @web_part_type
            end
            ## 
            ## Sets the webPartType property value. A Guid which indicates the type of the webParts
            ## @param value Value to set for the web_part_type property.
            ## @return a void
            ## 
            def web_part_type=(value)
                @web_part_type = value
            end
        end
    end
end
