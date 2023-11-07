require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Collection of properties describing the current status of the battery.
        class UserExperienceAnalyticsDeviceBatteryDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Uniquely identifies the batteries in a single device.
            @battery_id
            ## 
            # Number of times the battery has been discharged an amount that equals 100% of its capacity, but not necessarily by discharging it from 100% to 0%. Valid values 0 to 2147483647
            @full_battery_drain_count
            ## 
            # Ratio of current capacity and design capacity of the battery. Unit in percentage and values range from 0-100. Valid values 0 to 2147483647
            @max_capacity_percentage
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the batteryId property value. Uniquely identifies the batteries in a single device.
            ## @return a string
            ## 
            def battery_id
                return @battery_id
            end
            ## 
            ## Sets the batteryId property value. Uniquely identifies the batteries in a single device.
            ## @param value Value to set for the batteryId property.
            ## @return a void
            ## 
            def battery_id=(value)
                @battery_id = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsDeviceBatteryDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_device_battery_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsDeviceBatteryDetail.new
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
                return {
                    "batteryId" => lambda {|n| @battery_id = n.get_string_value() },
                    "fullBatteryDrainCount" => lambda {|n| @full_battery_drain_count = n.get_number_value() },
                    "maxCapacityPercentage" => lambda {|n| @max_capacity_percentage = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the maxCapacityPercentage property value. Ratio of current capacity and design capacity of the battery. Unit in percentage and values range from 0-100. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def max_capacity_percentage
                return @max_capacity_percentage
            end
            ## 
            ## Sets the maxCapacityPercentage property value. Ratio of current capacity and design capacity of the battery. Unit in percentage and values range from 0-100. Valid values 0 to 2147483647
            ## @param value Value to set for the maxCapacityPercentage property.
            ## @return a void
            ## 
            def max_capacity_percentage=(value)
                @max_capacity_percentage = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("batteryId", @battery_id)
                writer.write_number_value("fullBatteryDrainCount", @full_battery_drain_count)
                writer.write_number_value("maxCapacityPercentage", @max_capacity_percentage)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
