require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents an ADMX longDecimalTextBox element and an ADMX longDecimal element.
        class GroupPolicyPresentationLongDecimalTextBox < MicrosoftGraphBeta::Models::GroupPolicyUploadedPresentation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # An unsigned integer that specifies the initial value for the decimal text box. The default value is 1.
            @default_value
            ## 
            # An unsigned long that specifies the maximum allowed value. The default value is 9999.
            @max_value
            ## 
            # An unsigned long that specifies the minimum allowed value. The default value is 0.
            @min_value
            ## 
            # Requirement to enter a value in the parameter box. The default value is false.
            @required
            ## 
            # If true, create a spin control; otherwise, create a text box for numeric entry. The default value is true.
            @spin
            ## 
            # An unsigned integer that specifies the increment of change for the spin control. The default value is 1.
            @spin_step
            ## 
            ## Instantiates a new GroupPolicyPresentationLongDecimalTextBox and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.groupPolicyPresentationLongDecimalTextBox"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_presentation_long_decimal_text_box
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupPolicyPresentationLongDecimalTextBox.new
            end
            ## 
            ## Gets the defaultValue property value. An unsigned integer that specifies the initial value for the decimal text box. The default value is 1.
            ## @return a int64
            ## 
            def default_value
                return @default_value
            end
            ## 
            ## Sets the defaultValue property value. An unsigned integer that specifies the initial value for the decimal text box. The default value is 1.
            ## @param value Value to set for the defaultValue property.
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
                    "defaultValue" => lambda {|n| @default_value = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "maxValue" => lambda {|n| @max_value = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "minValue" => lambda {|n| @min_value = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "required" => lambda {|n| @required = n.get_boolean_value() },
                    "spin" => lambda {|n| @spin = n.get_boolean_value() },
                    "spinStep" => lambda {|n| @spin_step = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the maxValue property value. An unsigned long that specifies the maximum allowed value. The default value is 9999.
            ## @return a int64
            ## 
            def max_value
                return @max_value
            end
            ## 
            ## Sets the maxValue property value. An unsigned long that specifies the maximum allowed value. The default value is 9999.
            ## @param value Value to set for the maxValue property.
            ## @return a void
            ## 
            def max_value=(value)
                @max_value = value
            end
            ## 
            ## Gets the minValue property value. An unsigned long that specifies the minimum allowed value. The default value is 0.
            ## @return a int64
            ## 
            def min_value
                return @min_value
            end
            ## 
            ## Sets the minValue property value. An unsigned long that specifies the minimum allowed value. The default value is 0.
            ## @param value Value to set for the minValue property.
            ## @return a void
            ## 
            def min_value=(value)
                @min_value = value
            end
            ## 
            ## Gets the required property value. Requirement to enter a value in the parameter box. The default value is false.
            ## @return a boolean
            ## 
            def required
                return @required
            end
            ## 
            ## Sets the required property value. Requirement to enter a value in the parameter box. The default value is false.
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
                writer.write_object_value("defaultValue", @default_value)
                writer.write_object_value("maxValue", @max_value)
                writer.write_object_value("minValue", @min_value)
                writer.write_boolean_value("required", @required)
                writer.write_boolean_value("spin", @spin)
                writer.write_object_value("spinStep", @spin_step)
            end
            ## 
            ## Gets the spin property value. If true, create a spin control; otherwise, create a text box for numeric entry. The default value is true.
            ## @return a boolean
            ## 
            def spin
                return @spin
            end
            ## 
            ## Sets the spin property value. If true, create a spin control; otherwise, create a text box for numeric entry. The default value is true.
            ## @param value Value to set for the spin property.
            ## @return a void
            ## 
            def spin=(value)
                @spin = value
            end
            ## 
            ## Gets the spinStep property value. An unsigned integer that specifies the increment of change for the spin control. The default value is 1.
            ## @return a int64
            ## 
            def spin_step
                return @spin_step
            end
            ## 
            ## Sets the spinStep property value. An unsigned integer that specifies the increment of change for the spin control. The default value is 1.
            ## @param value Value to set for the spinStep property.
            ## @return a void
            ## 
            def spin_step=(value)
                @spin_step = value
            end
        end
    end
end
