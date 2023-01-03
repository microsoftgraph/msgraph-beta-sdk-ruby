require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AddContentFooterAction < MicrosoftGraphBeta::Models::InformationProtectionAction
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The alignment property
        @alignment
        ## 
        # Color of the font to use for the footer.
        @font_color
        ## 
        # Name of the font to use for the footer.
        @font_name
        ## 
        # Font size to use for the footer.
        @font_size
        ## 
        # The margin of the header from the bottom of the document.
        @margin
        ## 
        # The contents of the footer itself.
        @text
        ## 
        # The name of the UI element where the footer should be placed.
        @ui_element_name
        ## 
        ## Gets the alignment property value. The alignment property
        ## @return a content_alignment
        ## 
        def alignment
            return @alignment
        end
        ## 
        ## Sets the alignment property value. The alignment property
        ## @param value Value to set for the alignment property.
        ## @return a void
        ## 
        def alignment=(value)
            @alignment = value
        end
        ## 
        ## Instantiates a new AddContentFooterAction and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.addContentFooterAction"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a add_content_footer_action
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AddContentFooterAction.new
        end
        ## 
        ## Gets the fontColor property value. Color of the font to use for the footer.
        ## @return a string
        ## 
        def font_color
            return @font_color
        end
        ## 
        ## Sets the fontColor property value. Color of the font to use for the footer.
        ## @param value Value to set for the fontColor property.
        ## @return a void
        ## 
        def font_color=(value)
            @font_color = value
        end
        ## 
        ## Gets the fontName property value. Name of the font to use for the footer.
        ## @return a string
        ## 
        def font_name
            return @font_name
        end
        ## 
        ## Sets the fontName property value. Name of the font to use for the footer.
        ## @param value Value to set for the fontName property.
        ## @return a void
        ## 
        def font_name=(value)
            @font_name = value
        end
        ## 
        ## Gets the fontSize property value. Font size to use for the footer.
        ## @return a integer
        ## 
        def font_size
            return @font_size
        end
        ## 
        ## Sets the fontSize property value. Font size to use for the footer.
        ## @param value Value to set for the fontSize property.
        ## @return a void
        ## 
        def font_size=(value)
            @font_size = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "alignment" => lambda {|n| @alignment = n.get_enum_value(MicrosoftGraphBeta::Models::ContentAlignment) },
                "fontColor" => lambda {|n| @font_color = n.get_string_value() },
                "fontName" => lambda {|n| @font_name = n.get_string_value() },
                "fontSize" => lambda {|n| @font_size = n.get_number_value() },
                "margin" => lambda {|n| @margin = n.get_number_value() },
                "text" => lambda {|n| @text = n.get_string_value() },
                "uiElementName" => lambda {|n| @ui_element_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the margin property value. The margin of the header from the bottom of the document.
        ## @return a integer
        ## 
        def margin
            return @margin
        end
        ## 
        ## Sets the margin property value. The margin of the header from the bottom of the document.
        ## @param value Value to set for the margin property.
        ## @return a void
        ## 
        def margin=(value)
            @margin = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("alignment", @alignment)
            writer.write_string_value("fontColor", @font_color)
            writer.write_string_value("fontName", @font_name)
            writer.write_number_value("fontSize", @font_size)
            writer.write_number_value("margin", @margin)
            writer.write_string_value("text", @text)
            writer.write_string_value("uiElementName", @ui_element_name)
        end
        ## 
        ## Gets the text property value. The contents of the footer itself.
        ## @return a string
        ## 
        def text
            return @text
        end
        ## 
        ## Sets the text property value. The contents of the footer itself.
        ## @param value Value to set for the text property.
        ## @return a void
        ## 
        def text=(value)
            @text = value
        end
        ## 
        ## Gets the uiElementName property value. The name of the UI element where the footer should be placed.
        ## @return a string
        ## 
        def ui_element_name
            return @ui_element_name
        end
        ## 
        ## Sets the uiElementName property value. The name of the UI element where the footer should be placed.
        ## @param value Value to set for the uiElementName property.
        ## @return a void
        ## 
        def ui_element_name=(value)
            @ui_element_name = value
        end
    end
end
