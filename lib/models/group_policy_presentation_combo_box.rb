require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents an ADMX comboBox element and an ADMX text element.
        class GroupPolicyPresentationComboBox < MicrosoftGraphBeta::Models::GroupPolicyUploadedPresentation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Localized default string displayed in the combo box. The default value is empty.
            @default_value
            ## 
            # An unsigned integer that specifies the maximum number of text characters for the parameter. The default value is 1023.
            @max_length
            ## 
            # Specifies whether a value must be specified for the parameter. The default value is false.
            @required
            ## 
            # Localized strings listed in the drop-down list of the combo box. The default value is empty.
            @suggestions
            ## 
            ## Instantiates a new groupPolicyPresentationComboBox and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.groupPolicyPresentationComboBox"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_presentation_combo_box
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupPolicyPresentationComboBox.new
            end
            ## 
            ## Gets the defaultValue property value. Localized default string displayed in the combo box. The default value is empty.
            ## @return a string
            ## 
            def default_value
                return @default_value
            end
            ## 
            ## Sets the defaultValue property value. Localized default string displayed in the combo box. The default value is empty.
            ## @param value Value to set for the default_value property.
            ## @return a void
            ## 
            def default_value=(value)
                @default_value = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "defaultValue" => lambda {|n| @default_value = n.get_string_value() },
                    "maxLength" => lambda {|n| @max_length = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "required" => lambda {|n| @required = n.get_boolean_value() },
                    "suggestions" => lambda {|n| @suggestions = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the maxLength property value. An unsigned integer that specifies the maximum number of text characters for the parameter. The default value is 1023.
            ## @return a int64
            ## 
            def max_length
                return @max_length
            end
            ## 
            ## Sets the maxLength property value. An unsigned integer that specifies the maximum number of text characters for the parameter. The default value is 1023.
            ## @param value Value to set for the max_length property.
            ## @return a void
            ## 
            def max_length=(value)
                @max_length = value
            end
            ## 
            ## Gets the required property value. Specifies whether a value must be specified for the parameter. The default value is false.
            ## @return a boolean
            ## 
            def required
                return @required
            end
            ## 
            ## Sets the required property value. Specifies whether a value must be specified for the parameter. The default value is false.
            ## @param value Value to set for the required property.
            ## @return a void
            ## 
            def required=(value)
                @required = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("defaultValue", @default_value)
                writer.write_object_value("maxLength", @max_length)
                writer.write_boolean_value("required", @required)
                writer.write_collection_of_primitive_values("suggestions", @suggestions)
            end
            ## 
            ## Gets the suggestions property value. Localized strings listed in the drop-down list of the combo box. The default value is empty.
            ## @return a string
            ## 
            def suggestions
                return @suggestions
            end
            ## 
            ## Sets the suggestions property value. Localized strings listed in the drop-down list of the combo box. The default value is empty.
            ## @param value Value to set for the suggestions property.
            ## @return a void
            ## 
            def suggestions=(value)
                @suggestions = value
            end
        end
    end
end
