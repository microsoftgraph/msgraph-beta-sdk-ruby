require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class JoinTransformation < MicrosoftGraphBeta::Models::CustomClaimTransformation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The input2 property
            @input2
            ## 
            # The separator property
            @separator
            ## 
            ## Instantiates a new JoinTransformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.joinTransformation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a join_transformation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return JoinTransformation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "input2" => lambda {|n| @input2 = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TransformationAttribute.create_from_discriminator_value(pn) }) },
                    "separator" => lambda {|n| @separator = n.get_string_value() },
                })
            end
            ## 
            ## Gets the input2 property value. The input2 property
            ## @return a transformation_attribute
            ## 
            def input2
                return @input2
            end
            ## 
            ## Sets the input2 property value. The input2 property
            ## @param value Value to set for the input2 property.
            ## @return a void
            ## 
            def input2=(value)
                @input2 = value
            end
            ## 
            ## Gets the separator property value. The separator property
            ## @return a string
            ## 
            def separator
                return @separator
            end
            ## 
            ## Sets the separator property value. The separator property
            ## @param value Value to set for the separator property.
            ## @return a void
            ## 
            def separator=(value)
                @separator = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("input2", @input2)
                writer.write_string_value("separator", @separator)
            end
        end
    end
end
