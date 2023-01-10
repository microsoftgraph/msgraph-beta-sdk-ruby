require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class GroupPolicyPresentationCheckBox < MicrosoftGraphBeta::Models::GroupPolicyUploadedPresentation
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Default value for the check box. The default value is false.
        @default_checked
        ## 
        ## Instantiates a new GroupPolicyPresentationCheckBox and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.groupPolicyPresentationCheckBox"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a group_policy_presentation_check_box
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return GroupPolicyPresentationCheckBox.new
        end
        ## 
        ## Gets the defaultChecked property value. Default value for the check box. The default value is false.
        ## @return a boolean
        ## 
        def default_checked
            return @default_checked
        end
        ## 
        ## Sets the defaultChecked property value. Default value for the check box. The default value is false.
        ## @param value Value to set for the defaultChecked property.
        ## @return a void
        ## 
        def default_checked=(value)
            @default_checked = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "defaultChecked" => lambda {|n| @default_checked = n.get_boolean_value() },
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
            writer.write_boolean_value("defaultChecked", @default_checked)
        end
    end
end
