require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserExperienceAnalyticsAppHealthDeviceModelPerformance < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of active devices for the model. Valid values -2147483648 to 2147483647
            @active_device_count
            ## 
            # The manufacturer name of the device.
            @device_manufacturer
            ## 
            # The model name of the device.
            @device_model
            ## 
            # The healthStatus property
            @health_status
            ## 
            # The mean time to failure for the model device in minutes. Valid values -2147483648 to 2147483647
            @mean_time_to_failure_in_minutes
            ## 
            # The app health score of the device model. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @model_app_health_score
            ## 
            # The overall app health status of the device model.
            @model_app_health_status
            ## 
            ## Gets the activeDeviceCount property value. The number of active devices for the model. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def active_device_count
                return @active_device_count
            end
            ## 
            ## Sets the activeDeviceCount property value. The number of active devices for the model. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the active_device_count property.
            ## @return a void
            ## 
            def active_device_count=(value)
                @active_device_count = value
            end
            ## 
            ## Instantiates a new UserExperienceAnalyticsAppHealthDeviceModelPerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_app_health_device_model_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsAppHealthDeviceModelPerformance.new
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
            ## @param value Value to set for the device_manufacturer property.
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
            ## @param value Value to set for the device_model property.
            ## @return a void
            ## 
            def device_model=(value)
                @device_model = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeDeviceCount" => lambda {|n| @active_device_count = n.get_number_value() },
                    "deviceManufacturer" => lambda {|n| @device_manufacturer = n.get_string_value() },
                    "deviceModel" => lambda {|n| @device_model = n.get_string_value() },
                    "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsHealthState) },
                    "meanTimeToFailureInMinutes" => lambda {|n| @mean_time_to_failure_in_minutes = n.get_number_value() },
                    "modelAppHealthScore" => lambda {|n| @model_app_health_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "modelAppHealthStatus" => lambda {|n| @model_app_health_status = n.get_string_value() },
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
            ## Gets the meanTimeToFailureInMinutes property value. The mean time to failure for the model device in minutes. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def mean_time_to_failure_in_minutes
                return @mean_time_to_failure_in_minutes
            end
            ## 
            ## Sets the meanTimeToFailureInMinutes property value. The mean time to failure for the model device in minutes. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the mean_time_to_failure_in_minutes property.
            ## @return a void
            ## 
            def mean_time_to_failure_in_minutes=(value)
                @mean_time_to_failure_in_minutes = value
            end
            ## 
            ## Gets the modelAppHealthScore property value. The app health score of the device model. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def model_app_health_score
                return @model_app_health_score
            end
            ## 
            ## Sets the modelAppHealthScore property value. The app health score of the device model. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the model_app_health_score property.
            ## @return a void
            ## 
            def model_app_health_score=(value)
                @model_app_health_score = value
            end
            ## 
            ## Gets the modelAppHealthStatus property value. The overall app health status of the device model.
            ## @return a string
            ## 
            def model_app_health_status
                return @model_app_health_status
            end
            ## 
            ## Sets the modelAppHealthStatus property value. The overall app health status of the device model.
            ## @param value Value to set for the model_app_health_status property.
            ## @return a void
            ## 
            def model_app_health_status=(value)
                @model_app_health_status = value
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
                writer.write_string_value("deviceManufacturer", @device_manufacturer)
                writer.write_string_value("deviceModel", @device_model)
                writer.write_enum_value("healthStatus", @health_status)
                writer.write_number_value("meanTimeToFailureInMinutes", @mean_time_to_failure_in_minutes)
                writer.write_object_value("modelAppHealthScore", @model_app_health_score)
                writer.write_string_value("modelAppHealthStatus", @model_app_health_status)
            end
        end
    end
end
