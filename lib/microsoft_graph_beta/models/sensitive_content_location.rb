require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class SensitiveContentLocation
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The confidence property
        @confidence
        ## 
        # The evidences property
        @evidences
        ## 
        # The idMatch property
        @id_match
        ## 
        # The length property
        @length
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The offset property
        @offset
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
        ## Instantiates a new sensitiveContentLocation and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a sensitive_content_location
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SensitiveContentLocation.new
        end
        ## 
        ## Gets the evidences property value. The evidences property
        ## @return a sensitive_content_evidence
        ## 
        def evidences
            return @evidences
        end
        ## 
        ## Sets the evidences property value. The evidences property
        ## @param value Value to set for the evidences property.
        ## @return a void
        ## 
        def evidences=(value)
            @evidences = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "confidence" => lambda {|n| @confidence = n.get_number_value() },
                "evidences" => lambda {|n| @evidences = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SensitiveContentEvidence.create_from_discriminator_value(pn) }) },
                "idMatch" => lambda {|n| @id_match = n.get_string_value() },
                "length" => lambda {|n| @length = n.get_number_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "offset" => lambda {|n| @offset = n.get_number_value() },
            }
        end
        ## 
        ## Gets the idMatch property value. The idMatch property
        ## @return a string
        ## 
        def id_match
            return @id_match
        end
        ## 
        ## Sets the idMatch property value. The idMatch property
        ## @param value Value to set for the idMatch property.
        ## @return a void
        ## 
        def id_match=(value)
            @id_match = value
        end
        ## 
        ## Gets the length property value. The length property
        ## @return a integer
        ## 
        def length
            return @length
        end
        ## 
        ## Sets the length property value. The length property
        ## @param value Value to set for the length property.
        ## @return a void
        ## 
        def length=(value)
            @length = value
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
        ## Gets the offset property value. The offset property
        ## @return a integer
        ## 
        def offset
            return @offset
        end
        ## 
        ## Sets the offset property value. The offset property
        ## @param value Value to set for the offset property.
        ## @return a void
        ## 
        def offset=(value)
            @offset = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_number_value("confidence", @confidence)
            writer.write_collection_of_object_values("evidences", @evidences)
            writer.write_string_value("idMatch", @id_match)
            writer.write_number_value("length", @length)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_number_value("offset", @offset)
            writer.write_additional_data(@additional_data)
        end
    end
end
