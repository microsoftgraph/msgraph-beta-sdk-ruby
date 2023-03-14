require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MeetingRegistration < MicrosoftGraphBeta::Models::MeetingRegistrationBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Custom registration questions.
            @custom_questions
            ## 
            # The description of the meeting.
            @description
            ## 
            # The meeting end time in UTC.
            @end_date_time
            ## 
            # The number of times the registration page has been visited. Read-only.
            @registration_page_view_count
            ## 
            # The URL of the registration page. Read-only.
            @registration_page_web_url
            ## 
            # The meeting speaker's information.
            @speakers
            ## 
            # The meeting start time in UTC.
            @start_date_time
            ## 
            # The subject of the meeting.
            @subject
            ## 
            ## Instantiates a new MeetingRegistration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.meetingRegistration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a meeting_registration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MeetingRegistration.new
            end
            ## 
            ## Gets the customQuestions property value. Custom registration questions.
            ## @return a meeting_registration_question
            ## 
            def custom_questions
                return @custom_questions
            end
            ## 
            ## Sets the customQuestions property value. Custom registration questions.
            ## @param value Value to set for the custom_questions property.
            ## @return a void
            ## 
            def custom_questions=(value)
                @custom_questions = value
            end
            ## 
            ## Gets the description property value. The description of the meeting.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the meeting.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the endDateTime property value. The meeting end time in UTC.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The meeting end time in UTC.
            ## @param value Value to set for the end_date_time property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "customQuestions" => lambda {|n| @custom_questions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MeetingRegistrationQuestion.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "registrationPageViewCount" => lambda {|n| @registration_page_view_count = n.get_number_value() },
                    "registrationPageWebUrl" => lambda {|n| @registration_page_web_url = n.get_string_value() },
                    "speakers" => lambda {|n| @speakers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MeetingSpeaker.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                })
            end
            ## 
            ## Gets the registrationPageViewCount property value. The number of times the registration page has been visited. Read-only.
            ## @return a integer
            ## 
            def registration_page_view_count
                return @registration_page_view_count
            end
            ## 
            ## Sets the registrationPageViewCount property value. The number of times the registration page has been visited. Read-only.
            ## @param value Value to set for the registration_page_view_count property.
            ## @return a void
            ## 
            def registration_page_view_count=(value)
                @registration_page_view_count = value
            end
            ## 
            ## Gets the registrationPageWebUrl property value. The URL of the registration page. Read-only.
            ## @return a string
            ## 
            def registration_page_web_url
                return @registration_page_web_url
            end
            ## 
            ## Sets the registrationPageWebUrl property value. The URL of the registration page. Read-only.
            ## @param value Value to set for the registration_page_web_url property.
            ## @return a void
            ## 
            def registration_page_web_url=(value)
                @registration_page_web_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("customQuestions", @custom_questions)
                writer.write_string_value("description", @description)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_number_value("registrationPageViewCount", @registration_page_view_count)
                writer.write_string_value("registrationPageWebUrl", @registration_page_web_url)
                writer.write_collection_of_object_values("speakers", @speakers)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_string_value("subject", @subject)
            end
            ## 
            ## Gets the speakers property value. The meeting speaker's information.
            ## @return a meeting_speaker
            ## 
            def speakers
                return @speakers
            end
            ## 
            ## Sets the speakers property value. The meeting speaker's information.
            ## @param value Value to set for the speakers property.
            ## @return a void
            ## 
            def speakers=(value)
                @speakers = value
            end
            ## 
            ## Gets the startDateTime property value. The meeting start time in UTC.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The meeting start time in UTC.
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the subject property value. The subject of the meeting.
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject of the meeting.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
        end
    end
end
