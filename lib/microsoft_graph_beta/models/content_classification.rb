require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ContentClassification
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The confidence property
        @confidence
        ## 
        # The matches property
        @matches
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The sensitiveTypeId property
        @sensitive_type_id
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
        ## Instantiates a new contentClassification and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a content_classification
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ContentClassification.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "confidence" => lambda {|n| @confidence = n.get_number_value() },
                "matches" => lambda {|n| @matches = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MatchLocation.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "sensitiveTypeId" => lambda {|n| @sensitive_type_id = n.get_string_value() },
                "uniqueCount" => lambda {|n| @unique_count = n.get_number_value() },
            }
        end
        ## 
        ## Gets the matches property value. The matches property
        ## @return a match_location
        ## 
        def matches
            return @matches
        end
        ## 
        ## Sets the matches property value. The matches property
        ## @param value Value to set for the matches property.
        ## @return a void
        ## 
        def matches=(value)
            @matches = value
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the sensitiveTypeId property value. The sensitiveTypeId property
        ## @return a string
        ## 
        def sensitive_type_id
            return @sensitive_type_id
        end
        ## 
        ## Sets the sensitiveTypeId property value. The sensitiveTypeId property
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
            writer.write_number_value("confidence", @confidence)
            writer.write_collection_of_object_values("matches", @matches)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("sensitiveTypeId", @sensitive_type_id)
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
        ## @param value Value to set for the uniqueCount property.
        ## @return a void
        ## 
        def unique_count=(value)
            @unique_count = value
        end
    end
end
