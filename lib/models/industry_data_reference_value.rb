require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './industry_data/industry_data'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataReferenceValue
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The code of the desired referenceDefinition entry.
            @code
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The value property
            @value
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the code property value. The code of the desired referenceDefinition entry.
            ## @return a string
            ## 
            def code
                return @code
            end
            ## 
            ## Sets the code property value. The code of the desired referenceDefinition entry.
            ## @param value Value to set for the code property.
            ## @return a void
            ## 
            def code=(value)
                @code = value
            end
            ## 
            ## Instantiates a new referenceValue and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_reference_value
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.industryData.identifierTypeReferenceValue"
                            return IndustryDataIdentifierTypeReferenceValue.new
                        when "#microsoft.graph.industryData.roleReferenceValue"
                            return IndustryDataRoleReferenceValue.new
                        when "#microsoft.graph.industryData.userMatchTargetReferenceValue"
                            return IndustryDataUserMatchTargetReferenceValue.new
                        when "#microsoft.graph.industryData.yearReferenceValue"
                            return IndustryDataYearReferenceValue.new
                    end
                end
                return IndustryDataReferenceValue.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "code" => lambda {|n| @code = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataReferenceDefinition.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("code", @code)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("value", @value)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the value property value. The value property
            ## @return a industry_data_reference_definition
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. The value property
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
