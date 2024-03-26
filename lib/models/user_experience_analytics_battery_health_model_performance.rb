require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics battery health model performance entity contains battery related information for all unique device models in their organization.
        class UserExperienceAnalyticsBatteryHealthModelPerformance < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of active devices for that model. Valid values 0 to 2147483647
            @active_devices
            ## 
            # The mean of the battery age for all devices of a given model in a tenant. Unit in days. Valid values 0 to 2147483647
            @average_battery_age_in_days
            ## 
            # The mean of the estimated runtimes on full charge for all devices of a given model. Unit in minutes. Valid values 0 to 2147483647
            @average_estimated_runtime_in_minutes
            ## 
            # The mean of the maximum capacity for all devices of a given model. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values 0 to 2147483647
            @average_max_capacity_percentage
            ## 
            # Name of the device manufacturer.
            @manufacturer
            ## 
            # The mean of number of times the battery has been discharged an amount that equals 100% of its capacity for all devices of a given model in a tenant. Valid values 0 to 2147483647
            @mean_full_battery_drain_count
            ## 
            # The median of the estimated runtimes on full charge for all devices of a given model. Unit in minutes. Valid values 0 to 2147483647
            @median_estimated_runtime_in_minutes
            ## 
            # The median of number of times the battery has been discharged an amount that equals 100% of its capacity for all devices of a given model in a tenant. Valid values 0 to 2147483647
            @median_full_battery_drain_count
            ## 
            # The median of the maximum capacity for all devices of a given model. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values 0 to 2147483647
            @median_max_capacity_percentage
            ## 
            # The model name of the device.
            @model
            ## 
            # A weighted average of a model’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values 0 to 2147483647
            @model_battery_health_score
            ## 
            # The modelHealthStatus property
            @model_health_status
            ## 
            ## Gets the activeDevices property value. Number of active devices for that model. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def active_devices
                return @active_devices
            end
            ## 
            ## Sets the activeDevices property value. Number of active devices for that model. Valid values 0 to 2147483647
            ## @param value Value to set for the activeDevices property.
            ## @return a void
            ## 
            def active_devices=(value)
                @active_devices = value
            end
            ## 
            ## Gets the averageBatteryAgeInDays property value. The mean of the battery age for all devices of a given model in a tenant. Unit in days. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def average_battery_age_in_days
                return @average_battery_age_in_days
            end
            ## 
            ## Sets the averageBatteryAgeInDays property value. The mean of the battery age for all devices of a given model in a tenant. Unit in days. Valid values 0 to 2147483647
            ## @param value Value to set for the averageBatteryAgeInDays property.
            ## @return a void
            ## 
            def average_battery_age_in_days=(value)
                @average_battery_age_in_days = value
            end
            ## 
            ## Gets the averageEstimatedRuntimeInMinutes property value. The mean of the estimated runtimes on full charge for all devices of a given model. Unit in minutes. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def average_estimated_runtime_in_minutes
                return @average_estimated_runtime_in_minutes
            end
            ## 
            ## Sets the averageEstimatedRuntimeInMinutes property value. The mean of the estimated runtimes on full charge for all devices of a given model. Unit in minutes. Valid values 0 to 2147483647
            ## @param value Value to set for the averageEstimatedRuntimeInMinutes property.
            ## @return a void
            ## 
            def average_estimated_runtime_in_minutes=(value)
                @average_estimated_runtime_in_minutes = value
            end
            ## 
            ## Gets the averageMaxCapacityPercentage property value. The mean of the maximum capacity for all devices of a given model. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def average_max_capacity_percentage
                return @average_max_capacity_percentage
            end
            ## 
            ## Sets the averageMaxCapacityPercentage property value. The mean of the maximum capacity for all devices of a given model. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values 0 to 2147483647
            ## @param value Value to set for the averageMaxCapacityPercentage property.
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
                    "meanFullBatteryDrainCount" => lambda {|n| @mean_full_battery_drain_count = n.get_number_value() },
                    "medianEstimatedRuntimeInMinutes" => lambda {|n| @median_estimated_runtime_in_minutes = n.get_number_value() },
                    "medianFullBatteryDrainCount" => lambda {|n| @median_full_battery_drain_count = n.get_number_value() },
                    "medianMaxCapacityPercentage" => lambda {|n| @median_max_capacity_percentage = n.get_number_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "modelBatteryHealthScore" => lambda {|n| @model_battery_health_score = n.get_number_value() },
                    "modelHealthStatus" => lambda {|n| @model_health_status = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsHealthState) },
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
            ## Gets the meanFullBatteryDrainCount property value. The mean of number of times the battery has been discharged an amount that equals 100% of its capacity for all devices of a given model in a tenant. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def mean_full_battery_drain_count
                return @mean_full_battery_drain_count
            end
            ## 
            ## Sets the meanFullBatteryDrainCount property value. The mean of number of times the battery has been discharged an amount that equals 100% of its capacity for all devices of a given model in a tenant. Valid values 0 to 2147483647
            ## @param value Value to set for the meanFullBatteryDrainCount property.
            ## @return a void
            ## 
            def mean_full_battery_drain_count=(value)
                @mean_full_battery_drain_count = value
            end
            ## 
            ## Gets the medianEstimatedRuntimeInMinutes property value. The median of the estimated runtimes on full charge for all devices of a given model. Unit in minutes. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def median_estimated_runtime_in_minutes
                return @median_estimated_runtime_in_minutes
            end
            ## 
            ## Sets the medianEstimatedRuntimeInMinutes property value. The median of the estimated runtimes on full charge for all devices of a given model. Unit in minutes. Valid values 0 to 2147483647
            ## @param value Value to set for the medianEstimatedRuntimeInMinutes property.
            ## @return a void
            ## 
            def median_estimated_runtime_in_minutes=(value)
                @median_estimated_runtime_in_minutes = value
            end
            ## 
            ## Gets the medianFullBatteryDrainCount property value. The median of number of times the battery has been discharged an amount that equals 100% of its capacity for all devices of a given model in a tenant. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def median_full_battery_drain_count
                return @median_full_battery_drain_count
            end
            ## 
            ## Sets the medianFullBatteryDrainCount property value. The median of number of times the battery has been discharged an amount that equals 100% of its capacity for all devices of a given model in a tenant. Valid values 0 to 2147483647
            ## @param value Value to set for the medianFullBatteryDrainCount property.
            ## @return a void
            ## 
            def median_full_battery_drain_count=(value)
                @median_full_battery_drain_count = value
            end
            ## 
            ## Gets the medianMaxCapacityPercentage property value. The median of the maximum capacity for all devices of a given model. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def median_max_capacity_percentage
                return @median_max_capacity_percentage
            end
            ## 
            ## Sets the medianMaxCapacityPercentage property value. The median of the maximum capacity for all devices of a given model. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values 0 to 2147483647
            ## @param value Value to set for the medianMaxCapacityPercentage property.
            ## @return a void
            ## 
            def median_max_capacity_percentage=(value)
                @median_max_capacity_percentage = value
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
            ## Gets the modelBatteryHealthScore property value. A weighted average of a model’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def model_battery_health_score
                return @model_battery_health_score
            end
            ## 
            ## Sets the modelBatteryHealthScore property value. A weighted average of a model’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values 0 to 2147483647
            ## @param value Value to set for the modelBatteryHealthScore property.
            ## @return a void
            ## 
            def model_battery_health_score=(value)
                @model_battery_health_score = value
            end
            ## 
            ## Gets the modelHealthStatus property value. The modelHealthStatus property
            ## @return a user_experience_analytics_health_state
            ## 
            def model_health_status
                return @model_health_status
            end
            ## 
            ## Sets the modelHealthStatus property value. The modelHealthStatus property
            ## @param value Value to set for the modelHealthStatus property.
            ## @return a void
            ## 
            def model_health_status=(value)
                @model_health_status = value
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
                writer.write_number_value("meanFullBatteryDrainCount", @mean_full_battery_drain_count)
                writer.write_number_value("medianEstimatedRuntimeInMinutes", @median_estimated_runtime_in_minutes)
                writer.write_number_value("medianFullBatteryDrainCount", @median_full_battery_drain_count)
                writer.write_number_value("medianMaxCapacityPercentage", @median_max_capacity_percentage)
                writer.write_string_value("model", @model)
                writer.write_number_value("modelBatteryHealthScore", @model_battery_health_score)
                writer.write_enum_value("modelHealthStatus", @model_health_status)
            end
        end
    end
end
