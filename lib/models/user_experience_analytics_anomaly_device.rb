require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics anomaly entity contains device details.
        class UserExperienceAnalyticsAnomalyDevice < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The unique identifier of the anomaly.
            @anomaly_id
            ## 
            # Indicates the first occurance date and time for the anomaly on the device.
            @anomaly_on_device_first_occurrence_date_time
            ## 
            # Indicates the latest occurance date and time for the anomaly on the device.
            @anomaly_on_device_latest_occurrence_date_time
            ## 
            # The unique identifier of the correlation group.
            @correlation_group_id
            ## 
            # The unique identifier of the device.
            @device_id
            ## 
            # The manufacturer name of the device.
            @device_manufacturer
            ## 
            # The model name of the device.
            @device_model
            ## 
            # The name of the device.
            @device_name
            ## 
            # Indicates the status of the device in the correlation group. Eg: Device status can be anomalous, affected, at risk.
            @device_status
            ## 
            # The name of the OS installed on the device.
            @os_name
            ## 
            # The OS version installed on the device.
            @os_version
            ## 
            ## Gets the anomalyId property value. The unique identifier of the anomaly.
            ## @return a string
            ## 
            def anomaly_id
                return @anomaly_id
            end
            ## 
            ## Sets the anomalyId property value. The unique identifier of the anomaly.
            ## @param value Value to set for the anomalyId property.
            ## @return a void
            ## 
            def anomaly_id=(value)
                @anomaly_id = value
            end
            ## 
            ## Gets the anomalyOnDeviceFirstOccurrenceDateTime property value. Indicates the first occurance date and time for the anomaly on the device.
            ## @return a date_time
            ## 
            def anomaly_on_device_first_occurrence_date_time
                return @anomaly_on_device_first_occurrence_date_time
            end
            ## 
            ## Sets the anomalyOnDeviceFirstOccurrenceDateTime property value. Indicates the first occurance date and time for the anomaly on the device.
            ## @param value Value to set for the anomalyOnDeviceFirstOccurrenceDateTime property.
            ## @return a void
            ## 
            def anomaly_on_device_first_occurrence_date_time=(value)
                @anomaly_on_device_first_occurrence_date_time = value
            end
            ## 
            ## Gets the anomalyOnDeviceLatestOccurrenceDateTime property value. Indicates the latest occurance date and time for the anomaly on the device.
            ## @return a date_time
            ## 
            def anomaly_on_device_latest_occurrence_date_time
                return @anomaly_on_device_latest_occurrence_date_time
            end
            ## 
            ## Sets the anomalyOnDeviceLatestOccurrenceDateTime property value. Indicates the latest occurance date and time for the anomaly on the device.
            ## @param value Value to set for the anomalyOnDeviceLatestOccurrenceDateTime property.
            ## @return a void
            ## 
            def anomaly_on_device_latest_occurrence_date_time=(value)
                @anomaly_on_device_latest_occurrence_date_time = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsAnomalyDevice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the correlationGroupId property value. The unique identifier of the correlation group.
            ## @return a string
            ## 
            def correlation_group_id
                return @correlation_group_id
            end
            ## 
            ## Sets the correlationGroupId property value. The unique identifier of the correlation group.
            ## @param value Value to set for the correlationGroupId property.
            ## @return a void
            ## 
            def correlation_group_id=(value)
                @correlation_group_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_anomaly_device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsAnomalyDevice.new
            end
            ## 
            ## Gets the deviceId property value. The unique identifier of the device.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The unique identifier of the device.
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceManufacturer property value. The manufacturer name of the device.
            ## @return a string
            ## 
            def device_manufacturer
                return @device_manufacturer
            end
            ## 
            ## Sets the deviceManufacturer property value. The manufacturer name of the device.
            ## @param value Value to set for the deviceManufacturer property.
            ## @return a void
            ## 
            def device_manufacturer=(value)
                @device_manufacturer = value
            end
            ## 
            ## Gets the deviceModel property value. The model name of the device.
            ## @return a string
            ## 
            def device_model
                return @device_model
            end
            ## 
            ## Sets the deviceModel property value. The model name of the device.
            ## @param value Value to set for the deviceModel property.
            ## @return a void
            ## 
            def device_model=(value)
                @device_model = value
            end
            ## 
            ## Gets the deviceName property value. The name of the device.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The name of the device.
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the deviceStatus property value. Indicates the status of the device in the correlation group. Eg: Device status can be anomalous, affected, at risk.
            ## @return a user_experience_analytics_device_status
            ## 
            def device_status
                return @device_status
            end
            ## 
            ## Sets the deviceStatus property value. Indicates the status of the device in the correlation group. Eg: Device status can be anomalous, affected, at risk.
            ## @param value Value to set for the deviceStatus property.
            ## @return a void
            ## 
            def device_status=(value)
                @device_status = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "anomalyId" => lambda {|n| @anomaly_id = n.get_string_value() },
                    "anomalyOnDeviceFirstOccurrenceDateTime" => lambda {|n| @anomaly_on_device_first_occurrence_date_time = n.get_date_time_value() },
                    "anomalyOnDeviceLatestOccurrenceDateTime" => lambda {|n| @anomaly_on_device_latest_occurrence_date_time = n.get_date_time_value() },
                    "correlationGroupId" => lambda {|n| @correlation_group_id = n.get_string_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceManufacturer" => lambda {|n| @device_manufacturer = n.get_string_value() },
                    "deviceModel" => lambda {|n| @device_model = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "deviceStatus" => lambda {|n| @device_status = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsDeviceStatus) },
                    "osName" => lambda {|n| @os_name = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the osName property value. The name of the OS installed on the device.
            ## @return a string
            ## 
            def os_name
                return @os_name
            end
            ## 
            ## Sets the osName property value. The name of the OS installed on the device.
            ## @param value Value to set for the osName property.
            ## @return a void
            ## 
            def os_name=(value)
                @os_name = value
            end
            ## 
            ## Gets the osVersion property value. The OS version installed on the device.
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. The OS version installed on the device.
            ## @param value Value to set for the osVersion property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("anomalyId", @anomaly_id)
                writer.write_date_time_value("anomalyOnDeviceFirstOccurrenceDateTime", @anomaly_on_device_first_occurrence_date_time)
                writer.write_date_time_value("anomalyOnDeviceLatestOccurrenceDateTime", @anomaly_on_device_latest_occurrence_date_time)
                writer.write_string_value("correlationGroupId", @correlation_group_id)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceManufacturer", @device_manufacturer)
                writer.write_string_value("deviceModel", @device_model)
                writer.write_string_value("deviceName", @device_name)
                writer.write_enum_value("deviceStatus", @device_status)
                writer.write_string_value("osName", @os_name)
                writer.write_string_value("osVersion", @os_version)
            end
        end
    end
end
