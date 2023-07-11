require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VirtualEventRegistrant < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Time in UTC when the registrant cancels their registration for the virtual event. Only appears when applicable.
            @cancelation_date_time
            ## 
            # Email address of the registrant.
            @email
            ## 
            # First name of the registrant.
            @first_name
            ## 
            # Last name of the registrant.
            @last_name
            ## 
            # Time in UTC when the registrant registers for the virtual event.
            @registration_date_time
            ## 
            # The registrant's answer to the registration questions.
            @registration_question_answers
            ## 
            # Registration status of the registrant. Read-only.
            @status
            ## 
            # The registrant's AAD user ID. Only appears when the registrant is registered in AAD.
            @user_id
            ## 
            ## Gets the cancelationDateTime property value. Time in UTC when the registrant cancels their registration for the virtual event. Only appears when applicable.
            ## @return a date_time
            ## 
            def cancelation_date_time
                return @cancelation_date_time
            end
            ## 
            ## Sets the cancelationDateTime property value. Time in UTC when the registrant cancels their registration for the virtual event. Only appears when applicable.
            ## @param value Value to set for the cancelation_date_time property.
            ## @return a void
            ## 
            def cancelation_date_time=(value)
                @cancelation_date_time = value
            end
            ## 
            ## Instantiates a new virtualEventRegistrant and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_registrant
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventRegistrant.new
            end
            ## 
            ## Gets the email property value. Email address of the registrant.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. Email address of the registrant.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## Gets the firstName property value. First name of the registrant.
            ## @return a string
            ## 
            def first_name
                return @first_name
            end
            ## 
            ## Sets the firstName property value. First name of the registrant.
            ## @param value Value to set for the first_name property.
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
                    "cancelationDateTime" => lambda {|n| @cancelation_date_time = n.get_date_time_value() },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "firstName" => lambda {|n| @first_name = n.get_string_value() },
                    "lastName" => lambda {|n| @last_name = n.get_string_value() },
                    "registrationDateTime" => lambda {|n| @registration_date_time = n.get_date_time_value() },
                    "registrationQuestionAnswers" => lambda {|n| @registration_question_answers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VirtualEventRegistrationQuestionAnswer.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::VirtualEventAttendeeRegistrationStatus) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastName property value. Last name of the registrant.
            ## @return a string
            ## 
            def last_name
                return @last_name
            end
            ## 
            ## Sets the lastName property value. Last name of the registrant.
            ## @param value Value to set for the last_name property.
            ## @return a void
            ## 
            def last_name=(value)
                @last_name = value
            end
            ## 
            ## Gets the registrationDateTime property value. Time in UTC when the registrant registers for the virtual event.
            ## @return a date_time
            ## 
            def registration_date_time
                return @registration_date_time
            end
            ## 
            ## Sets the registrationDateTime property value. Time in UTC when the registrant registers for the virtual event.
            ## @param value Value to set for the registration_date_time property.
            ## @return a void
            ## 
            def registration_date_time=(value)
                @registration_date_time = value
            end
            ## 
            ## Gets the registrationQuestionAnswers property value. The registrant's answer to the registration questions.
            ## @return a virtual_event_registration_question_answer
            ## 
            def registration_question_answers
                return @registration_question_answers
            end
            ## 
            ## Sets the registrationQuestionAnswers property value. The registrant's answer to the registration questions.
            ## @param value Value to set for the registration_question_answers property.
            ## @return a void
            ## 
            def registration_question_answers=(value)
                @registration_question_answers = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("cancelationDateTime", @cancelation_date_time)
                writer.write_string_value("email", @email)
                writer.write_string_value("firstName", @first_name)
                writer.write_string_value("lastName", @last_name)
                writer.write_date_time_value("registrationDateTime", @registration_date_time)
                writer.write_collection_of_object_values("registrationQuestionAnswers", @registration_question_answers)
                writer.write_enum_value("status", @status)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the status property value. Registration status of the registrant. Read-only.
            ## @return a virtual_event_attendee_registration_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Registration status of the registrant. Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the userId property value. The registrant's AAD user ID. Only appears when the registrant is registered in AAD.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The registrant's AAD user ID. Only appears when the registrant is registered in AAD.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
