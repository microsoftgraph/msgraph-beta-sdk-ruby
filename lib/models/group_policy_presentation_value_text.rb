require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The entity represents a string value for a drop-down list, combo box, or text box presentation on a policy definition.
        class GroupPolicyPresentationValueText < MicrosoftGraphBeta::Models::GroupPolicyPresentationValue
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A string value for the associated presentation.
            @value
            ## 
            ## Instantiates a new groupPolicyPresentationValueText and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_presentation_value_text
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupPolicyPresentationValueText.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "value" => lambda {|n| @value = n.get_string_value() },
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
                writer.write_string_value("value", @value)
            end
            ## 
            ## Gets the value property value. A string value for the associated presentation.
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. A string value for the associated presentation.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
