require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomClaimConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The attribute property
            @attribute
            ## 
            # The condition property
            @condition
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The transformations property
            @transformations
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
            ## Gets the condition property value. The condition property
            ## @return a custom_claim_condition_base
            ## 
            def condition
                return @condition
            end
            ## 
            ## Sets the condition property value. The condition property
            ## @param value Value to set for the condition property.
            ## @return a void
            ## 
            def condition=(value)
                @condition = value
            end
            ## 
            ## Instantiates a new CustomClaimConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_claim_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomClaimConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attribute" => lambda {|n| @attribute = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CustomClaimAttributeBase.create_from_discriminator_value(pn) }) },
                    "condition" => lambda {|n| @condition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CustomClaimConditionBase.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "transformations" => lambda {|n| @transformations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomClaimTransformation.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("condition", @condition)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("transformations", @transformations)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the transformations property value. The transformations property
            ## @return a custom_claim_transformation
            ## 
            def transformations
                return @transformations
            end
            ## 
            ## Sets the transformations property value. The transformations property
            ## @param value Value to set for the transformations property.
            ## @return a void
            ## 
            def transformations=(value)
                @transformations = value
            end
        end
    end
end
