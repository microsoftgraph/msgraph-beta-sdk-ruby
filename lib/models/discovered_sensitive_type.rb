require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DiscoveredSensitiveType
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The classificationAttributes property
        @classification_attributes
        ## 
        # The confidence property
        @confidence
        ## 
        # The count property
        @count
        ## 
        # The id property
        @id
        ## 
        # The OdataType property
        @odata_type
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
        ## Gets the classificationAttributes property value. The classificationAttributes property
        ## @return a classification_attribute
        ## 
        def classification_attributes
            return @classification_attributes
        end
        ## 
        ## Sets the classificationAttributes property value. The classificationAttributes property
        ## @param value Value to set for the classification_attributes property.
        ## @return a void
        ## 
        def classification_attributes=(value)
            @classification_attributes = value
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
        ## Instantiates a new discoveredSensitiveType and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Gets the count property value. The count property
        ## @return a integer
        ## 
        def count
            return @count
        end
        ## 
        ## Sets the count property value. The count property
        ## @param value Value to set for the count property.
        ## @return a void
        ## 
        def count=(value)
            @count = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a discovered_sensitive_type
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DiscoveredSensitiveType.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "classificationAttributes" => lambda {|n| @classification_attributes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ClassificationAttribute.create_from_discriminator_value(pn) }) },
                "confidence" => lambda {|n| @confidence = n.get_number_value() },
                "count" => lambda {|n| @count = n.get_number_value() },
                "id" => lambda {|n| @id = n.get_guid_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_object_values("classificationAttributes", @classification_attributes)
            writer.write_number_value("confidence", @confidence)
            writer.write_number_value("count", @count)
            writer.write_guid_value("id", @id)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
