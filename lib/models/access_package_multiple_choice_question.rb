require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AccessPackageMultipleChoiceQuestion < MicrosoftGraphBeta::Models::AccessPackageQuestion
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates whether requestor can select multiple choices as their answer.
        @allows_multiple_selection
        ## 
        # List of answer choices.
        @choices
        ## 
        ## Gets the allowsMultipleSelection property value. Indicates whether requestor can select multiple choices as their answer.
        ## @return a boolean
        ## 
        def allows_multiple_selection
            return @allows_multiple_selection
        end
        ## 
        ## Sets the allowsMultipleSelection property value. Indicates whether requestor can select multiple choices as their answer.
        ## @param value Value to set for the allowsMultipleSelection property.
        ## @return a void
        ## 
        def allows_multiple_selection=(value)
            @allows_multiple_selection = value
        end
        ## 
        ## Gets the choices property value. List of answer choices.
        ## @return a access_package_answer_choice
        ## 
        def choices
            return @choices
        end
        ## 
        ## Sets the choices property value. List of answer choices.
        ## @param value Value to set for the choices property.
        ## @return a void
        ## 
        def choices=(value)
            @choices = value
        end
        ## 
        ## Instantiates a new AccessPackageMultipleChoiceQuestion and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.accessPackageMultipleChoiceQuestion"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a access_package_multiple_choice_question
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AccessPackageMultipleChoiceQuestion.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "allowsMultipleSelection" => lambda {|n| @allows_multiple_selection = n.get_boolean_value() },
                "choices" => lambda {|n| @choices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAnswerChoice.create_from_discriminator_value(pn) }) },
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
            writer.write_boolean_value("allowsMultipleSelection", @allows_multiple_selection)
            writer.write_collection_of_object_values("choices", @choices)
        end
    end
end
