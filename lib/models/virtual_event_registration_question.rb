require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VirtualEventRegistrationQuestion < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Answer choices when answerInputType is singleChoice or multiChoice.
            @answer_choices
            ## 
            # Input type of the registration question answer.
            @answer_input_type
            ## 
            # Display name of the registration question.
            @display_name
            ## 
            # Indicates whether the question is required to answer. Default value is false.
            @is_required
            ## 
            ## Gets the answerChoices property value. Answer choices when answerInputType is singleChoice or multiChoice.
            ## @return a string
            ## 
            def answer_choices
                return @answer_choices
            end
            ## 
            ## Sets the answerChoices property value. Answer choices when answerInputType is singleChoice or multiChoice.
            ## @param value Value to set for the answerChoices property.
            ## @return a void
            ## 
            def answer_choices=(value)
                @answer_choices = value
            end
            ## 
            ## Gets the answerInputType property value. Input type of the registration question answer.
            ## @return a virtual_event_registration_question_answer_input_type
            ## 
            def answer_input_type
                return @answer_input_type
            end
            ## 
            ## Sets the answerInputType property value. Input type of the registration question answer.
            ## @param value Value to set for the answerInputType property.
            ## @return a void
            ## 
            def answer_input_type=(value)
                @answer_input_type = value
            end
            ## 
            ## Instantiates a new virtualEventRegistrationQuestion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_registration_question
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventRegistrationQuestion.new
            end
            ## 
            ## Gets the displayName property value. Display name of the registration question.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the registration question.
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
                    "answerChoices" => lambda {|n| @answer_choices = n.get_collection_of_primitive_values(String) },
                    "answerInputType" => lambda {|n| @answer_input_type = n.get_enum_value(MicrosoftGraphBeta::Models::VirtualEventRegistrationQuestionAnswerInputType) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isRequired" => lambda {|n| @is_required = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isRequired property value. Indicates whether the question is required to answer. Default value is false.
            ## @return a boolean
            ## 
            def is_required
                return @is_required
            end
            ## 
            ## Sets the isRequired property value. Indicates whether the question is required to answer. Default value is false.
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
                writer.write_collection_of_primitive_values("answerChoices", @answer_choices)
                writer.write_enum_value("answerInputType", @answer_input_type)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isRequired", @is_required)
            end
        end
    end
end
