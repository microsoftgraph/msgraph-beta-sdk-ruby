require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserExperienceAnalyticsBatteryHealthRuntimeDetails < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of active devices within the tenant. Valid values -2147483648 to 2147483647
            @active_devices
            ## 
            # Number of devices whose active runtime is greater than 3 hours but lesser than 5 hours. Valid values -2147483648 to 2147483647
            @battery_runtime_fair
            ## 
            # Number of devices  whose active runtime is greater than 5 hours. Valid values -2147483648 to 2147483647
            @battery_runtime_good
            ## 
            # Number of devices whose active runtime is lesser than 3 hours. Valid values -2147483648 to 2147483647
            @battery_runtime_poor
            ## 
            # Recorded date time of this runtime details instance.
            @last_refreshed_date_time
            ## 
            ## Gets the activeDevices property value. Number of active devices within the tenant. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def active_devices
                return @active_devices
            end
            ## 
            ## Sets the activeDevices property value. Number of active devices within the tenant. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the active_devices property.
            ## @return a void
            ## 
            def active_devices=(value)
                @active_devices = value
            end
            ## 
            ## Gets the batteryRuntimeFair property value. Number of devices whose active runtime is greater than 3 hours but lesser than 5 hours. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def battery_runtime_fair
                return @battery_runtime_fair
            end
            ## 
            ## Sets the batteryRuntimeFair property value. Number of devices whose active runtime is greater than 3 hours but lesser than 5 hours. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the battery_runtime_fair property.
            ## @return a void
            ## 
            def battery_runtime_fair=(value)
                @battery_runtime_fair = value
            end
            ## 
            ## Gets the batteryRuntimeGood property value. Number of devices  whose active runtime is greater than 5 hours. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def battery_runtime_good
                return @battery_runtime_good
            end
            ## 
            ## Sets the batteryRuntimeGood property value. Number of devices  whose active runtime is greater than 5 hours. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the battery_runtime_good property.
            ## @return a void
            ## 
            def battery_runtime_good=(value)
                @battery_runtime_good = value
            end
            ## 
            ## Gets the batteryRuntimePoor property value. Number of devices whose active runtime is lesser than 3 hours. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def battery_runtime_poor
                return @battery_runtime_poor
            end
            ## 
            ## Sets the batteryRuntimePoor property value. Number of devices whose active runtime is lesser than 3 hours. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the battery_runtime_poor property.
            ## @return a void
            ## 
            def battery_runtime_poor=(value)
                @battery_runtime_poor = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsBatteryHealthRuntimeDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_battery_health_runtime_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsBatteryHealthRuntimeDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeDevices" => lambda {|n| @active_devices = n.get_number_value() },
                    "batteryRuntimeFair" => lambda {|n| @battery_runtime_fair = n.get_number_value() },
                    "batteryRuntimeGood" => lambda {|n| @battery_runtime_good = n.get_number_value() },
                    "batteryRuntimePoor" => lambda {|n| @battery_runtime_poor = n.get_number_value() },
                    "lastRefreshedDateTime" => lambda {|n| @last_refreshed_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the lastRefreshedDateTime property value. Recorded date time of this runtime details instance.
            ## @return a date_time
            ## 
            def last_refreshed_date_time
                return @last_refreshed_date_time
            end
            ## 
            ## Sets the lastRefreshedDateTime property value. Recorded date time of this runtime details instance.
            ## @param value Value to set for the last_refreshed_date_time property.
            ## @return a void
            ## 
            def last_refreshed_date_time=(value)
                @last_refreshed_date_time = value
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
                writer.write_number_value("batteryRuntimeFair", @battery_runtime_fair)
                writer.write_number_value("batteryRuntimeGood", @battery_runtime_good)
                writer.write_number_value("batteryRuntimePoor", @battery_runtime_poor)
                writer.write_date_time_value("lastRefreshedDateTime", @last_refreshed_date_time)
            end
        end
    end
end
