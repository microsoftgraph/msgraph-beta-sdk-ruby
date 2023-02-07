require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The user experience analytics battery health runtime history entity contains the trend of runtime of a device over a period of 30 days
    class UserExperienceAnalyticsBatteryHealthDeviceRuntimeHistory < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The unique identifier of the device, Intune DeviceID or SCCM device id.
        @device_id
        ## 
        # The estimated runtime of the device when the battery is fully charged. Unit in minutes. Valid values -2147483648 to 2147483647
        @estimated_runtime_in_minutes
        ## 
        # The datetime for the instance of runtime history.
        @runtime_date_time
        ## 
        ## Instantiates a new userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_experience_analytics_battery_health_device_runtime_history
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserExperienceAnalyticsBatteryHealthDeviceRuntimeHistory.new
        end
        ## 
        ## Gets the deviceId property value. The unique identifier of the device, Intune DeviceID or SCCM device id.
        ## @return a string
        ## 
        def device_id
            return @device_id
        end
        ## 
        ## Sets the deviceId property value. The unique identifier of the device, Intune DeviceID or SCCM device id.
        ## @param value Value to set for the device_id property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
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
                "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                "estimatedRuntimeInMinutes" => lambda {|n| @estimated_runtime_in_minutes = n.get_number_value() },
                "runtimeDateTime" => lambda {|n| @runtime_date_time = n.get_string_value() },
            })
        end
        ## 
        ## Gets the runtimeDateTime property value. The datetime for the instance of runtime history.
        ## @return a string
        ## 
        def runtime_date_time
            return @runtime_date_time
        end
        ## 
        ## Sets the runtimeDateTime property value. The datetime for the instance of runtime history.
        ## @param value Value to set for the runtime_date_time property.
        ## @return a void
        ## 
        def runtime_date_time=(value)
            @runtime_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("deviceId", @device_id)
            writer.write_number_value("estimatedRuntimeInMinutes", @estimated_runtime_in_minutes)
            writer.write_string_value("runtimeDateTime", @runtime_date_time)
        end
    end
end
