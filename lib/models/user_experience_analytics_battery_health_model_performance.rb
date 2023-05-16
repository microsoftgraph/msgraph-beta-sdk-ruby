require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserExperienceAnalyticsBatteryHealthModelPerformance < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of active devices for that model. Valid values -2147483648 to 2147483647
            @active_devices
            ## 
            # The mean of the battery age for all devices of a given model in a tenant. Unit in days. Valid values -2147483648 to 2147483647
            @average_battery_age_in_days
            ## 
            # The mean of the estimated runtimes on full charge for all devices of a given model. Unit in minutes. Valid values -2147483648 to 2147483647
            @average_estimated_runtime_in_minutes
            ## 
            # The mean of the maximum capacity for all devices of a given model. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values -2147483648 to 2147483647
            @average_max_capacity_percentage
            ## 
            # Name of the device manufacturer.
            @manufacturer
            ## 
            # The model name of the device.
            @model
            ## 
            # A weighted average of a model’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values -2147483648 to 2147483647
            @model_battery_health_score
            ## 
            ## Gets the activeDevices property value. Number of active devices for that model. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def active_devices
                return @active_devices
            end
            ## 
            ## Sets the activeDevices property value. Number of active devices for that model. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the active_devices property.
            ## @return a void
            ## 
            def active_devices=(value)
                @active_devices = value
            end
            ## 
            ## Gets the averageBatteryAgeInDays property value. The mean of the battery age for all devices of a given model in a tenant. Unit in days. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def average_battery_age_in_days
                return @average_battery_age_in_days
            end
            ## 
            ## Sets the averageBatteryAgeInDays property value. The mean of the battery age for all devices of a given model in a tenant. Unit in days. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the average_battery_age_in_days property.
            ## @return a void
            ## 
            def average_battery_age_in_days=(value)
                @average_battery_age_in_days = value
            end
            ## 
            ## Gets the averageEstimatedRuntimeInMinutes property value. The mean of the estimated runtimes on full charge for all devices of a given model. Unit in minutes. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def average_estimated_runtime_in_minutes
                return @average_estimated_runtime_in_minutes
            end
            ## 
            ## Sets the averageEstimatedRuntimeInMinutes property value. The mean of the estimated runtimes on full charge for all devices of a given model. Unit in minutes. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the average_estimated_runtime_in_minutes property.
            ## @return a void
            ## 
            def average_estimated_runtime_in_minutes=(value)
                @average_estimated_runtime_in_minutes = value
            end
            ## 
            ## Gets the averageMaxCapacityPercentage property value. The mean of the maximum capacity for all devices of a given model. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def average_max_capacity_percentage
                return @average_max_capacity_percentage
            end
            ## 
            ## Sets the averageMaxCapacityPercentage property value. The mean of the maximum capacity for all devices of a given model. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the average_max_capacity_percentage property.
            ## @return a void
            ## 
            def average_max_capacity_percentage=(value)
                @average_max_capacity_percentage = value
            end
            ## 
            ## Instantiates a new UserExperienceAnalyticsBatteryHealthModelPerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_battery_health_model_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsBatteryHealthModelPerformance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeDevices" => lambda {|n| @active_devices = n.get_number_value() },
                    "averageBatteryAgeInDays" => lambda {|n| @average_battery_age_in_days = n.get_number_value() },
                    "averageEstimatedRuntimeInMinutes" => lambda {|n| @average_estimated_runtime_in_minutes = n.get_number_value() },
                    "averageMaxCapacityPercentage" => lambda {|n| @average_max_capacity_percentage = n.get_number_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "modelBatteryHealthScore" => lambda {|n| @model_battery_health_score = n.get_number_value() },
                })
            end
            ## 
            ## Gets the manufacturer property value. Name of the device manufacturer.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. Name of the device manufacturer.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
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
            ## Gets the modelBatteryHealthScore property value. A weighted average of a model’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def model_battery_health_score
                return @model_battery_health_score
            end
            ## 
            ## Sets the modelBatteryHealthScore property value. A weighted average of a model’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the model_battery_health_score property.
            ## @return a void
            ## 
            def model_battery_health_score=(value)
                @model_battery_health_score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("activeDevices", @active_devices)
                writer.write_number_value("averageBatteryAgeInDays", @average_battery_age_in_days)
                writer.write_number_value("averageEstimatedRuntimeInMinutes", @average_estimated_runtime_in_minutes)
                writer.write_number_value("averageMaxCapacityPercentage", @average_max_capacity_percentage)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_number_value("modelBatteryHealthScore", @model_battery_health_score)
            end
        end
    end
end
