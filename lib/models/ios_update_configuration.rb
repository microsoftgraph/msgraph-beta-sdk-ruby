require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class IosUpdateConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Active Hours End (active hours mean the time window when updates install should not happen)
        @active_hours_end
        ## 
        # Active Hours Start (active hours mean the time window when updates install should not happen)
        @active_hours_start
        ## 
        # If update schedule type is set to use time window scheduling, custom time windows when updates will be scheduled. This collection can contain a maximum of 20 elements.
        @custom_update_time_windows
        ## 
        # If left unspecified, devices will update to the latest version of the OS.
        @desired_os_version
        ## 
        # Days before software updates are visible to iOS devices ranging from 0 to 90 inclusive
        @enforced_software_update_delay_in_days
        ## 
        # Is setting enabled in UI
        @is_enabled
        ## 
        # Days in week for which active hours are configured. This collection can contain a maximum of 7 elements.
        @scheduled_install_days
        ## 
        # Update schedule type for iOS software updates.
        @update_schedule_type
        ## 
        # UTC Time Offset indicated in minutes
        @utc_time_offset_in_minutes
        ## 
        ## Gets the activeHoursEnd property value. Active Hours End (active hours mean the time window when updates install should not happen)
        ## @return a time
        ## 
        def active_hours_end
            return @active_hours_end
        end
        ## 
        ## Sets the activeHoursEnd property value. Active Hours End (active hours mean the time window when updates install should not happen)
        ## @param value Value to set for the activeHoursEnd property.
        ## @return a void
        ## 
        def active_hours_end=(value)
            @active_hours_end = value
        end
        ## 
        ## Gets the activeHoursStart property value. Active Hours Start (active hours mean the time window when updates install should not happen)
        ## @return a time
        ## 
        def active_hours_start
            return @active_hours_start
        end
        ## 
        ## Sets the activeHoursStart property value. Active Hours Start (active hours mean the time window when updates install should not happen)
        ## @param value Value to set for the activeHoursStart property.
        ## @return a void
        ## 
        def active_hours_start=(value)
            @active_hours_start = value
        end
        ## 
        ## Instantiates a new IosUpdateConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.iosUpdateConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a ios_update_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return IosUpdateConfiguration.new
        end
        ## 
        ## Gets the customUpdateTimeWindows property value. If update schedule type is set to use time window scheduling, custom time windows when updates will be scheduled. This collection can contain a maximum of 20 elements.
        ## @return a custom_update_time_window
        ## 
        def custom_update_time_windows
            return @custom_update_time_windows
        end
        ## 
        ## Sets the customUpdateTimeWindows property value. If update schedule type is set to use time window scheduling, custom time windows when updates will be scheduled. This collection can contain a maximum of 20 elements.
        ## @param value Value to set for the customUpdateTimeWindows property.
        ## @return a void
        ## 
        def custom_update_time_windows=(value)
            @custom_update_time_windows = value
        end
        ## 
        ## Gets the desiredOsVersion property value. If left unspecified, devices will update to the latest version of the OS.
        ## @return a string
        ## 
        def desired_os_version
            return @desired_os_version
        end
        ## 
        ## Sets the desiredOsVersion property value. If left unspecified, devices will update to the latest version of the OS.
        ## @param value Value to set for the desiredOsVersion property.
        ## @return a void
        ## 
        def desired_os_version=(value)
            @desired_os_version = value
        end
        ## 
        ## Gets the enforcedSoftwareUpdateDelayInDays property value. Days before software updates are visible to iOS devices ranging from 0 to 90 inclusive
        ## @return a integer
        ## 
        def enforced_software_update_delay_in_days
            return @enforced_software_update_delay_in_days
        end
        ## 
        ## Sets the enforcedSoftwareUpdateDelayInDays property value. Days before software updates are visible to iOS devices ranging from 0 to 90 inclusive
        ## @param value Value to set for the enforcedSoftwareUpdateDelayInDays property.
        ## @return a void
        ## 
        def enforced_software_update_delay_in_days=(value)
            @enforced_software_update_delay_in_days = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "activeHoursEnd" => lambda {|n| @active_hours_end = n.get_time_value() },
                "activeHoursStart" => lambda {|n| @active_hours_start = n.get_time_value() },
                "customUpdateTimeWindows" => lambda {|n| @custom_update_time_windows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomUpdateTimeWindow.create_from_discriminator_value(pn) }) },
                "desiredOsVersion" => lambda {|n| @desired_os_version = n.get_string_value() },
                "enforcedSoftwareUpdateDelayInDays" => lambda {|n| @enforced_software_update_delay_in_days = n.get_number_value() },
                "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                "scheduledInstallDays" => lambda {|n| @scheduled_install_days = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DayOfWeek.create_from_discriminator_value(pn) }) },
                "updateScheduleType" => lambda {|n| @update_schedule_type = n.get_enum_value(MicrosoftGraphBeta::Models::IosSoftwareUpdateScheduleType) },
                "utcTimeOffsetInMinutes" => lambda {|n| @utc_time_offset_in_minutes = n.get_number_value() },
            })
        end
        ## 
        ## Gets the isEnabled property value. Is setting enabled in UI
        ## @return a boolean
        ## 
        def is_enabled
            return @is_enabled
        end
        ## 
        ## Sets the isEnabled property value. Is setting enabled in UI
        ## @param value Value to set for the isEnabled property.
        ## @return a void
        ## 
        def is_enabled=(value)
            @is_enabled = value
        end
        ## 
        ## Gets the scheduledInstallDays property value. Days in week for which active hours are configured. This collection can contain a maximum of 7 elements.
        ## @return a day_of_week
        ## 
        def scheduled_install_days
            return @scheduled_install_days
        end
        ## 
        ## Sets the scheduledInstallDays property value. Days in week for which active hours are configured. This collection can contain a maximum of 7 elements.
        ## @param value Value to set for the scheduledInstallDays property.
        ## @return a void
        ## 
        def scheduled_install_days=(value)
            @scheduled_install_days = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_time_value("activeHoursEnd", @active_hours_end)
            writer.write_time_value("activeHoursStart", @active_hours_start)
            writer.write_collection_of_object_values("customUpdateTimeWindows", @custom_update_time_windows)
            writer.write_string_value("desiredOsVersion", @desired_os_version)
            writer.write_number_value("enforcedSoftwareUpdateDelayInDays", @enforced_software_update_delay_in_days)
            writer.write_boolean_value("isEnabled", @is_enabled)
            writer.write_collection_of_object_values("scheduledInstallDays", @scheduled_install_days)
            writer.write_enum_value("updateScheduleType", @update_schedule_type)
            writer.write_number_value("utcTimeOffsetInMinutes", @utc_time_offset_in_minutes)
        end
        ## 
        ## Gets the updateScheduleType property value. Update schedule type for iOS software updates.
        ## @return a ios_software_update_schedule_type
        ## 
        def update_schedule_type
            return @update_schedule_type
        end
        ## 
        ## Sets the updateScheduleType property value. Update schedule type for iOS software updates.
        ## @param value Value to set for the updateScheduleType property.
        ## @return a void
        ## 
        def update_schedule_type=(value)
            @update_schedule_type = value
        end
        ## 
        ## Gets the utcTimeOffsetInMinutes property value. UTC Time Offset indicated in minutes
        ## @return a integer
        ## 
        def utc_time_offset_in_minutes
            return @utc_time_offset_in_minutes
        end
        ## 
        ## Sets the utcTimeOffsetInMinutes property value. UTC Time Offset indicated in minutes
        ## @param value Value to set for the utcTimeOffsetInMinutes property.
        ## @return a void
        ## 
        def utc_time_offset_in_minutes=(value)
            @utc_time_offset_in_minutes = value
        end
    end
end
