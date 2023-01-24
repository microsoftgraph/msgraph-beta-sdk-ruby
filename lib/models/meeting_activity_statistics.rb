require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class MeetingActivityStatistics < MicrosoftGraphBeta::Models::ActivityStatistics
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Time spent on meetings outside of working hours, which is based on the user's Outlook calendar setting for work hours. The value is represented in ISO 8601 format for durations.
        @after_hours
        ## 
        # Time spent in conflicting meetings (meetings that overlap with other meetings that the person accepted and where the person’s status is set to Busy). The value is represented in ISO 8601 format for durations.
        @conflicting
        ## 
        # Time spent in long meetings (more than an hour in duration). The value is represented in ISO 8601 format for durations.
        @long
        ## 
        # Time spent in meetings where the person was multitasking (read/sent more than a minimum number of emails and/or sent more than a minimum number of messages in Teams or in Skype for Business). The value is represented in ISO 8601 format for durations.
        @multitasking
        ## 
        # Time spent in meetings organized by the user. The value is represented in ISO 8601 format for durations.
        @organized
        ## 
        # Time spent on recurring meetings. The value is represented in ISO 8601 format for durations.
        @recurring
        ## 
        ## Gets the afterHours property value. Time spent on meetings outside of working hours, which is based on the user's Outlook calendar setting for work hours. The value is represented in ISO 8601 format for durations.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def after_hours
            return @after_hours
        end
        ## 
        ## Sets the afterHours property value. Time spent on meetings outside of working hours, which is based on the user's Outlook calendar setting for work hours. The value is represented in ISO 8601 format for durations.
        ## @param value Value to set for the afterHours property.
        ## @return a void
        ## 
        def after_hours=(value)
            @after_hours = value
        end
        ## 
        ## Gets the conflicting property value. Time spent in conflicting meetings (meetings that overlap with other meetings that the person accepted and where the person’s status is set to Busy). The value is represented in ISO 8601 format for durations.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def conflicting
            return @conflicting
        end
        ## 
        ## Sets the conflicting property value. Time spent in conflicting meetings (meetings that overlap with other meetings that the person accepted and where the person’s status is set to Busy). The value is represented in ISO 8601 format for durations.
        ## @param value Value to set for the conflicting property.
        ## @return a void
        ## 
        def conflicting=(value)
            @conflicting = value
        end
        ## 
        ## Instantiates a new MeetingActivityStatistics and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.meetingActivityStatistics"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a meeting_activity_statistics
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MeetingActivityStatistics.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "afterHours" => lambda {|n| @after_hours = n.get_duration_value() },
                "conflicting" => lambda {|n| @conflicting = n.get_duration_value() },
                "long" => lambda {|n| @long = n.get_duration_value() },
                "multitasking" => lambda {|n| @multitasking = n.get_duration_value() },
                "organized" => lambda {|n| @organized = n.get_duration_value() },
                "recurring" => lambda {|n| @recurring = n.get_duration_value() },
            })
        end
        ## 
        ## Gets the long property value. Time spent in long meetings (more than an hour in duration). The value is represented in ISO 8601 format for durations.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def long
            return @long
        end
        ## 
        ## Sets the long property value. Time spent in long meetings (more than an hour in duration). The value is represented in ISO 8601 format for durations.
        ## @param value Value to set for the long property.
        ## @return a void
        ## 
        def long=(value)
            @long = value
        end
        ## 
        ## Gets the multitasking property value. Time spent in meetings where the person was multitasking (read/sent more than a minimum number of emails and/or sent more than a minimum number of messages in Teams or in Skype for Business). The value is represented in ISO 8601 format for durations.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def multitasking
            return @multitasking
        end
        ## 
        ## Sets the multitasking property value. Time spent in meetings where the person was multitasking (read/sent more than a minimum number of emails and/or sent more than a minimum number of messages in Teams or in Skype for Business). The value is represented in ISO 8601 format for durations.
        ## @param value Value to set for the multitasking property.
        ## @return a void
        ## 
        def multitasking=(value)
            @multitasking = value
        end
        ## 
        ## Gets the organized property value. Time spent in meetings organized by the user. The value is represented in ISO 8601 format for durations.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def organized
            return @organized
        end
        ## 
        ## Sets the organized property value. Time spent in meetings organized by the user. The value is represented in ISO 8601 format for durations.
        ## @param value Value to set for the organized property.
        ## @return a void
        ## 
        def organized=(value)
            @organized = value
        end
        ## 
        ## Gets the recurring property value. Time spent on recurring meetings. The value is represented in ISO 8601 format for durations.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def recurring
            return @recurring
        end
        ## 
        ## Sets the recurring property value. Time spent on recurring meetings. The value is represented in ISO 8601 format for durations.
        ## @param value Value to set for the recurring property.
        ## @return a void
        ## 
        def recurring=(value)
            @recurring = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_duration_value("afterHours", @after_hours)
            writer.write_duration_value("conflicting", @conflicting)
            writer.write_duration_value("long", @long)
            writer.write_duration_value("multitasking", @multitasking)
            writer.write_duration_value("organized", @organized)
            writer.write_duration_value("recurring", @recurring)
        end
    end
end
