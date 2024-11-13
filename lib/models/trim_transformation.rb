require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TrimTransformation < MicrosoftGraphBeta::Models::CustomClaimTransformation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The type property
            @type
            ## 
            # The value to be used as part of the transformation.
            @value
            ## 
            ## Instantiates a new TrimTransformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.trimTransformation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a trim_transformation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TrimTransformation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraphBeta::Models::TransformationTrimType) },
                    "value" => lambda {|n| @value = n.get_string_value() },
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
                writer.write_enum_value("type", @type)
                writer.write_string_value("value", @value)
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a transformation_trim_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
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
        end
    end
end
