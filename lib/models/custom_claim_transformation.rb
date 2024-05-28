require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomClaimTransformation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The input property
            @input
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new CustomClaimTransformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_claim_transformation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.containsTransformation"
                            return ContainsTransformation.new
                        when "#microsoft.graph.endsWithTransformation"
                            return EndsWithTransformation.new
                        when "#microsoft.graph.extractAlphaTransformation"
                            return ExtractAlphaTransformation.new
                        when "#microsoft.graph.extractMailPrefixTransformation"
                            return ExtractMailPrefixTransformation.new
                        when "#microsoft.graph.extractNumberTransformation"
                            return ExtractNumberTransformation.new
                        when "#microsoft.graph.extractTransformation"
                            return ExtractTransformation.new
                        when "#microsoft.graph.ifEmptyTransformation"
                            return IfEmptyTransformation.new
                        when "#microsoft.graph.ifNotEmptyTransformation"
                            return IfNotEmptyTransformation.new
                        when "#microsoft.graph.joinTransformation"
                            return JoinTransformation.new
                        when "#microsoft.graph.regexReplaceTransformation"
                            return RegexReplaceTransformation.new
                        when "#microsoft.graph.startsWithTransformation"
                            return StartsWithTransformation.new
                        when "#microsoft.graph.substringTransformation"
                            return SubstringTransformation.new
                        when "#microsoft.graph.toLowercaseTransformation"
                            return ToLowercaseTransformation.new
                        when "#microsoft.graph.toUppercaseTransformation"
                            return ToUppercaseTransformation.new
                        when "#microsoft.graph.trimTransformation"
                            return TrimTransformation.new
                    end
                end
                return CustomClaimTransformation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "input" => lambda {|n| @input = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TransformationAttribute.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the input property value. The input property
            ## @return a transformation_attribute
            ## 
            def input
                return @input
            end
            ## 
            ## Sets the input property value. The input property
            ## @param value Value to set for the input property.
            ## @return a void
            ## 
            def input=(value)
                @input = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("input", @input)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
