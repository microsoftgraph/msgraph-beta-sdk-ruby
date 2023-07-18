require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents an ADMX multiTextBox element and an ADMX multiText element.
        class GroupPolicyPresentationMultiTextBox < MicrosoftGraphBeta::Models::GroupPolicyUploadedPresentation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # An unsigned integer that specifies the maximum number of text characters. Default value is 1023.
            @max_length
            ## 
            # An unsigned integer that specifies the maximum number of strings. Default value is 0.
            @max_strings
            ## 
            # Requirement to enter a value in the text box. Default value is false.
            @required
            ## 
            ## Instantiates a new groupPolicyPresentationMultiTextBox and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.groupPolicyPresentationMultiTextBox"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_presentation_multi_text_box
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupPolicyPresentationMultiTextBox.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "maxLength" => lambda {|n| @max_length = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "maxStrings" => lambda {|n| @max_strings = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "required" => lambda {|n| @required = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the maxLength property value. An unsigned integer that specifies the maximum number of text characters. Default value is 1023.
            ## @return a int64
            ## 
            def max_length
                return @max_length
            end
            ## 
            ## Sets the maxLength property value. An unsigned integer that specifies the maximum number of text characters. Default value is 1023.
            ## @param value Value to set for the max_length property.
            ## @return a void
            ## 
            def max_length=(value)
                @max_length = value
            end
            ## 
            ## Gets the maxStrings property value. An unsigned integer that specifies the maximum number of strings. Default value is 0.
            ## @return a int64
            ## 
            def max_strings
                return @max_strings
            end
            ## 
            ## Sets the maxStrings property value. An unsigned integer that specifies the maximum number of strings. Default value is 0.
            ## @param value Value to set for the max_strings property.
            ## @return a void
            ## 
            def max_strings=(value)
                @max_strings = value
            end
            ## 
            ## Gets the required property value. Requirement to enter a value in the text box. Default value is false.
            ## @return a boolean
            ## 
            def required
                return @required
            end
            ## 
            ## Sets the required property value. Requirement to enter a value in the text box. Default value is false.
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
                writer.write_object_value("maxLength", @max_length)
                writer.write_object_value("maxStrings", @max_strings)
                writer.write_boolean_value("required", @required)
            end
        end
    end
end
