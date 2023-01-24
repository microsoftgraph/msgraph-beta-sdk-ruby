require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class UserExperienceAnalyticsBatteryHealthCapacityDetails < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Number of active devices within the tenant. Valid values -2147483648 to 2147483647
        @active_devices
        ## 
        # Number of devices whose battery maximum capacity is greater than 50% but lesser than 80%. Valid values -2147483648 to 2147483647
        @battery_capacity_fair
        ## 
        # Number of devices whose battery maximum capacity is greater than 80%. Valid values -2147483648 to 2147483647
        @battery_capacity_good
        ## 
        # Number of devices whose battery maximum capacity is lesser than 50%. Valid values -2147483648 to 2147483647
        @battery_capacity_poor
        ## 
        # Recorded date time of this capacity details instance.
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
        ## @param value Value to set for the activeDevices property.
        ## @return a void
        ## 
        def active_devices=(value)
            @active_devices = value
        end
        ## 
        ## Gets the batteryCapacityFair property value. Number of devices whose battery maximum capacity is greater than 50% but lesser than 80%. Valid values -2147483648 to 2147483647
        ## @return a integer
        ## 
        def battery_capacity_fair
            return @battery_capacity_fair
        end
        ## 
        ## Sets the batteryCapacityFair property value. Number of devices whose battery maximum capacity is greater than 50% but lesser than 80%. Valid values -2147483648 to 2147483647
        ## @param value Value to set for the batteryCapacityFair property.
        ## @return a void
        ## 
        def battery_capacity_fair=(value)
            @battery_capacity_fair = value
        end
        ## 
        ## Gets the batteryCapacityGood property value. Number of devices whose battery maximum capacity is greater than 80%. Valid values -2147483648 to 2147483647
        ## @return a integer
        ## 
        def battery_capacity_good
            return @battery_capacity_good
        end
        ## 
        ## Sets the batteryCapacityGood property value. Number of devices whose battery maximum capacity is greater than 80%. Valid values -2147483648 to 2147483647
        ## @param value Value to set for the batteryCapacityGood property.
        ## @return a void
        ## 
        def battery_capacity_good=(value)
            @battery_capacity_good = value
        end
        ## 
        ## Gets the batteryCapacityPoor property value. Number of devices whose battery maximum capacity is lesser than 50%. Valid values -2147483648 to 2147483647
        ## @return a integer
        ## 
        def battery_capacity_poor
            return @battery_capacity_poor
        end
        ## 
        ## Sets the batteryCapacityPoor property value. Number of devices whose battery maximum capacity is lesser than 50%. Valid values -2147483648 to 2147483647
        ## @param value Value to set for the batteryCapacityPoor property.
        ## @return a void
        ## 
        def battery_capacity_poor=(value)
            @battery_capacity_poor = value
        end
        ## 
        ## Instantiates a new userExperienceAnalyticsBatteryHealthCapacityDetails and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_experience_analytics_battery_health_capacity_details
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserExperienceAnalyticsBatteryHealthCapacityDetails.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "activeDevices" => lambda {|n| @active_devices = n.get_number_value() },
                "batteryCapacityFair" => lambda {|n| @battery_capacity_fair = n.get_number_value() },
                "batteryCapacityGood" => lambda {|n| @battery_capacity_good = n.get_number_value() },
                "batteryCapacityPoor" => lambda {|n| @battery_capacity_poor = n.get_number_value() },
                "lastRefreshedDateTime" => lambda {|n| @last_refreshed_date_time = n.get_date_time_value() },
            })
        end
        ## 
        ## Gets the lastRefreshedDateTime property value. Recorded date time of this capacity details instance.
        ## @return a date_time
        ## 
        def last_refreshed_date_time
            return @last_refreshed_date_time
        end
        ## 
        ## Sets the lastRefreshedDateTime property value. Recorded date time of this capacity details instance.
        ## @param value Value to set for the lastRefreshedDateTime property.
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
            writer.write_number_value("batteryCapacityFair", @battery_capacity_fair)
            writer.write_number_value("batteryCapacityGood", @battery_capacity_good)
            writer.write_number_value("batteryCapacityPoor", @battery_capacity_poor)
            writer.write_date_time_value("lastRefreshedDateTime", @last_refreshed_date_time)
        end
    end
end
