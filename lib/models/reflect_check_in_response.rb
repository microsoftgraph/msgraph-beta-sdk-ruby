require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ReflectCheckInResponse < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Identifier for the Reflect check-in.
            @check_in_id
            ## 
            # The question or prompt of the Reflect check-in that this response addresses.
            @check_in_title
            ## 
            # ID of the class associated with the Reflect check-in.
            @class_id
            ## 
            # Date and time when the Reflect check-in was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # ID of the user who created the Reflect check-in.
            @creator_id
            ## 
            # Indicates whether the Reflect check-in is closed (true) or open (false).
            @is_closed
            ## 
            # ID of the user who responded to the Reflect check-in.
            @responder_id
            ## 
            # The responseEmotion property
            @response_emotion
            ## 
            # The responseFeedback property
            @response_feedback
            ## 
            # Date and time when the response to the Reflect check-in was submitted. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @submit_date_time
            ## 
            ## Gets the checkInId property value. Identifier for the Reflect check-in.
            ## @return a string
            ## 
            def check_in_id
                return @check_in_id
            end
            ## 
            ## Sets the checkInId property value. Identifier for the Reflect check-in.
            ## @param value Value to set for the checkInId property.
            ## @return a void
            ## 
            def check_in_id=(value)
                @check_in_id = value
            end
            ## 
            ## Gets the checkInTitle property value. The question or prompt of the Reflect check-in that this response addresses.
            ## @return a string
            ## 
            def check_in_title
                return @check_in_title
            end
            ## 
            ## Sets the checkInTitle property value. The question or prompt of the Reflect check-in that this response addresses.
            ## @param value Value to set for the checkInTitle property.
            ## @return a void
            ## 
            def check_in_title=(value)
                @check_in_title = value
            end
            ## 
            ## Gets the classId property value. ID of the class associated with the Reflect check-in.
            ## @return a string
            ## 
            def class_id
                return @class_id
            end
            ## 
            ## Sets the classId property value. ID of the class associated with the Reflect check-in.
            ## @param value Value to set for the classId property.
            ## @return a void
            ## 
            def class_id=(value)
                @class_id = value
            end
            ## 
            ## Instantiates a new ReflectCheckInResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Date and time when the Reflect check-in was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time when the Reflect check-in was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a reflect_check_in_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ReflectCheckInResponse.new
            end
            ## 
            ## Gets the creatorId property value. ID of the user who created the Reflect check-in.
            ## @return a string
            ## 
            def creator_id
                return @creator_id
            end
            ## 
            ## Sets the creatorId property value. ID of the user who created the Reflect check-in.
            ## @param value Value to set for the creatorId property.
            ## @return a void
            ## 
            def creator_id=(value)
                @creator_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "checkInId" => lambda {|n| @check_in_id = n.get_string_value() },
                    "checkInTitle" => lambda {|n| @check_in_title = n.get_string_value() },
                    "classId" => lambda {|n| @class_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "creatorId" => lambda {|n| @creator_id = n.get_string_value() },
                    "isClosed" => lambda {|n| @is_closed = n.get_boolean_value() },
                    "responderId" => lambda {|n| @responder_id = n.get_string_value() },
                    "responseEmotion" => lambda {|n| @response_emotion = n.get_enum_value(MicrosoftGraphBeta::Models::ResponseEmotionType) },
                    "responseFeedback" => lambda {|n| @response_feedback = n.get_enum_value(MicrosoftGraphBeta::Models::ResponseFeedbackType) },
                    "submitDateTime" => lambda {|n| @submit_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the isClosed property value. Indicates whether the Reflect check-in is closed (true) or open (false).
            ## @return a boolean
            ## 
            def is_closed
                return @is_closed
            end
            ## 
            ## Sets the isClosed property value. Indicates whether the Reflect check-in is closed (true) or open (false).
            ## @param value Value to set for the isClosed property.
            ## @return a void
            ## 
            def is_closed=(value)
                @is_closed = value
            end
            ## 
            ## Gets the responderId property value. ID of the user who responded to the Reflect check-in.
            ## @return a string
            ## 
            def responder_id
                return @responder_id
            end
            ## 
            ## Sets the responderId property value. ID of the user who responded to the Reflect check-in.
            ## @param value Value to set for the responderId property.
            ## @return a void
            ## 
            def responder_id=(value)
                @responder_id = value
            end
            ## 
            ## Gets the responseEmotion property value. The responseEmotion property
            ## @return a response_emotion_type
            ## 
            def response_emotion
                return @response_emotion
            end
            ## 
            ## Sets the responseEmotion property value. The responseEmotion property
            ## @param value Value to set for the responseEmotion property.
            ## @return a void
            ## 
            def response_emotion=(value)
                @response_emotion = value
            end
            ## 
            ## Gets the responseFeedback property value. The responseFeedback property
            ## @return a response_feedback_type
            ## 
            def response_feedback
                return @response_feedback
            end
            ## 
            ## Sets the responseFeedback property value. The responseFeedback property
            ## @param value Value to set for the responseFeedback property.
            ## @return a void
            ## 
            def response_feedback=(value)
                @response_feedback = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("checkInId", @check_in_id)
                writer.write_string_value("checkInTitle", @check_in_title)
                writer.write_string_value("classId", @class_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("creatorId", @creator_id)
                writer.write_boolean_value("isClosed", @is_closed)
                writer.write_string_value("responderId", @responder_id)
                writer.write_enum_value("responseEmotion", @response_emotion)
                writer.write_enum_value("responseFeedback", @response_feedback)
                writer.write_date_time_value("submitDateTime", @submit_date_time)
            end
            ## 
            ## Gets the submitDateTime property value. Date and time when the response to the Reflect check-in was submitted. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def submit_date_time
                return @submit_date_time
            end
            ## 
            ## Sets the submitDateTime property value. Date and time when the response to the Reflect check-in was submitted. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the submitDateTime property.
            ## @return a void
            ## 
            def submit_date_time=(value)
                @submit_date_time = value
            end
        end
    end
end
