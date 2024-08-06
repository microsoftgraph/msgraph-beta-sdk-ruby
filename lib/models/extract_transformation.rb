require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExtractTransformation < MicrosoftGraphBeta::Models::CustomClaimTransformation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The type of extract transformation to apply.
            @type
            ## 
            # The value to be used as part of the transformation.
            @value
            ## 
            # An optional secondary value to be used when dealing with between extract operations.
            @value2
            ## 
            ## Instantiates a new ExtractTransformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.extractTransformation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a extract_transformation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExtractTransformation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "type" => lambda {|n| @type = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_string_value() },
                    "value2" => lambda {|n| @value2 = n.get_string_value() },
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
                writer.write_string_value("type", @type)
                writer.write_string_value("value", @value)
                writer.write_string_value("value2", @value2)
            end
            ## 
            ## Gets the type property value. The type of extract transformation to apply.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type of extract transformation to apply.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the value property value. The value to be used as part of the transformation.
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. The value to be used as part of the transformation.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
            ## 
            ## Gets the value2 property value. An optional secondary value to be used when dealing with between extract operations.
            ## @return a string
            ## 
            def value2
                return @value2
            end
            ## 
            ## Sets the value2 property value. An optional secondary value to be used when dealing with between extract operations.
            ## @param value Value to set for the value2 property.
            ## @return a void
            ## 
            def value2=(value)
                @value2 = value
            end
        end
    end
end
