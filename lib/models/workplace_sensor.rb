require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WorkplaceSensor
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The display name of the sensor. Optional.
            @display_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The unique identifier of the place that the sensor detects. If the device is installed in a room equipped with a mailbox, this property should match the ExternalDirectoryObjectId or Microsoft Entra object ID of the room mailbox. If the sensor detects the same place as the location of the device, the property can be omitted. The default value is the place identifier of the device. Optional.
            @place_id
            ## 
            # The user-defined unique identifier of the sensor on the device. If the device has multiple sensors of the same type, the property must be provided to identify each sensor. If the device has only one sensor of a type, the property can be omitted. The default value is the sensor type. Optional.
            @sensor_id
            ## 
            # The sensorType property
            @sensor_type
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
            ## Instantiates a new WorkplaceSensor and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workplace_sensor
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkplaceSensor.new
            end
            ## 
            ## Gets the displayName property value. The display name of the sensor. Optional.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the sensor. Optional.
            ## @param value Value to set for the displayName property.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "placeId" => lambda {|n| @place_id = n.get_string_value() },
                    "sensorId" => lambda {|n| @sensor_id = n.get_string_value() },
                    "sensorType" => lambda {|n| @sensor_type = n.get_enum_value(MicrosoftGraphBeta::Models::WorkplaceSensorType) },
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
            ## Gets the placeId property value. The unique identifier of the place that the sensor detects. If the device is installed in a room equipped with a mailbox, this property should match the ExternalDirectoryObjectId or Microsoft Entra object ID of the room mailbox. If the sensor detects the same place as the location of the device, the property can be omitted. The default value is the place identifier of the device. Optional.
            ## @return a string
            ## 
            def place_id
                return @place_id
            end
            ## 
            ## Sets the placeId property value. The unique identifier of the place that the sensor detects. If the device is installed in a room equipped with a mailbox, this property should match the ExternalDirectoryObjectId or Microsoft Entra object ID of the room mailbox. If the sensor detects the same place as the location of the device, the property can be omitted. The default value is the place identifier of the device. Optional.
            ## @param value Value to set for the placeId property.
            ## @return a void
            ## 
            def place_id=(value)
                @place_id = value
            end
            ## 
            ## Gets the sensorId property value. The user-defined unique identifier of the sensor on the device. If the device has multiple sensors of the same type, the property must be provided to identify each sensor. If the device has only one sensor of a type, the property can be omitted. The default value is the sensor type. Optional.
            ## @return a string
            ## 
            def sensor_id
                return @sensor_id
            end
            ## 
            ## Sets the sensorId property value. The user-defined unique identifier of the sensor on the device. If the device has multiple sensors of the same type, the property must be provided to identify each sensor. If the device has only one sensor of a type, the property can be omitted. The default value is the sensor type. Optional.
            ## @param value Value to set for the sensorId property.
            ## @return a void
            ## 
            def sensor_id=(value)
                @sensor_id = value
            end
            ## 
            ## Gets the sensorType property value. The sensorType property
            ## @return a workplace_sensor_type
            ## 
            def sensor_type
                return @sensor_type
            end
            ## 
            ## Sets the sensorType property value. The sensorType property
            ## @param value Value to set for the sensorType property.
            ## @return a void
            ## 
            def sensor_type=(value)
                @sensor_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("placeId", @place_id)
                writer.write_string_value("sensorId", @sensor_id)
                writer.write_enum_value("sensorType", @sensor_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
