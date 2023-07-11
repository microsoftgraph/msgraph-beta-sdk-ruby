require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents an ADMX listBox element and an ADMX list element.
        class GroupPolicyPresentationListBox < MicrosoftGraphBeta::Models::GroupPolicyUploadedPresentation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # If this option is specified true the user must specify the registry subkey value and the registry subkey name. The list box shows two columns, one for the name and one for the data. The default value is false.
            @explicit_value
            ## 
            # Not yet documented
            @value_prefix
            ## 
            ## Instantiates a new groupPolicyPresentationListBox and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.groupPolicyPresentationListBox"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_presentation_list_box
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupPolicyPresentationListBox.new
            end
            ## 
            ## Gets the explicitValue property value. If this option is specified true the user must specify the registry subkey value and the registry subkey name. The list box shows two columns, one for the name and one for the data. The default value is false.
            ## @return a boolean
            ## 
            def explicit_value
                return @explicit_value
            end
            ## 
            ## Sets the explicitValue property value. If this option is specified true the user must specify the registry subkey value and the registry subkey name. The list box shows two columns, one for the name and one for the data. The default value is false.
            ## @param value Value to set for the explicit_value property.
            ## @return a void
            ## 
            def explicit_value=(value)
                @explicit_value = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "explicitValue" => lambda {|n| @explicit_value = n.get_boolean_value() },
                    "valuePrefix" => lambda {|n| @value_prefix = n.get_string_value() },
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
                writer.write_boolean_value("explicitValue", @explicit_value)
                writer.write_string_value("valuePrefix", @value_prefix)
            end
            ## 
            ## Gets the valuePrefix property value. Not yet documented
            ## @return a string
            ## 
            def value_prefix
                return @value_prefix
            end
            ## 
            ## Sets the valuePrefix property value. Not yet documented
            ## @param value Value to set for the value_prefix property.
            ## @return a void
            ## 
            def value_prefix=(value)
                @value_prefix = value
            end
        end
    end
end
