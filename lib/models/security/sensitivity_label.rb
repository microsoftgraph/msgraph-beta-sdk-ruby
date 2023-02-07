require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta::Models::Security
    class SensitivityLabel < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The color that the UI should display for the label, if configured.
        @color
        ## 
        # Returns the supported content formats for the label.
        @content_formats
        ## 
        # The admin-defined description for the label.
        @description
        ## 
        # Indicates whether the label has protection actions configured.
        @has_protection
        ## 
        # Indicates whether the label is active or not. Active labels should be hidden or disabled in the UI.
        @is_active
        ## 
        # Indicates whether the label can be applied to content. False if the label is a parent with child labels.
        @is_appliable
        ## 
        # The plaintext name of the label.
        @name
        ## 
        # The parent label associated with a child label. Null if the label has no parent.
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
        ## Instantiates a new sensitivityLabel and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the contentFormats property value. Returns the supported content formats for the label.
        ## @return a string
        ## 
        def content_formats
            return @content_formats
        end
        ## 
        ## Sets the contentFormats property value. Returns the supported content formats for the label.
        ## @param value Value to set for the content_formats property.
        ## @return a void
        ## 
        def content_formats=(value)
            @content_formats = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a sensitivity_label
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SensitivityLabel.new
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
                "contentFormats" => lambda {|n| @content_formats = n.get_collection_of_primitive_values(String) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "hasProtection" => lambda {|n| @has_protection = n.get_boolean_value() },
                "isActive" => lambda {|n| @is_active = n.get_boolean_value() },
                "isAppliable" => lambda {|n| @is_appliable = n.get_boolean_value() },
                "name" => lambda {|n| @name = n.get_string_value() },
                "parent" => lambda {|n| @parent = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::SensitivityLabel.create_from_discriminator_value(pn) }) },
                "sensitivity" => lambda {|n| @sensitivity = n.get_number_value() },
                "tooltip" => lambda {|n| @tooltip = n.get_string_value() },
            })
        end
        ## 
        ## Gets the hasProtection property value. Indicates whether the label has protection actions configured.
        ## @return a boolean
        ## 
        def has_protection
            return @has_protection
        end
        ## 
        ## Sets the hasProtection property value. Indicates whether the label has protection actions configured.
        ## @param value Value to set for the has_protection property.
        ## @return a void
        ## 
        def has_protection=(value)
            @has_protection = value
        end
        ## 
        ## Gets the isActive property value. Indicates whether the label is active or not. Active labels should be hidden or disabled in the UI.
        ## @return a boolean
        ## 
        def is_active
            return @is_active
        end
        ## 
        ## Sets the isActive property value. Indicates whether the label is active or not. Active labels should be hidden or disabled in the UI.
        ## @param value Value to set for the is_active property.
        ## @return a void
        ## 
        def is_active=(value)
            @is_active = value
        end
        ## 
        ## Gets the isAppliable property value. Indicates whether the label can be applied to content. False if the label is a parent with child labels.
        ## @return a boolean
        ## 
        def is_appliable
            return @is_appliable
        end
        ## 
        ## Sets the isAppliable property value. Indicates whether the label can be applied to content. False if the label is a parent with child labels.
        ## @param value Value to set for the is_appliable property.
        ## @return a void
        ## 
        def is_appliable=(value)
            @is_appliable = value
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
        ## Gets the parent property value. The parent label associated with a child label. Null if the label has no parent.
        ## @return a sensitivity_label
        ## 
        def parent
            return @parent
        end
        ## 
        ## Sets the parent property value. The parent label associated with a child label. Null if the label has no parent.
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
            writer.write_collection_of_primitive_values("contentFormats", @content_formats)
            writer.write_string_value("description", @description)
            writer.write_boolean_value("hasProtection", @has_protection)
            writer.write_boolean_value("isActive", @is_active)
            writer.write_boolean_value("isAppliable", @is_appliable)
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
