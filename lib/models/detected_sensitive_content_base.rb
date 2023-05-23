require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DetectedSensitiveContentBase
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The confidence property
            @confidence
            ## 
            # The displayName property
            @display_name
            ## 
            # The id property
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The recommendedConfidence property
            @recommended_confidence
            ## 
            # The uniqueCount property
            @unique_count
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the confidence property value. The confidence property
            ## @return a integer
            ## 
            def confidence
                return @confidence
            end
            ## 
            ## Sets the confidence property value. The confidence property
            ## @param value Value to set for the confidence property.
            ## @return a void
            ## 
            def confidence=(value)
                @confidence = value
            end
            ## 
            ## Instantiates a new detectedSensitiveContentBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a detected_sensitive_content_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.detectedSensitiveContent"
                            return DetectedSensitiveContent.new
                        when "#microsoft.graph.exactMatchDetectedSensitiveContent"
                            return ExactMatchDetectedSensitiveContent.new
                        when "#microsoft.graph.machineLearningDetectedSensitiveContent"
                            return MachineLearningDetectedSensitiveContent.new
                    end
                end
                return DetectedSensitiveContentBase.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "confidence" => lambda {|n| @confidence = n.get_number_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_guid_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recommendedConfidence" => lambda {|n| @recommended_confidence = n.get_number_value() },
                    "uniqueCount" => lambda {|n| @unique_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the id property value. The id property
            ## @return a guid
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The id property
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the recommendedConfidence property value. The recommendedConfidence property
            ## @return a integer
            ## 
            def recommended_confidence
                return @recommended_confidence
            end
            ## 
            ## Sets the recommendedConfidence property value. The recommendedConfidence property
            ## @param value Value to set for the recommended_confidence property.
            ## @return a void
            ## 
            def recommended_confidence=(value)
                @recommended_confidence = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("confidence", @confidence)
                writer.write_string_value("displayName", @display_name)
                writer.write_guid_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("recommendedConfidence", @recommended_confidence)
                writer.write_number_value("uniqueCount", @unique_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the uniqueCount property value. The uniqueCount property
            ## @return a integer
            ## 
            def unique_count
                return @unique_count
            end
            ## 
            ## Sets the uniqueCount property value. The uniqueCount property
            ## @param value Value to set for the unique_count property.
            ## @return a void
            ## 
            def unique_count=(value)
                @unique_count = value
            end
        end
    end
end
