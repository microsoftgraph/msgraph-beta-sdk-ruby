require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ContentInfo
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The format property
        @format
        ## 
        # Identifier used for Azure Information Protection Analytics.
        @identifier
        ## 
        # Existing Microsoft Purview Information Protection metadata is passed as key/value pairs, where the key is the MSIP_Label_GUID_PropName.
        @metadata
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The state property
        @state
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
        ## Instantiates a new contentInfo and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a content_info
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ContentInfo.new
        end
        ## 
        ## Gets the format property value. The format property
        ## @return a content_format
        ## 
        def format
            return @format
        end
        ## 
        ## Sets the format property value. The format property
        ## @param value Value to set for the format property.
        ## @return a void
        ## 
        def format=(value)
            @format = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "format" => lambda {|n| @format = n.get_enum_value(MicrosoftGraphBeta::Models::ContentFormat) },
                "identifier" => lambda {|n| @identifier = n.get_string_value() },
                "metadata" => lambda {|n| @metadata = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::ContentState) },
            }
        end
        ## 
        ## Gets the identifier property value. Identifier used for Azure Information Protection Analytics.
        ## @return a string
        ## 
        def identifier
            return @identifier
        end
        ## 
        ## Sets the identifier property value. Identifier used for Azure Information Protection Analytics.
        ## @param value Value to set for the identifier property.
        ## @return a void
        ## 
        def identifier=(value)
            @identifier = value
        end
        ## 
        ## Gets the metadata property value. Existing Microsoft Purview Information Protection metadata is passed as key/value pairs, where the key is the MSIP_Label_GUID_PropName.
        ## @return a key_value_pair
        ## 
        def metadata
            return @metadata
        end
        ## 
        ## Sets the metadata property value. Existing Microsoft Purview Information Protection metadata is passed as key/value pairs, where the key is the MSIP_Label_GUID_PropName.
        ## @param value Value to set for the metadata property.
        ## @return a void
        ## 
        def metadata=(value)
            @metadata = value
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
            writer.write_enum_value("format", @format)
            writer.write_string_value("identifier", @identifier)
            writer.write_collection_of_object_values("metadata", @metadata)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_enum_value("state", @state)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the state property value. The state property
        ## @return a content_state
        ## 
        def state
            return @state
        end
        ## 
        ## Sets the state property value. The state property
        ## @param value Value to set for the state property.
        ## @return a void
        ## 
        def state=(value)
            @state = value
        end
    end
end
