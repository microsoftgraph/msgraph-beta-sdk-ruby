require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TransformationAttribute
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The attribute property
            @attribute
            ## 
            # The OdataType property
            @odata_type
            ## 
            # This flag is only relevant in the case where the attribute is multivalued. By default, transformations are only applied to the first element in a multi-valued claim, however setting this flag to true ensures the transformation is applied to all values, resulting in a multivalued output.
            @treat_as_multi_value
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
            ## Gets the attribute property value. The attribute property
            ## @return a custom_claim_attribute_base
            ## 
            def attribute
                return @attribute
            end
            ## 
            ## Sets the attribute property value. The attribute property
            ## @param value Value to set for the attribute property.
            ## @return a void
            ## 
            def attribute=(value)
                @attribute = value
            end
            ## 
            ## Instantiates a new TransformationAttribute and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a transformation_attribute
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TransformationAttribute.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attribute" => lambda {|n| @attribute = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CustomClaimAttributeBase.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "treatAsMultiValue" => lambda {|n| @treat_as_multi_value = n.get_boolean_value() },
                }
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
                writer.write_object_value("attribute", @attribute)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("treatAsMultiValue", @treat_as_multi_value)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the treatAsMultiValue property value. This flag is only relevant in the case where the attribute is multivalued. By default, transformations are only applied to the first element in a multi-valued claim, however setting this flag to true ensures the transformation is applied to all values, resulting in a multivalued output.
            ## @return a boolean
            ## 
            def treat_as_multi_value
                return @treat_as_multi_value
            end
            ## 
            ## Sets the treatAsMultiValue property value. This flag is only relevant in the case where the attribute is multivalued. By default, transformations are only applied to the first element in a multi-valued claim, however setting this flag to true ensures the transformation is applied to all values, resulting in a multivalued output.
            ## @param value Value to set for the treatAsMultiValue property.
            ## @return a void
            ## 
            def treat_as_multi_value=(value)
                @treat_as_multi_value = value
            end
        end
    end
end
