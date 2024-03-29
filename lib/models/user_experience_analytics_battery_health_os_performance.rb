require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics battery health os performance entity contains battery related information for all operating system versions in their organization.
        class UserExperienceAnalyticsBatteryHealthOsPerformance < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of active devices for that os version. Valid values -2147483648 to 2147483647
            @active_devices
            ## 
            # The mean of the battery age for all devices running a particular operating system version in a tenant. Unit in days. Valid values -2147483648 to 2147483647
            @average_battery_age_in_days
            ## 
            # The mean of the estimated runtimes on full charge for all devices running a particular operating system version. Unit in minutes. Valid values -2147483648 to 2147483647
            @average_estimated_runtime_in_minutes
            ## 
            # The mean of the maximum capacity for all devices running a particular operating system version. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values -2147483648 to 2147483647
            @average_max_capacity_percentage
            ## 
            # The mean of number of times the battery has been discharged an amount that equals 100% of its capacity for all devices running a particular operating system version in a tenant. Valid values 0 to 2147483647
            @mean_full_battery_drain_count
            ## 
            # The median of the estimated runtimes on full charge for all devices running a particular operating system version. Unit in minutes. Valid values 0 to 2147483647
            @median_estimated_runtime_in_minutes
            ## 
            # The median of number of times the battery has been discharged an amount that equals 100% of its capacity for all devices running a particular operating system version in a tenant. Valid values 0 to 2147483647
            @median_full_battery_drain_count
            ## 
            # The median of the maximum capacity for all devices running a particular operating system version. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values 0 to 2147483647
            @median_max_capacity_percentage
            ## 
            # A weighted average of battery health score across all devices running a particular operating system version. Values range from 0-100. Valid values 0 to 2147483647
            @os_battery_health_score
            ## 
            # Build number of the operating system.
            @os_build_number
            ## 
            # The osHealthStatus property
            @os_health_status
            ## 
            # Version of the operating system.
            @os_version
            ## 
            ## Gets the activeDevices property value. Number of active devices for that os version. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def active_devices
                return @active_devices
            end
            ## 
            ## Sets the activeDevices property value. Number of active devices for that os version. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the activeDevices property.
            ## @return a void
            ## 
            def active_devices=(value)
                @active_devices = value
            end
            ## 
            ## Gets the averageBatteryAgeInDays property value. The mean of the battery age for all devices running a particular operating system version in a tenant. Unit in days. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def average_battery_age_in_days
                return @average_battery_age_in_days
            end
            ## 
            ## Sets the averageBatteryAgeInDays property value. The mean of the battery age for all devices running a particular operating system version in a tenant. Unit in days. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the averageBatteryAgeInDays property.
            ## @return a void
            ## 
            def average_battery_age_in_days=(value)
                @average_battery_age_in_days = value
            end
            ## 
            ## Gets the averageEstimatedRuntimeInMinutes property value. The mean of the estimated runtimes on full charge for all devices running a particular operating system version. Unit in minutes. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def average_estimated_runtime_in_minutes
                return @average_estimated_runtime_in_minutes
            end
            ## 
            ## Sets the averageEstimatedRuntimeInMinutes property value. The mean of the estimated runtimes on full charge for all devices running a particular operating system version. Unit in minutes. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the averageEstimatedRuntimeInMinutes property.
            ## @return a void
            ## 
            def average_estimated_runtime_in_minutes=(value)
                @average_estimated_runtime_in_minutes = value
            end
            ## 
            ## Gets the averageMaxCapacityPercentage property value. The mean of the maximum capacity for all devices running a particular operating system version. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def average_max_capacity_percentage
                return @average_max_capacity_percentage
            end
            ## 
            ## Sets the averageMaxCapacityPercentage property value. The mean of the maximum capacity for all devices running a particular operating system version. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the averageMaxCapacityPercentage property.
            ## @return a void
            ## 
            def average_max_capacity_percentage=(value)
                @average_max_capacity_percentage = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsBatteryHealthOsPerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_battery_health_os_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsBatteryHealthOsPerformance.new
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
                    "meanFullBatteryDrainCount" => lambda {|n| @mean_full_battery_drain_count = n.get_number_value() },
                    "medianEstimatedRuntimeInMinutes" => lambda {|n| @median_estimated_runtime_in_minutes = n.get_number_value() },
                    "medianFullBatteryDrainCount" => lambda {|n| @median_full_battery_drain_count = n.get_number_value() },
                    "medianMaxCapacityPercentage" => lambda {|n| @median_max_capacity_percentage = n.get_number_value() },
                    "osBatteryHealthScore" => lambda {|n| @os_battery_health_score = n.get_number_value() },
                    "osBuildNumber" => lambda {|n| @os_build_number = n.get_string_value() },
                    "osHealthStatus" => lambda {|n| @os_health_status = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsHealthState) },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the meanFullBatteryDrainCount property value. The mean of number of times the battery has been discharged an amount that equals 100% of its capacity for all devices running a particular operating system version in a tenant. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def mean_full_battery_drain_count
                return @mean_full_battery_drain_count
            end
            ## 
            ## Sets the meanFullBatteryDrainCount property value. The mean of number of times the battery has been discharged an amount that equals 100% of its capacity for all devices running a particular operating system version in a tenant. Valid values 0 to 2147483647
            ## @param value Value to set for the meanFullBatteryDrainCount property.
            ## @return a void
            ## 
            def mean_full_battery_drain_count=(value)
                @mean_full_battery_drain_count = value
            end
            ## 
            ## Gets the medianEstimatedRuntimeInMinutes property value. The median of the estimated runtimes on full charge for all devices running a particular operating system version. Unit in minutes. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def median_estimated_runtime_in_minutes
                return @median_estimated_runtime_in_minutes
            end
            ## 
            ## Sets the medianEstimatedRuntimeInMinutes property value. The median of the estimated runtimes on full charge for all devices running a particular operating system version. Unit in minutes. Valid values 0 to 2147483647
            ## @param value Value to set for the medianEstimatedRuntimeInMinutes property.
            ## @return a void
            ## 
            def median_estimated_runtime_in_minutes=(value)
                @median_estimated_runtime_in_minutes = value
            end
            ## 
            ## Gets the medianFullBatteryDrainCount property value. The median of number of times the battery has been discharged an amount that equals 100% of its capacity for all devices running a particular operating system version in a tenant. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def median_full_battery_drain_count
                return @median_full_battery_drain_count
            end
            ## 
            ## Sets the medianFullBatteryDrainCount property value. The median of number of times the battery has been discharged an amount that equals 100% of its capacity for all devices running a particular operating system version in a tenant. Valid values 0 to 2147483647
            ## @param value Value to set for the medianFullBatteryDrainCount property.
            ## @return a void
            ## 
            def median_full_battery_drain_count=(value)
                @median_full_battery_drain_count = value
            end
            ## 
            ## Gets the medianMaxCapacityPercentage property value. The median of the maximum capacity for all devices running a particular operating system version. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def median_max_capacity_percentage
                return @median_max_capacity_percentage
            end
            ## 
            ## Sets the medianMaxCapacityPercentage property value. The median of the maximum capacity for all devices running a particular operating system version. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values 0 to 2147483647
            ## @param value Value to set for the medianMaxCapacityPercentage property.
            ## @return a void
            ## 
            def median_max_capacity_percentage=(value)
                @median_max_capacity_percentage = value
            end
            ## 
            ## Gets the osBatteryHealthScore property value. A weighted average of battery health score across all devices running a particular operating system version. Values range from 0-100. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def os_battery_health_score
                return @os_battery_health_score
            end
            ## 
            ## Sets the osBatteryHealthScore property value. A weighted average of battery health score across all devices running a particular operating system version. Values range from 0-100. Valid values 0 to 2147483647
            ## @param value Value to set for the osBatteryHealthScore property.
            ## @return a void
            ## 
            def os_battery_health_score=(value)
                @os_battery_health_score = value
            end
            ## 
            ## Gets the osBuildNumber property value. Build number of the operating system.
            ## @return a string
            ## 
            def os_build_number
                return @os_build_number
            end
            ## 
            ## Sets the osBuildNumber property value. Build number of the operating system.
            ## @param value Value to set for the osBuildNumber property.
            ## @return a void
            ## 
            def os_build_number=(value)
                @os_build_number = value
            end
            ## 
            ## Gets the osHealthStatus property value. The osHealthStatus property
            ## @return a user_experience_analytics_health_state
            ## 
            def os_health_status
                return @os_health_status
            end
            ## 
            ## Sets the osHealthStatus property value. The osHealthStatus property
            ## @param value Value to set for the osHealthStatus property.
            ## @return a void
            ## 
            def os_health_status=(value)
                @os_health_status = value
            end
            ## 
            ## Gets the osVersion property value. Version of the operating system.
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. Version of the operating system.
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
                writer.write_number_value("activeDevices", @active_devices)
                writer.write_number_value("averageBatteryAgeInDays", @average_battery_age_in_days)
                writer.write_number_value("averageEstimatedRuntimeInMinutes", @average_estimated_runtime_in_minutes)
                writer.write_number_value("averageMaxCapacityPercentage", @average_max_capacity_percentage)
                writer.write_number_value("meanFullBatteryDrainCount", @mean_full_battery_drain_count)
                writer.write_number_value("medianEstimatedRuntimeInMinutes", @median_estimated_runtime_in_minutes)
                writer.write_number_value("medianFullBatteryDrainCount", @median_full_battery_drain_count)
                writer.write_number_value("medianMaxCapacityPercentage", @median_max_capacity_percentage)
                writer.write_number_value("osBatteryHealthScore", @os_battery_health_score)
                writer.write_string_value("osBuildNumber", @os_build_number)
                writer.write_enum_value("osHealthStatus", @os_health_status)
                writer.write_string_value("osVersion", @os_version)
            end
        end
    end
end
