require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Presence < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The supplemental information to a user's availability. Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive,InAMeeting, Offline, OffWork,OutOfOffice, PresenceUnknown,Presenting, UrgentInterruptionsOnly.
            @activity
            ## 
            # The base presence information for a user. Possible values are Available, AvailableIdle,  Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
            @availability
            ## 
            # The out of office settings for a user.
            @out_of_office_settings
            ## 
            # The presence status message of a user.
            @status_message
            ## 
            ## Gets the activity property value. The supplemental information to a user's availability. Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive,InAMeeting, Offline, OffWork,OutOfOffice, PresenceUnknown,Presenting, UrgentInterruptionsOnly.
            ## @return a string
            ## 
            def activity
                return @activity
            end
            ## 
            ## Sets the activity property value. The supplemental information to a user's availability. Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive,InAMeeting, Offline, OffWork,OutOfOffice, PresenceUnknown,Presenting, UrgentInterruptionsOnly.
            ## @param value Value to set for the activity property.
            ## @return a void
            ## 
            def activity=(value)
                @activity = value
            end
            ## 
            ## Gets the availability property value. The base presence information for a user. Possible values are Available, AvailableIdle,  Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
            ## @return a string
            ## 
            def availability
                return @availability
            end
            ## 
            ## Sets the availability property value. The base presence information for a user. Possible values are Available, AvailableIdle,  Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
            ## @param value Value to set for the availability property.
            ## @return a void
            ## 
            def availability=(value)
                @availability = value
            end
            ## 
            ## Instantiates a new presence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a presence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Presence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activity" => lambda {|n| @activity = n.get_string_value() },
                    "availability" => lambda {|n| @availability = n.get_string_value() },
                    "outOfOfficeSettings" => lambda {|n| @out_of_office_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OutOfOfficeSettings.create_from_discriminator_value(pn) }) },
                    "statusMessage" => lambda {|n| @status_message = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PresenceStatusMessage.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the outOfOfficeSettings property value. The out of office settings for a user.
            ## @return a out_of_office_settings
            ## 
            def out_of_office_settings
                return @out_of_office_settings
            end
            ## 
            ## Sets the outOfOfficeSettings property value. The out of office settings for a user.
            ## @param value Value to set for the outOfOfficeSettings property.
            ## @return a void
            ## 
            def out_of_office_settings=(value)
                @out_of_office_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("activity", @activity)
                writer.write_string_value("availability", @availability)
                writer.write_object_value("outOfOfficeSettings", @out_of_office_settings)
                writer.write_object_value("statusMessage", @status_message)
            end
            ## 
            ## Gets the statusMessage property value. The presence status message of a user.
            ## @return a presence_status_message
            ## 
            def status_message
                return @status_message
            end
            ## 
            ## Sets the statusMessage property value. The presence status message of a user.
            ## @param value Value to set for the statusMessage property.
            ## @return a void
            ## 
            def status_message=(value)
                @status_message = value
            end
        end
    end
end
