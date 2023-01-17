require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class MeetingRegistrant < MicrosoftGraphBeta::Models::MeetingRegistrantBase
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The registrant's answer to custom questions.
        @custom_question_answers
        ## 
        # The email address of the registrant.
        @email
        ## 
        # The first name of the registrant.
        @first_name
        ## 
        # The last name of the registrant.
        @last_name
        ## 
        # Time in UTC when the registrant registers for the meeting. Read-only.
        @registration_date_time
        ## 
        # The registration status of the registrant. Read-only.
        @status
        ## 
        ## Instantiates a new MeetingRegistrant and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.meetingRegistrant"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a meeting_registrant
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MeetingRegistrant.new
        end
        ## 
        ## Gets the customQuestionAnswers property value. The registrant's answer to custom questions.
        ## @return a custom_question_answer
        ## 
        def custom_question_answers
            return @custom_question_answers
        end
        ## 
        ## Sets the customQuestionAnswers property value. The registrant's answer to custom questions.
        ## @param value Value to set for the customQuestionAnswers property.
        ## @return a void
        ## 
        def custom_question_answers=(value)
            @custom_question_answers = value
        end
        ## 
        ## Gets the email property value. The email address of the registrant.
        ## @return a string
        ## 
        def email
            return @email
        end
        ## 
        ## Sets the email property value. The email address of the registrant.
        ## @param value Value to set for the email property.
        ## @return a void
        ## 
        def email=(value)
            @email = value
        end
        ## 
        ## Gets the firstName property value. The first name of the registrant.
        ## @return a string
        ## 
        def first_name
            return @first_name
        end
        ## 
        ## Sets the firstName property value. The first name of the registrant.
        ## @param value Value to set for the firstName property.
        ## @return a void
        ## 
        def first_name=(value)
            @first_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "customQuestionAnswers" => lambda {|n| @custom_question_answers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomQuestionAnswer.create_from_discriminator_value(pn) }) },
                "email" => lambda {|n| @email = n.get_string_value() },
                "firstName" => lambda {|n| @first_name = n.get_string_value() },
                "lastName" => lambda {|n| @last_name = n.get_string_value() },
                "registrationDateTime" => lambda {|n| @registration_date_time = n.get_date_time_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::MeetingRegistrantStatus) },
            })
        end
        ## 
        ## Gets the lastName property value. The last name of the registrant.
        ## @return a string
        ## 
        def last_name
            return @last_name
        end
        ## 
        ## Sets the lastName property value. The last name of the registrant.
        ## @param value Value to set for the lastName property.
        ## @return a void
        ## 
        def last_name=(value)
            @last_name = value
        end
        ## 
        ## Gets the registrationDateTime property value. Time in UTC when the registrant registers for the meeting. Read-only.
        ## @return a date_time
        ## 
        def registration_date_time
            return @registration_date_time
        end
        ## 
        ## Sets the registrationDateTime property value. Time in UTC when the registrant registers for the meeting. Read-only.
        ## @param value Value to set for the registrationDateTime property.
        ## @return a void
        ## 
        def registration_date_time=(value)
            @registration_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("customQuestionAnswers", @custom_question_answers)
            writer.write_string_value("email", @email)
            writer.write_string_value("firstName", @first_name)
            writer.write_string_value("lastName", @last_name)
            writer.write_date_time_value("registrationDateTime", @registration_date_time)
            writer.write_enum_value("status", @status)
        end
        ## 
        ## Gets the status property value. The registration status of the registrant. Read-only.
        ## @return a meeting_registrant_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The registration status of the registrant. Read-only.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
