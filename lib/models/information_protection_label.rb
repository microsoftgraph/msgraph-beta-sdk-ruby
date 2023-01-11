require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class InformationProtectionLabel < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The color that the UI should display for the label, if configured.
        @color
        ## 
        # The admin-defined description for the label.
        @description
        ## 
        # Indicates whether the label is active or not. Active labels should be hidden or disabled in UI.
        @is_active
        ## 
        # The plaintext name of the label.
        @name
        ## 
        # The parent label associated with a child label. Null if label has no parent.
        @parent
        ## 
        # The sensitivity value of the label, where lower is less sensitive.
        @sensitivity
        ## 
        # The tooltip that should be displayed for the label in a UI.
        @tooltip
        ## 
        ## Gets the color property value. The color that the UI should display for the label, if configured.
        ## @return a string
        ## 
        def color
            return @color
        end
        ## 
        ## Sets the color property value. The color that the UI should display for the label, if configured.
        ## @param value Value to set for the color property.
        ## @return a void
        ## 
        def color=(value)
            @color = value
        end
        ## 
        ## Instantiates a new informationProtectionLabel and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a information_protection_label
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return InformationProtectionLabel.new
        end
        ## 
        ## Gets the description property value. The admin-defined description for the label.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The admin-defined description for the label.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "color" => lambda {|n| @color = n.get_string_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "isActive" => lambda {|n| @is_active = n.get_boolean_value() },
                "name" => lambda {|n| @name = n.get_string_value() },
                "parent" => lambda {|n| @parent = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ParentLabelDetails.create_from_discriminator_value(pn) }) },
                "sensitivity" => lambda {|n| @sensitivity = n.get_number_value() },
                "tooltip" => lambda {|n| @tooltip = n.get_string_value() },
            })
        end
        ## 
        ## Gets the isActive property value. Indicates whether the label is active or not. Active labels should be hidden or disabled in UI.
        ## @return a boolean
        ## 
        def is_active
            return @is_active
        end
        ## 
        ## Sets the isActive property value. Indicates whether the label is active or not. Active labels should be hidden or disabled in UI.
        ## @param value Value to set for the isActive property.
        ## @return a void
        ## 
        def is_active=(value)
            @is_active = value
        end
        ## 
        ## Gets the name property value. The plaintext name of the label.
        ## @return a string
        ## 
        def name
            return @name
        end
        ## 
        ## Sets the name property value. The plaintext name of the label.
        ## @param value Value to set for the name property.
        ## @return a void
        ## 
        def name=(value)
            @name = value
        end
        ## 
        ## Gets the parent property value. The parent label associated with a child label. Null if label has no parent.
        ## @return a parent_label_details
        ## 
        def parent
            return @parent
        end
        ## 
        ## Sets the parent property value. The parent label associated with a child label. Null if label has no parent.
        ## @param value Value to set for the parent property.
        ## @return a void
        ## 
        def parent=(value)
            @parent = value
        end
        ## 
        ## Gets the sensitivity property value. The sensitivity value of the label, where lower is less sensitive.
        ## @return a integer
        ## 
        def sensitivity
            return @sensitivity
        end
        ## 
        ## Sets the sensitivity property value. The sensitivity value of the label, where lower is less sensitive.
        ## @param value Value to set for the sensitivity property.
        ## @return a void
        ## 
        def sensitivity=(value)
            @sensitivity = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("color", @color)
            writer.write_string_value("description", @description)
            writer.write_boolean_value("isActive", @is_active)
            writer.write_string_value("name", @name)
            writer.write_object_value("parent", @parent)
            writer.write_number_value("sensitivity", @sensitivity)
            writer.write_string_value("tooltip", @tooltip)
        end
        ## 
        ## Gets the tooltip property value. The tooltip that should be displayed for the label in a UI.
        ## @return a string
        ## 
        def tooltip
            return @tooltip
        end
        ## 
        ## Sets the tooltip property value. The tooltip that should be displayed for the label in a UI.
        ## @param value Value to set for the tooltip property.
        ## @return a void
        ## 
        def tooltip=(value)
            @tooltip = value
        end
    end
end
