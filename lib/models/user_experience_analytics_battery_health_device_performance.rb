require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics battery health device performance entity contains device level battery information.
        class UserExperienceAnalyticsBatteryHealthDevicePerformance < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Estimated battery age. Unit in days. Valid values 0 to 2147483647
            @battery_age_in_days
            ## 
            # Properties (maxCapacity and cycleCount) related to all batteries of the device.
            @device_batteries_details
            ## 
            # Number of batteries in a user device. Valid values 0 to 2147483647
            @device_battery_count
            ## 
            # A weighted average of a device’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values 0 to 2147483647
            @device_battery_health_score
            ## 
            # Tags for computed information on how battery on the device is behaving. E.g. newbattery, batterycapacityred, designcapacityzero, etc.
            @device_battery_tags
            ## 
            # The unique identifier of the device, Intune DeviceID.
            @device_id
            ## 
            # The manufacturer name of the device.
            @device_manufacturer_name
            ## 
            # The model name of the device.
            @device_model_name
            ## 
            # Device friendly name.
            @device_name
            ## 
            # The estimated runtime of the device when the battery is fully charged. Unit in minutes. Valid values 0 to 2147483647
            @estimated_runtime_in_minutes
            ## 
            # Number of times the battery has been discharged an amount that equals 100% of its capacity, but not necessarily by discharging it from 100% to 0%. Valid values 0 to 2147483647
            @full_battery_drain_count
            ## 
            # The healthStatus property
            @health_status
            ## 
            # The manufacturer name of the device. Deprecated in favor of DeviceManufacturerName.
            @manufacturer
            ## 
            # Ratio of current capacity and design capacity of the battery with the lowest capacity. Unit in percentage and values range from 0-100. Valid values 0 to 2147483647
            @max_capacity_percentage
            ## 
            # The model name of the device. Deprecated in favor of DeviceModelName.
            @model
            ## 
            ## Gets the batteryAgeInDays property value. Estimated battery age. Unit in days. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def battery_age_in_days
                return @battery_age_in_days
            end
            ## 
            ## Sets the batteryAgeInDays property value. Estimated battery age. Unit in days. Valid values 0 to 2147483647
            ## @param value Value to set for the batteryAgeInDays property.
            ## @return a void
            ## 
            def battery_age_in_days=(value)
                @battery_age_in_days = value
            end
            ## 
            ## Instantiates a new UserExperienceAnalyticsBatteryHealthDevicePerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_battery_health_device_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsBatteryHealthDevicePerformance.new
            end
            ## 
            ## Gets the deviceBatteriesDetails property value. Properties (maxCapacity and cycleCount) related to all batteries of the device.
            ## @return a user_experience_analytics_device_battery_detail
            ## 
            def device_batteries_details
                return @device_batteries_details
            end
            ## 
            ## Sets the deviceBatteriesDetails property value. Properties (maxCapacity and cycleCount) related to all batteries of the device.
            ## @param value Value to set for the deviceBatteriesDetails property.
            ## @return a void
            ## 
            def device_batteries_details=(value)
                @device_batteries_details = value
            end
            ## 
            ## Gets the deviceBatteryCount property value. Number of batteries in a user device. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def device_battery_count
                return @device_battery_count
            end
            ## 
            ## Sets the deviceBatteryCount property value. Number of batteries in a user device. Valid values 0 to 2147483647
            ## @param value Value to set for the deviceBatteryCount property.
            ## @return a void
            ## 
            def device_battery_count=(value)
                @device_battery_count = value
            end
            ## 
            ## Gets the deviceBatteryHealthScore property value. A weighted average of a device’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def device_battery_health_score
                return @device_battery_health_score
            end
            ## 
            ## Sets the deviceBatteryHealthScore property value. A weighted average of a device’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values 0 to 2147483647
            ## @param value Value to set for the deviceBatteryHealthScore property.
            ## @return a void
            ## 
            def device_battery_health_score=(value)
                @device_battery_health_score = value
            end
            ## 
            ## Gets the deviceBatteryTags property value. Tags for computed information on how battery on the device is behaving. E.g. newbattery, batterycapacityred, designcapacityzero, etc.
            ## @return a string
            ## 
            def device_battery_tags
                return @device_battery_tags
            end
            ## 
            ## Sets the deviceBatteryTags property value. Tags for computed information on how battery on the device is behaving. E.g. newbattery, batterycapacityred, designcapacityzero, etc.
            ## @param value Value to set for the deviceBatteryTags property.
            ## @return a void
            ## 
            def device_battery_tags=(value)
                @device_battery_tags = value
            end
            ## 
            ## Gets the deviceId property value. The unique identifier of the device, Intune DeviceID.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The unique identifier of the device, Intune DeviceID.
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceManufacturerName property value. The manufacturer name of the device.
            ## @return a string
            ## 
            def device_manufacturer_name
                return @device_manufacturer_name
            end
            ## 
            ## Sets the deviceManufacturerName property value. The manufacturer name of the device.
            ## @param value Value to set for the deviceManufacturerName property.
            ## @return a void
            ## 
            def device_manufacturer_name=(value)
                @device_manufacturer_name = value
            end
            ## 
            ## Gets the deviceModelName property value. The model name of the device.
            ## @return a string
            ## 
            def device_model_name
                return @device_model_name
            end
            ## 
            ## Sets the deviceModelName property value. The model name of the device.
            ## @param value Value to set for the deviceModelName property.
            ## @return a void
            ## 
            def device_model_name=(value)
                @device_model_name = value
            end
            ## 
            ## Gets the deviceName property value. Device friendly name.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. Device friendly name.
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the estimatedRuntimeInMinutes property value. The estimated runtime of the device when the battery is fully charged. Unit in minutes. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def estimated_runtime_in_minutes
                return @estimated_runtime_in_minutes
            end
            ## 
            ## Sets the estimatedRuntimeInMinutes property value. The estimated runtime of the device when the battery is fully charged. Unit in minutes. Valid values 0 to 2147483647
            ## @param value Value to set for the estimatedRuntimeInMinutes property.
            ## @return a void
            ## 
            def estimated_runtime_in_minutes=(value)
                @estimated_runtime_in_minutes = value
            end
            ## 
            ## Gets the fullBatteryDrainCount property value. Number of times the battery has been discharged an amount that equals 100% of its capacity, but not necessarily by discharging it from 100% to 0%. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def full_battery_drain_count
                return @full_battery_drain_count
            end
            ## 
            ## Sets the fullBatteryDrainCount property value. Number of times the battery has been discharged an amount that equals 100% of its capacity, but not necessarily by discharging it from 100% to 0%. Valid values 0 to 2147483647
            ## @param value Value to set for the fullBatteryDrainCount property.
            ## @return a void
            ## 
            def full_battery_drain_count=(value)
                @full_battery_drain_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "batteryAgeInDays" => lambda {|n| @battery_age_in_days = n.get_number_value() },
                    "deviceBatteriesDetails" => lambda {|n| @device_batteries_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsDeviceBatteryDetail.create_from_discriminator_value(pn) }) },
                    "deviceBatteryCount" => lambda {|n| @device_battery_count = n.get_number_value() },
                    "deviceBatteryHealthScore" => lambda {|n| @device_battery_health_score = n.get_number_value() },
                    "deviceBatteryTags" => lambda {|n| @device_battery_tags = n.get_collection_of_primitive_values(String) },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceManufacturerName" => lambda {|n| @device_manufacturer_name = n.get_string_value() },
                    "deviceModelName" => lambda {|n| @device_model_name = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "estimatedRuntimeInMinutes" => lambda {|n| @estimated_runtime_in_minutes = n.get_number_value() },
                    "fullBatteryDrainCount" => lambda {|n| @full_battery_drain_count = n.get_number_value() },
                    "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsHealthState) },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "maxCapacityPercentage" => lambda {|n| @max_capacity_percentage = n.get_number_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                })
            end
            ## 
            ## Gets the healthStatus property value. The healthStatus property
            ## @return a user_experience_analytics_health_state
            ## 
            def health_status
                return @health_status
            end
            ## 
            ## Sets the healthStatus property value. The healthStatus property
            ## @param value Value to set for the healthStatus property.
            ## @return a void
            ## 
            def health_status=(value)
                @health_status = value
            end
            ## 
            ## Gets the manufacturer property value. The manufacturer name of the device. Deprecated in favor of DeviceManufacturerName.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The manufacturer name of the device. Deprecated in favor of DeviceManufacturerName.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the maxCapacityPercentage property value. Ratio of current capacity and design capacity of the battery with the lowest capacity. Unit in percentage and values range from 0-100. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def max_capacity_percentage
                return @max_capacity_percentage
            end
            ## 
            ## Sets the maxCapacityPercentage property value. Ratio of current capacity and design capacity of the battery with the lowest capacity. Unit in percentage and values range from 0-100. Valid values 0 to 2147483647
            ## @param value Value to set for the maxCapacityPercentage property.
            ## @return a void
            ## 
            def max_capacity_percentage=(value)
                @max_capacity_percentage = value
            end
            ## 
            ## Gets the model property value. The model name of the device. Deprecated in favor of DeviceModelName.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The model name of the device. Deprecated in favor of DeviceModelName.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("batteryAgeInDays", @battery_age_in_days)
                writer.write_collection_of_object_values("deviceBatteriesDetails", @device_batteries_details)
                writer.write_number_value("deviceBatteryCount", @device_battery_count)
                writer.write_number_value("deviceBatteryHealthScore", @device_battery_health_score)
                writer.write_collection_of_primitive_values("deviceBatteryTags", @device_battery_tags)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceManufacturerName", @device_manufacturer_name)
                writer.write_string_value("deviceModelName", @device_model_name)
                writer.write_string_value("deviceName", @device_name)
                writer.write_number_value("estimatedRuntimeInMinutes", @estimated_runtime_in_minutes)
                writer.write_number_value("fullBatteryDrainCount", @full_battery_drain_count)
                writer.write_enum_value("healthStatus", @health_status)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_number_value("maxCapacityPercentage", @max_capacity_percentage)
                writer.write_string_value("model", @model)
            end
        end
    end
end
