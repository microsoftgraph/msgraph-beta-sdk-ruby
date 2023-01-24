require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The user experience analytics device events entity contains NRT device events details.
    class UserExperienceAnalyticsDeviceTimelineEvents < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The id of the device where the event occurred.
        @device_id
        ## 
        # Placeholder value for future expansion.
        @event_additional_information
        ## 
        # The time the event occured.
        @event_date_time
        ## 
        # The details provided by the event, format depends on event type.
        @event_details
        ## 
        # Indicates device event level. Possible values are: None, Verbose, Information, Warning, Error, Critical
        @event_level
        ## 
        # The name of the event. Examples include: BootEvent, LogonEvent, AppCrashEvent, AppHangEvent.
        @event_name
        ## 
        # The source of the event. Examples include: Intune, Sccm.
        @event_source
        ## 
        ## Instantiates a new userExperienceAnalyticsDeviceTimelineEvents and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_experience_analytics_device_timeline_events
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserExperienceAnalyticsDeviceTimelineEvents.new
        end
        ## 
        ## Gets the deviceId property value. The id of the device where the event occurred.
        ## @return a string
        ## 
        def device_id
            return @device_id
        end
        ## 
        ## Sets the deviceId property value. The id of the device where the event occurred.
        ## @param value Value to set for the deviceId property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
        end
        ## 
        ## Gets the eventAdditionalInformation property value. Placeholder value for future expansion.
        ## @return a string
        ## 
        def event_additional_information
            return @event_additional_information
        end
        ## 
        ## Sets the eventAdditionalInformation property value. Placeholder value for future expansion.
        ## @param value Value to set for the eventAdditionalInformation property.
        ## @return a void
        ## 
        def event_additional_information=(value)
            @event_additional_information = value
        end
        ## 
        ## Gets the eventDateTime property value. The time the event occured.
        ## @return a date_time
        ## 
        def event_date_time
            return @event_date_time
        end
        ## 
        ## Sets the eventDateTime property value. The time the event occured.
        ## @param value Value to set for the eventDateTime property.
        ## @return a void
        ## 
        def event_date_time=(value)
            @event_date_time = value
        end
        ## 
        ## Gets the eventDetails property value. The details provided by the event, format depends on event type.
        ## @return a string
        ## 
        def event_details
            return @event_details
        end
        ## 
        ## Sets the eventDetails property value. The details provided by the event, format depends on event type.
        ## @param value Value to set for the eventDetails property.
        ## @return a void
        ## 
        def event_details=(value)
            @event_details = value
        end
        ## 
        ## Gets the eventLevel property value. Indicates device event level. Possible values are: None, Verbose, Information, Warning, Error, Critical
        ## @return a device_event_level
        ## 
        def event_level
            return @event_level
        end
        ## 
        ## Sets the eventLevel property value. Indicates device event level. Possible values are: None, Verbose, Information, Warning, Error, Critical
        ## @param value Value to set for the eventLevel property.
        ## @return a void
        ## 
        def event_level=(value)
            @event_level = value
        end
        ## 
        ## Gets the eventName property value. The name of the event. Examples include: BootEvent, LogonEvent, AppCrashEvent, AppHangEvent.
        ## @return a string
        ## 
        def event_name
            return @event_name
        end
        ## 
        ## Sets the eventName property value. The name of the event. Examples include: BootEvent, LogonEvent, AppCrashEvent, AppHangEvent.
        ## @param value Value to set for the eventName property.
        ## @return a void
        ## 
        def event_name=(value)
            @event_name = value
        end
        ## 
        ## Gets the eventSource property value. The source of the event. Examples include: Intune, Sccm.
        ## @return a string
        ## 
        def event_source
            return @event_source
        end
        ## 
        ## Sets the eventSource property value. The source of the event. Examples include: Intune, Sccm.
        ## @param value Value to set for the eventSource property.
        ## @return a void
        ## 
        def event_source=(value)
            @event_source = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                "eventAdditionalInformation" => lambda {|n| @event_additional_information = n.get_string_value() },
                "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
                "eventDetails" => lambda {|n| @event_details = n.get_string_value() },
                "eventLevel" => lambda {|n| @event_level = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceEventLevel) },
                "eventName" => lambda {|n| @event_name = n.get_string_value() },
                "eventSource" => lambda {|n| @event_source = n.get_string_value() },
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
            writer.write_string_value("deviceId", @device_id)
            writer.write_string_value("eventAdditionalInformation", @event_additional_information)
            writer.write_date_time_value("eventDateTime", @event_date_time)
            writer.write_string_value("eventDetails", @event_details)
            writer.write_enum_value("eventLevel", @event_level)
            writer.write_string_value("eventName", @event_name)
            writer.write_string_value("eventSource", @event_source)
        end
    end
end
