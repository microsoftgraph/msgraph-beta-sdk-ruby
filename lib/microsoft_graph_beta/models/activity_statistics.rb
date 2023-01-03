require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of activityStatistics entities.
    class ActivityStatistics < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The type of activity for which statistics are returned. The possible values are: call, chat, email, focus, and meeting.
        @activity
        ## 
        # Total hours spent on the activity. The value is represented in ISO 8601 format for durations.
        @duration
        ## 
        # Date when the activity ended, expressed in ISO 8601 format for calendar dates. For example, the property value could be '2019-07-03' that follows the YYYY-MM-DD format.
        @end_date
        ## 
        # Date when the activity started, expressed in ISO 8601 format for calendar dates. For example, the property value could be '2019-07-04' that follows the YYYY-MM-DD format.
        @start_date
        ## 
        # The time zone that the user sets in Microsoft Outlook is used for the computation. For example, the property value could be 'Pacific Standard Time.'
        @time_zone_used
        ## 
        ## Gets the activity property value. The type of activity for which statistics are returned. The possible values are: call, chat, email, focus, and meeting.
        ## @return a analytics_activity_type
        ## 
        def activity
            return @activity
        end
        ## 
        ## Sets the activity property value. The type of activity for which statistics are returned. The possible values are: call, chat, email, focus, and meeting.
        ## @param value Value to set for the activity property.
        ## @return a void
        ## 
        def activity=(value)
            @activity = value
        end
        ## 
        ## Instantiates a new activityStatistics and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a activity_statistics
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.callActivityStatistics"
                        return CallActivityStatistics.new
                    when "#microsoft.graph.chatActivityStatistics"
                        return ChatActivityStatistics.new
                    when "#microsoft.graph.emailActivityStatistics"
                        return EmailActivityStatistics.new
                    when "#microsoft.graph.focusActivityStatistics"
                        return FocusActivityStatistics.new
                    when "#microsoft.graph.meetingActivityStatistics"
                        return MeetingActivityStatistics.new
                end
            end
            return ActivityStatistics.new
        end
        ## 
        ## Gets the duration property value. Total hours spent on the activity. The value is represented in ISO 8601 format for durations.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def duration
            return @duration
        end
        ## 
        ## Sets the duration property value. Total hours spent on the activity. The value is represented in ISO 8601 format for durations.
        ## @param value Value to set for the duration property.
        ## @return a void
        ## 
        def duration=(value)
            @duration = value
        end
        ## 
        ## Gets the endDate property value. Date when the activity ended, expressed in ISO 8601 format for calendar dates. For example, the property value could be '2019-07-03' that follows the YYYY-MM-DD format.
        ## @return a date
        ## 
        def end_date
            return @end_date
        end
        ## 
        ## Sets the endDate property value. Date when the activity ended, expressed in ISO 8601 format for calendar dates. For example, the property value could be '2019-07-03' that follows the YYYY-MM-DD format.
        ## @param value Value to set for the endDate property.
        ## @return a void
        ## 
        def end_date=(value)
            @end_date = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "activity" => lambda {|n| @activity = n.get_enum_value(MicrosoftGraphBeta::Models::AnalyticsActivityType) },
                "duration" => lambda {|n| @duration = n.get_duration_value() },
                "endDate" => lambda {|n| @end_date = n.get_date_value() },
                "startDate" => lambda {|n| @start_date = n.get_date_value() },
                "timeZoneUsed" => lambda {|n| @time_zone_used = n.get_string_value() },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("activity", @activity)
            writer.write_duration_value("duration", @duration)
            writer.write_date_value("endDate", @end_date)
            writer.write_date_value("startDate", @start_date)
            writer.write_string_value("timeZoneUsed", @time_zone_used)
        end
        ## 
        ## Gets the startDate property value. Date when the activity started, expressed in ISO 8601 format for calendar dates. For example, the property value could be '2019-07-04' that follows the YYYY-MM-DD format.
        ## @return a date
        ## 
        def start_date
            return @start_date
        end
        ## 
        ## Sets the startDate property value. Date when the activity started, expressed in ISO 8601 format for calendar dates. For example, the property value could be '2019-07-04' that follows the YYYY-MM-DD format.
        ## @param value Value to set for the startDate property.
        ## @return a void
        ## 
        def start_date=(value)
            @start_date = value
        end
        ## 
        ## Gets the timeZoneUsed property value. The time zone that the user sets in Microsoft Outlook is used for the computation. For example, the property value could be 'Pacific Standard Time.'
        ## @return a string
        ## 
        def time_zone_used
            return @time_zone_used
        end
        ## 
        ## Sets the timeZoneUsed property value. The time zone that the user sets in Microsoft Outlook is used for the computation. For example, the property value could be 'Pacific Standard Time.'
        ## @param value Value to set for the timeZoneUsed property.
        ## @return a void
        ## 
        def time_zone_used=(value)
            @time_zone_used = value
        end
    end
end
