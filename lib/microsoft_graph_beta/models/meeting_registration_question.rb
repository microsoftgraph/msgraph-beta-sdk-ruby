require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the commsApplication singleton.
    class MeetingRegistrationQuestion < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Answer input type of the custom registration question.
        @answer_input_type
        ## 
        # Answer options when answerInputType is radioButton.
        @answer_options
        ## 
        # Display name of the custom registration question.
        @display_name
        ## 
        # Indicates whether the question is required. Default value is false.
        @is_required
        ## 
        ## Gets the answerInputType property value. Answer input type of the custom registration question.
        ## @return a answer_input_type
        ## 
        def answer_input_type
            return @answer_input_type
        end
        ## 
        ## Sets the answerInputType property value. Answer input type of the custom registration question.
        ## @param value Value to set for the answerInputType property.
        ## @return a void
        ## 
        def answer_input_type=(value)
            @answer_input_type = value
        end
        ## 
        ## Gets the answerOptions property value. Answer options when answerInputType is radioButton.
        ## @return a string
        ## 
        def answer_options
            return @answer_options
        end
        ## 
        ## Sets the answerOptions property value. Answer options when answerInputType is radioButton.
        ## @param value Value to set for the answerOptions property.
        ## @return a void
        ## 
        def answer_options=(value)
            @answer_options = value
        end
        ## 
        ## Instantiates a new meetingRegistrationQuestion and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a meeting_registration_question
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MeetingRegistrationQuestion.new
        end
        ## 
        ## Gets the displayName property value. Display name of the custom registration question.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Display name of the custom registration question.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "answerInputType" => lambda {|n| @answer_input_type = n.get_enum_value(MicrosoftGraphBeta::Models::AnswerInputType) },
                "answerOptions" => lambda {|n| @answer_options = n.get_collection_of_primitive_values(String) },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "isRequired" => lambda {|n| @is_required = n.get_boolean_value() },
            })
        end
        ## 
        ## Gets the isRequired property value. Indicates whether the question is required. Default value is false.
        ## @return a boolean
        ## 
        def is_required
            return @is_required
        end
        ## 
        ## Sets the isRequired property value. Indicates whether the question is required. Default value is false.
        ## @param value Value to set for the isRequired property.
        ## @return a void
        ## 
        def is_required=(value)
            @is_required = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("answerInputType", @answer_input_type)
            writer.write_collection_of_primitive_values("answerOptions", @answer_options)
            writer.write_string_value("displayName", @display_name)
            writer.write_boolean_value("isRequired", @is_required)
        end
    end
end
