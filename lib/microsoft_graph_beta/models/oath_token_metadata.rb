require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class OathTokenMetadata
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The enabled property
        @enabled
        ## 
        # The manufacturer property
        @manufacturer
        ## 
        # The manufacturerProperties property
        @manufacturer_properties
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The serialNumber property
        @serial_number
        ## 
        # The tokenType property
        @token_type
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
        ## Instantiates a new oathTokenMetadata and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a oath_token_metadata
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OathTokenMetadata.new
        end
        ## 
        ## Gets the enabled property value. The enabled property
        ## @return a boolean
        ## 
        def enabled
            return @enabled
        end
        ## 
        ## Sets the enabled property value. The enabled property
        ## @param value Value to set for the enabled property.
        ## @return a void
        ## 
        def enabled=(value)
            @enabled = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                "manufacturerProperties" => lambda {|n| @manufacturer_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValue.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                "tokenType" => lambda {|n| @token_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the manufacturer property value. The manufacturer property
        ## @return a string
        ## 
        def manufacturer
            return @manufacturer
        end
        ## 
        ## Sets the manufacturer property value. The manufacturer property
        ## @param value Value to set for the manufacturer property.
        ## @return a void
        ## 
        def manufacturer=(value)
            @manufacturer = value
        end
        ## 
        ## Gets the manufacturerProperties property value. The manufacturerProperties property
        ## @return a key_value
        ## 
        def manufacturer_properties
            return @manufacturer_properties
        end
        ## 
        ## Sets the manufacturerProperties property value. The manufacturerProperties property
        ## @param value Value to set for the manufacturerProperties property.
        ## @return a void
        ## 
        def manufacturer_properties=(value)
            @manufacturer_properties = value
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_boolean_value("enabled", @enabled)
            writer.write_string_value("manufacturer", @manufacturer)
            writer.write_collection_of_object_values("manufacturerProperties", @manufacturer_properties)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("serialNumber", @serial_number)
            writer.write_string_value("tokenType", @token_type)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the serialNumber property value. The serialNumber property
        ## @return a string
        ## 
        def serial_number
            return @serial_number
        end
        ## 
        ## Sets the serialNumber property value. The serialNumber property
        ## @param value Value to set for the serialNumber property.
        ## @return a void
        ## 
        def serial_number=(value)
            @serial_number = value
        end
        ## 
        ## Gets the tokenType property value. The tokenType property
        ## @return a string
        ## 
        def token_type
            return @token_type
        end
        ## 
        ## Sets the tokenType property value. The tokenType property
        ## @param value Value to set for the tokenType property.
        ## @return a void
        ## 
        def token_type=(value)
            @token_type = value
        end
    end
end
