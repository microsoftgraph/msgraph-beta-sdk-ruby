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
            # Estimated battery age. Unit in days. Valid values -2147483648 to 2147483647
            @battery_age_in_days
            ## 
            # A weighted average of a device’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values -2147483648 to 2147483647
            @device_battery_health_score
            ## 
            # The unique identifier of the device, Intune DeviceID.
            @device_id
            ## 
            # Device friendly name.
            @device_name
            ## 
            # The estimated runtime of the device when the battery is fully charged. Unit in minutes. Valid values -2147483648 to 2147483647
            @estimated_runtime_in_minutes
            ## 
            # The healthStatus property
            @health_status
            ## 
            # The manufacturer name of the device.
            @manufacturer
            ## 
            # Ratio of current capacity and design capacity of the battery with the lowest capacity. Unit in percentage and values range from 0-100. Valid values -2147483648 to 2147483647
            @max_capacity_percentage
            ## 
            # The model name of the device.
            @model
            ## 
            ## Gets the batteryAgeInDays property value. Estimated battery age. Unit in days. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def battery_age_in_days
                return @battery_age_in_days
            end
            ## 
            ## Sets the batteryAgeInDays property value. Estimated battery age. Unit in days. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the battery_age_in_days property.
            ## @return a void
            ## 
            def battery_age_in_days=(value)
                @battery_age_in_days = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsBatteryHealthDevicePerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_battery_health_device_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsBatteryHealthDevicePerformance.new
            end
            ## 
            ## Gets the deviceBatteryHealthScore property value. A weighted average of a device’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def device_battery_health_score
                return @device_battery_health_score
            end
            ## 
            ## Sets the deviceBatteryHealthScore property value. A weighted average of a device’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the device_battery_health_score property.
            ## @return a void
            ## 
            def device_battery_health_score=(value)
                @device_battery_health_score = value
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
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
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
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the estimatedRuntimeInMinutes property value. The estimated runtime of the device when the battery is fully charged. Unit in minutes. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def estimated_runtime_in_minutes
                return @estimated_runtime_in_minutes
            end
            ## 
            ## Sets the estimatedRuntimeInMinutes property value. The estimated runtime of the device when the battery is fully charged. Unit in minutes. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the estimated_runtime_in_minutes property.
            ## @return a void
            ## 
            def estimated_runtime_in_minutes=(value)
                @estimated_runtime_in_minutes = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "batteryAgeInDays" => lambda {|n| @battery_age_in_days = n.get_number_value() },
                    "deviceBatteryHealthScore" => lambda {|n| @device_battery_health_score = n.get_number_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "estimatedRuntimeInMinutes" => lambda {|n| @estimated_runtime_in_minutes = n.get_number_value() },
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
            ## @param value Value to set for the health_status property.
            ## @return a void
            ## 
            def health_status=(value)
                @health_status = value
            end
            ## 
            ## Gets the manufacturer property value. The manufacturer name of the device.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The manufacturer name of the device.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the maxCapacityPercentage property value. Ratio of current capacity and design capacity of the battery with the lowest capacity. Unit in percentage and values range from 0-100. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def max_capacity_percentage
                return @max_capacity_percentage
            end
            ## 
            ## Sets the maxCapacityPercentage property value. Ratio of current capacity and design capacity of the battery with the lowest capacity. Unit in percentage and values range from 0-100. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the max_capacity_percentage property.
            ## @return a void
            ## 
            def max_capacity_percentage=(value)
                @max_capacity_percentage = value
            end
            ## 
            ## Gets the model property value. The model name of the device.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The model name of the device.
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
                writer.write_number_value("deviceBatteryHealthScore", @device_battery_health_score)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceName", @device_name)
                writer.write_number_value("estimatedRuntimeInMinutes", @estimated_runtime_in_minutes)
                writer.write_enum_value("healthStatus", @health_status)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_number_value("maxCapacityPercentage", @max_capacity_percentage)
                writer.write_string_value("model", @model)
            end
        end
    end
end
