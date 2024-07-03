require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomQuestionAnswer < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Display name of the custom registration question. Read-only.
            @display_name
            ## 
            # ID the custom registration question. Read-only.
            @question_id
            ## 
            # Answer to the custom registration question.
            @value
            ## 
            ## Instantiates a new CustomQuestionAnswer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_question_answer
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomQuestionAnswer.new
            end
            ## 
            ## Gets the displayName property value. Display name of the custom registration question. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the custom registration question. Read-only.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "questionId" => lambda {|n| @question_id = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_string_value() },
                })
            end
            ## 
            ## Gets the questionId property value. ID the custom registration question. Read-only.
            ## @return a string
            ## 
            def question_id
                return @question_id
            end
            ## 
            ## Sets the questionId property value. ID the custom registration question. Read-only.
            ## @param value Value to set for the questionId property.
            ## @return a void
            ## 
            def question_id=(value)
                @question_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("questionId", @question_id)
                writer.write_string_value("value", @value)
            end
            ## 
            ## Gets the value property value. Answer to the custom registration question.
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Answer to the custom registration question.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
