require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ClassificationResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The confidence level, 0 to 100, of the result.
            @confidence_level
            ## 
            # The number of instances of the specific information type in the input.
            @count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The GUID of the discovered sensitive information type.
            @sensitive_type_id
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
            ## Gets the confidenceLevel property value. The confidence level, 0 to 100, of the result.
            ## @return a integer
            ## 
            def confidence_level
                return @confidence_level
            end
            ## 
            ## Sets the confidenceLevel property value. The confidence level, 0 to 100, of the result.
            ## @param value Value to set for the confidenceLevel property.
            ## @return a void
            ## 
            def confidence_level=(value)
                @confidence_level = value
            end
            ## 
            ## Instantiates a new ClassificationResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the count property value. The number of instances of the specific information type in the input.
            ## @return a integer
            ## 
            def count
                return @count
            end
            ## 
            ## Sets the count property value. The number of instances of the specific information type in the input.
            ## @param value Value to set for the count property.
            ## @return a void
            ## 
            def count=(value)
                @count = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a classification_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ClassificationResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "confidenceLevel" => lambda {|n| @confidence_level = n.get_number_value() },
                    "count" => lambda {|n| @count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sensitiveTypeId" => lambda {|n| @sensitive_type_id = n.get_string_value() },
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
            ## Gets the sensitiveTypeId property value. The GUID of the discovered sensitive information type.
            ## @return a string
            ## 
            def sensitive_type_id
                return @sensitive_type_id
            end
            ## 
            ## Sets the sensitiveTypeId property value. The GUID of the discovered sensitive information type.
            ## @param value Value to set for the sensitiveTypeId property.
            ## @return a void
            ## 
            def sensitive_type_id=(value)
                @sensitive_type_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("confidenceLevel", @confidence_level)
                writer.write_number_value("count", @count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sensitiveTypeId", @sensitive_type_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
