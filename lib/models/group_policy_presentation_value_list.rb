require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The entity represents a collection of name/value pairs of a list box presentation on a policy definition.
        class GroupPolicyPresentationValueList < MicrosoftGraphBeta::Models::GroupPolicyPresentationValue
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A list of pairs for the associated presentation.
            @values
            ## 
            ## Instantiates a new groupPolicyPresentationValueList and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_presentation_value_list
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupPolicyPresentationValueList.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "values" => lambda {|n| @values = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("values", @values)
            end
            ## 
            ## Gets the values property value. A list of pairs for the associated presentation.
            ## @return a key_value_pair
            ## 
            def values
                return @values
            end
            ## 
            ## Sets the values property value. A list of pairs for the associated presentation.
            ## @param value Value to set for the values property.
            ## @return a void
            ## 
            def values=(value)
                @values = value
            end
        end
    end
end
