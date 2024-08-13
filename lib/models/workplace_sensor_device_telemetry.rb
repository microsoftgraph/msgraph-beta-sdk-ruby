require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WorkplaceSensorDeviceTelemetry
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The value of the sensor can be true or false. Use it for sensors that report binary values, such as occupancy or heartbeat.
            @bool_value
            ## 
            # The user-defined unique identifier of the device provided at the time of creation. Don't use the system generated identifier of the device.
            @device_id
            ## 
            # The value of the sensor as an integer. Use it for sensors that report numerical values, such as people count.
            @int_value
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The user-defined unique identifier of the sensor on the device. Optional. If the device has multiple sensors of the same type, the property must be provided to identify each sensor. If the device has unique sensor types, the property can be omitted. The default value is the sensor type.
            @sensor_id
            ## 
            # The sensorType property
            @sensor_type
            ## 
            # The date and time when the sensor measured and reported its value. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @timestamp
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
            ## Gets the boolValue property value. The value of the sensor can be true or false. Use it for sensors that report binary values, such as occupancy or heartbeat.
            ## @return a boolean
            ## 
            def bool_value
                return @bool_value
            end
            ## 
            ## Sets the boolValue property value. The value of the sensor can be true or false. Use it for sensors that report binary values, such as occupancy or heartbeat.
            ## @param value Value to set for the boolValue property.
            ## @return a void
            ## 
            def bool_value=(value)
                @bool_value = value
            end
            ## 
            ## Instantiates a new WorkplaceSensorDeviceTelemetry and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workplace_sensor_device_telemetry
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkplaceSensorDeviceTelemetry.new
            end
            ## 
            ## Gets the deviceId property value. The user-defined unique identifier of the device provided at the time of creation. Don't use the system generated identifier of the device.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The user-defined unique identifier of the device provided at the time of creation. Don't use the system generated identifier of the device.
            ## @param value Value to set for the deviceId property.
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
                    "boolValue" => lambda {|n| @bool_value = n.get_boolean_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "intValue" => lambda {|n| @int_value = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sensorId" => lambda {|n| @sensor_id = n.get_string_value() },
                    "sensorType" => lambda {|n| @sensor_type = n.get_enum_value(MicrosoftGraphBeta::Models::WorkplaceSensorType) },
                    "timestamp" => lambda {|n| @timestamp = n.get_date_time_value() },
                }
            end
            ## 
            ## Gets the intValue property value. The value of the sensor as an integer. Use it for sensors that report numerical values, such as people count.
            ## @return a integer
            ## 
            def int_value
                return @int_value
            end
            ## 
            ## Sets the intValue property value. The value of the sensor as an integer. Use it for sensors that report numerical values, such as people count.
            ## @param value Value to set for the intValue property.
            ## @return a void
            ## 
            def int_value=(value)
                @int_value = value
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
            ## Gets the sensorId property value. The user-defined unique identifier of the sensor on the device. Optional. If the device has multiple sensors of the same type, the property must be provided to identify each sensor. If the device has unique sensor types, the property can be omitted. The default value is the sensor type.
            ## @return a string
            ## 
            def sensor_id
                return @sensor_id
            end
            ## 
            ## Sets the sensorId property value. The user-defined unique identifier of the sensor on the device. Optional. If the device has multiple sensors of the same type, the property must be provided to identify each sensor. If the device has unique sensor types, the property can be omitted. The default value is the sensor type.
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
                writer.write_boolean_value("boolValue", @bool_value)
                writer.write_string_value("deviceId", @device_id)
                writer.write_number_value("intValue", @int_value)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sensorId", @sensor_id)
                writer.write_enum_value("sensorType", @sensor_type)
                writer.write_date_time_value("timestamp", @timestamp)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the timestamp property value. The date and time when the sensor measured and reported its value. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def timestamp
                return @timestamp
            end
            ## 
            ## Sets the timestamp property value. The date and time when the sensor measured and reported its value. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the timestamp property.
            ## @return a void
            ## 
            def timestamp=(value)
                @timestamp = value
            end
        end
    end
end
