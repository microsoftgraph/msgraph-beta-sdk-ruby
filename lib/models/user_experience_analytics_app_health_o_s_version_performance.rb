require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics device OS version performance entity contains OS version performance details.
        class UserExperienceAnalyticsAppHealthOSVersionPerformance < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of active devices for the OS version. Valid values -2147483648 to 2147483647
            @active_device_count
            ## 
            # The mean time to failure for the OS version in minutes. Valid values -2147483648 to 2147483647
            @mean_time_to_failure_in_minutes
            ## 
            # The OS build number installed on the device.
            @os_build_number
            ## 
            # The OS version installed on the device.
            @os_version
            ## 
            # The app health score of the OS version. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @os_version_app_health_score
            ## 
            # The overall app health status of the OS version.
            @os_version_app_health_status
            ## 
            ## Gets the activeDeviceCount property value. The number of active devices for the OS version. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def active_device_count
                return @active_device_count
            end
            ## 
            ## Sets the activeDeviceCount property value. The number of active devices for the OS version. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the active_device_count property.
            ## @return a void
            ## 
            def active_device_count=(value)
                @active_device_count = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsAppHealthOSVersionPerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_app_health_o_s_version_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsAppHealthOSVersionPerformance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeDeviceCount" => lambda {|n| @active_device_count = n.get_number_value() },
                    "meanTimeToFailureInMinutes" => lambda {|n| @mean_time_to_failure_in_minutes = n.get_number_value() },
                    "osBuildNumber" => lambda {|n| @os_build_number = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "osVersionAppHealthScore" => lambda {|n| @os_version_app_health_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "osVersionAppHealthStatus" => lambda {|n| @os_version_app_health_status = n.get_string_value() },
                })
            end
            ## 
            ## Gets the meanTimeToFailureInMinutes property value. The mean time to failure for the OS version in minutes. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def mean_time_to_failure_in_minutes
                return @mean_time_to_failure_in_minutes
            end
            ## 
            ## Sets the meanTimeToFailureInMinutes property value. The mean time to failure for the OS version in minutes. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the mean_time_to_failure_in_minutes property.
            ## @return a void
            ## 
            def mean_time_to_failure_in_minutes=(value)
                @mean_time_to_failure_in_minutes = value
            end
            ## 
            ## Gets the osBuildNumber property value. The OS build number installed on the device.
            ## @return a string
            ## 
            def os_build_number
                return @os_build_number
            end
            ## 
            ## Sets the osBuildNumber property value. The OS build number installed on the device.
            ## @param value Value to set for the os_build_number property.
            ## @return a void
            ## 
            def os_build_number=(value)
                @os_build_number = value
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
            ## @param value Value to set for the os_version property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Gets the osVersionAppHealthScore property value. The app health score of the OS version. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def os_version_app_health_score
                return @os_version_app_health_score
            end
            ## 
            ## Sets the osVersionAppHealthScore property value. The app health score of the OS version. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the os_version_app_health_score property.
            ## @return a void
            ## 
            def os_version_app_health_score=(value)
                @os_version_app_health_score = value
            end
            ## 
            ## Gets the osVersionAppHealthStatus property value. The overall app health status of the OS version.
            ## @return a string
            ## 
            def os_version_app_health_status
                return @os_version_app_health_status
            end
            ## 
            ## Sets the osVersionAppHealthStatus property value. The overall app health status of the OS version.
            ## @param value Value to set for the os_version_app_health_status property.
            ## @return a void
            ## 
            def os_version_app_health_status=(value)
                @os_version_app_health_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("activeDeviceCount", @active_device_count)
                writer.write_number_value("meanTimeToFailureInMinutes", @mean_time_to_failure_in_minutes)
                writer.write_string_value("osBuildNumber", @os_build_number)
                writer.write_string_value("osVersion", @os_version)
                writer.write_object_value("osVersionAppHealthScore", @os_version_app_health_score)
                writer.write_string_value("osVersionAppHealthStatus", @os_version_app_health_status)
            end
        end
    end
end
