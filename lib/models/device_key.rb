require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceKey
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The deviceId property
            @device_id
            ## 
            # The keyMaterial property
            @key_material
            ## 
            # The keyType property
            @key_type
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
            ## Instantiates a new deviceKey and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_key
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceKey.new
            end
            ## 
            ## Gets the deviceId property value. The deviceId property
            ## @return a guid
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The deviceId property
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceId" => lambda {|n| @device_id = n.get_guid_value() },
                    "keyMaterial" => lambda {|n| @key_material = n.get_string_value() },
                    "keyType" => lambda {|n| @key_type = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the keyMaterial property value. The keyMaterial property
            ## @return a binary
            ## 
            def key_material
                return @key_material
            end
            ## 
            ## Sets the keyMaterial property value. The keyMaterial property
            ## @param value Value to set for the key_material property.
            ## @return a void
            ## 
            def key_material=(value)
                @key_material = value
            end
            ## 
            ## Gets the keyType property value. The keyType property
            ## @return a string
            ## 
            def key_type
                return @key_type
            end
            ## 
            ## Sets the keyType property value. The keyType property
            ## @param value Value to set for the key_type property.
            ## @return a void
            ## 
            def key_type=(value)
                @key_type = value
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
                writer.write_guid_value("deviceId", @device_id)
                writer.write_object_value("keyMaterial", @key_material)
                writer.write_string_value("keyType", @key_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
