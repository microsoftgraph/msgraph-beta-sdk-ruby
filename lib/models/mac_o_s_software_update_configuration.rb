require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MacOSSoftwareUpdateConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Update behavior options for macOS software updates.
            @all_other_update_behavior
            ## 
            # Update behavior options for macOS software updates.
            @config_data_update_behavior
            ## 
            # Update behavior options for macOS software updates.
            @critical_update_behavior
            ## 
            # Custom Time windows when updates will be allowed or blocked. This collection can contain a maximum of 20 elements.
            @custom_update_time_windows
            ## 
            # Update behavior options for macOS software updates.
            @firmware_update_behavior
            ## 
            # The maximum number of times the system allows the user to postpone an update before it’s installed. Supported values: 0 - 366. Valid values 0 to 365
            @max_user_deferrals_count
            ## 
            # The scheduling priority for downloading and preparing the requested update. Default: Low. Possible values: Null, Low, High. Possible values are: low, high, unknownFutureValue.
            @priority
            ## 
            # Update schedule type for macOS software updates.
            @update_schedule_type
            ## 
            # Minutes indicating UTC offset for each update time window
            @update_time_window_utc_offset_in_minutes
            ## 
            ## Gets the allOtherUpdateBehavior property value. Update behavior options for macOS software updates.
            ## @return a mac_o_s_software_update_behavior
            ## 
            def all_other_update_behavior
                return @all_other_update_behavior
            end
            ## 
            ## Sets the allOtherUpdateBehavior property value. Update behavior options for macOS software updates.
            ## @param value Value to set for the all_other_update_behavior property.
            ## @return a void
            ## 
            def all_other_update_behavior=(value)
                @all_other_update_behavior = value
            end
            ## 
            ## Gets the configDataUpdateBehavior property value. Update behavior options for macOS software updates.
            ## @return a mac_o_s_software_update_behavior
            ## 
            def config_data_update_behavior
                return @config_data_update_behavior
            end
            ## 
            ## Sets the configDataUpdateBehavior property value. Update behavior options for macOS software updates.
            ## @param value Value to set for the config_data_update_behavior property.
            ## @return a void
            ## 
            def config_data_update_behavior=(value)
                @config_data_update_behavior = value
            end
            ## 
            ## Instantiates a new MacOSSoftwareUpdateConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSSoftwareUpdateConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_software_update_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSSoftwareUpdateConfiguration.new
            end
            ## 
            ## Gets the criticalUpdateBehavior property value. Update behavior options for macOS software updates.
            ## @return a mac_o_s_software_update_behavior
            ## 
            def critical_update_behavior
                return @critical_update_behavior
            end
            ## 
            ## Sets the criticalUpdateBehavior property value. Update behavior options for macOS software updates.
            ## @param value Value to set for the critical_update_behavior property.
            ## @return a void
            ## 
            def critical_update_behavior=(value)
                @critical_update_behavior = value
            end
            ## 
            ## Gets the customUpdateTimeWindows property value. Custom Time windows when updates will be allowed or blocked. This collection can contain a maximum of 20 elements.
            ## @return a custom_update_time_window
            ## 
            def custom_update_time_windows
                return @custom_update_time_windows
            end
            ## 
            ## Sets the customUpdateTimeWindows property value. Custom Time windows when updates will be allowed or blocked. This collection can contain a maximum of 20 elements.
            ## @param value Value to set for the custom_update_time_windows property.
            ## @return a void
            ## 
            def custom_update_time_windows=(value)
                @custom_update_time_windows = value
            end
            ## 
            ## Gets the firmwareUpdateBehavior property value. Update behavior options for macOS software updates.
            ## @return a mac_o_s_software_update_behavior
            ## 
            def firmware_update_behavior
                return @firmware_update_behavior
            end
            ## 
            ## Sets the firmwareUpdateBehavior property value. Update behavior options for macOS software updates.
            ## @param value Value to set for the firmware_update_behavior property.
            ## @return a void
            ## 
            def firmware_update_behavior=(value)
                @firmware_update_behavior = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allOtherUpdateBehavior" => lambda {|n| @all_other_update_behavior = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSSoftwareUpdateBehavior) },
                    "configDataUpdateBehavior" => lambda {|n| @config_data_update_behavior = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSSoftwareUpdateBehavior) },
                    "criticalUpdateBehavior" => lambda {|n| @critical_update_behavior = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSSoftwareUpdateBehavior) },
                    "customUpdateTimeWindows" => lambda {|n| @custom_update_time_windows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomUpdateTimeWindow.create_from_discriminator_value(pn) }) },
                    "firmwareUpdateBehavior" => lambda {|n| @firmware_update_behavior = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSSoftwareUpdateBehavior) },
                    "maxUserDeferralsCount" => lambda {|n| @max_user_deferrals_count = n.get_number_value() },
                    "priority" => lambda {|n| @priority = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSPriority) },
                    "updateScheduleType" => lambda {|n| @update_schedule_type = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSSoftwareUpdateScheduleType) },
                    "updateTimeWindowUtcOffsetInMinutes" => lambda {|n| @update_time_window_utc_offset_in_minutes = n.get_number_value() },
                })
            end
            ## 
            ## Gets the maxUserDeferralsCount property value. The maximum number of times the system allows the user to postpone an update before it’s installed. Supported values: 0 - 366. Valid values 0 to 365
            ## @return a integer
            ## 
            def max_user_deferrals_count
                return @max_user_deferrals_count
            end
            ## 
            ## Sets the maxUserDeferralsCount property value. The maximum number of times the system allows the user to postpone an update before it’s installed. Supported values: 0 - 366. Valid values 0 to 365
            ## @param value Value to set for the max_user_deferrals_count property.
            ## @return a void
            ## 
            def max_user_deferrals_count=(value)
                @max_user_deferrals_count = value
            end
            ## 
            ## Gets the priority property value. The scheduling priority for downloading and preparing the requested update. Default: Low. Possible values: Null, Low, High. Possible values are: low, high, unknownFutureValue.
            ## @return a mac_o_s_priority
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. The scheduling priority for downloading and preparing the requested update. Default: Low. Possible values: Null, Low, High. Possible values are: low, high, unknownFutureValue.
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("allOtherUpdateBehavior", @all_other_update_behavior)
                writer.write_enum_value("configDataUpdateBehavior", @config_data_update_behavior)
                writer.write_enum_value("criticalUpdateBehavior", @critical_update_behavior)
                writer.write_collection_of_object_values("customUpdateTimeWindows", @custom_update_time_windows)
                writer.write_enum_value("firmwareUpdateBehavior", @firmware_update_behavior)
                writer.write_number_value("maxUserDeferralsCount", @max_user_deferrals_count)
                writer.write_enum_value("priority", @priority)
                writer.write_enum_value("updateScheduleType", @update_schedule_type)
                writer.write_number_value("updateTimeWindowUtcOffsetInMinutes", @update_time_window_utc_offset_in_minutes)
            end
            ## 
            ## Gets the updateScheduleType property value. Update schedule type for macOS software updates.
            ## @return a mac_o_s_software_update_schedule_type
            ## 
            def update_schedule_type
                return @update_schedule_type
            end
            ## 
            ## Sets the updateScheduleType property value. Update schedule type for macOS software updates.
            ## @param value Value to set for the update_schedule_type property.
            ## @return a void
            ## 
            def update_schedule_type=(value)
                @update_schedule_type = value
            end
            ## 
            ## Gets the updateTimeWindowUtcOffsetInMinutes property value. Minutes indicating UTC offset for each update time window
            ## @return a integer
            ## 
            def update_time_window_utc_offset_in_minutes
                return @update_time_window_utc_offset_in_minutes
            end
            ## 
            ## Sets the updateTimeWindowUtcOffsetInMinutes property value. Minutes indicating UTC offset for each update time window
            ## @param value Value to set for the update_time_window_utc_offset_in_minutes property.
            ## @return a void
            ## 
            def update_time_window_utc_offset_in_minutes=(value)
                @update_time_window_utc_offset_in_minutes = value
            end
        end
    end
end
