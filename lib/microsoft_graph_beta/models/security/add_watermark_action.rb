require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta::Models::Security
    class AddWatermarkAction < MicrosoftGraphBeta::Models::Security::InformationProtectionAction
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Color of the font to use for the watermark.
        @font_color
        ## 
        # Name of the font to use for the watermark.
        @font_name
        ## 
        # Font size to use for the watermark.
        @font_size
        ## 
        # The layout property
        @layout
        ## 
        # The contents of the watermark itself.
        @text
        ## 
        # The name of the UI element where the watermark should be placed.
        @ui_element_name
        ## 
        ## Instantiates a new AddWatermarkAction and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.security.addWatermarkAction"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a add_watermark_action
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AddWatermarkAction.new
        end
        ## 
        ## Gets the fontColor property value. Color of the font to use for the watermark.
        ## @return a string
        ## 
        def font_color
            return @font_color
        end
        ## 
        ## Sets the fontColor property value. Color of the font to use for the watermark.
        ## @param value Value to set for the fontColor property.
        ## @return a void
        ## 
        def font_color=(value)
            @font_color = value
        end
        ## 
        ## Gets the fontName property value. Name of the font to use for the watermark.
        ## @return a string
        ## 
        def font_name
            return @font_name
        end
        ## 
        ## Sets the fontName property value. Name of the font to use for the watermark.
        ## @param value Value to set for the fontName property.
        ## @return a void
        ## 
        def font_name=(value)
            @font_name = value
        end
        ## 
        ## Gets the fontSize property value. Font size to use for the watermark.
        ## @return a integer
        ## 
        def font_size
            return @font_size
        end
        ## 
        ## Sets the fontSize property value. Font size to use for the watermark.
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
                "fontColor" => lambda {|n| @font_color = n.get_string_value() },
                "fontName" => lambda {|n| @font_name = n.get_string_value() },
                "fontSize" => lambda {|n| @font_size = n.get_number_value() },
                "layout" => lambda {|n| @layout = n.get_enum_value(MicrosoftGraphBeta::Models::Security::WatermarkLayout) },
                "text" => lambda {|n| @text = n.get_string_value() },
                "uiElementName" => lambda {|n| @ui_element_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the layout property value. The layout property
        ## @return a watermark_layout
        ## 
        def layout
            return @layout
        end
        ## 
        ## Sets the layout property value. The layout property
        ## @param value Value to set for the layout property.
        ## @return a void
        ## 
        def layout=(value)
            @layout = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("fontColor", @font_color)
            writer.write_string_value("fontName", @font_name)
            writer.write_number_value("fontSize", @font_size)
            writer.write_enum_value("layout", @layout)
            writer.write_string_value("text", @text)
            writer.write_string_value("uiElementName", @ui_element_name)
        end
        ## 
        ## Gets the text property value. The contents of the watermark itself.
        ## @return a string
        ## 
        def text
            return @text
        end
        ## 
        ## Sets the text property value. The contents of the watermark itself.
        ## @param value Value to set for the text property.
        ## @return a void
        ## 
        def text=(value)
            @text = value
        end
        ## 
        ## Gets the uiElementName property value. The name of the UI element where the watermark should be placed.
        ## @return a string
        ## 
        def ui_element_name
            return @ui_element_name
        end
        ## 
        ## Sets the uiElementName property value. The name of the UI element where the watermark should be placed.
        ## @param value Value to set for the uiElementName property.
        ## @return a void
        ## 
        def ui_element_name=(value)
            @ui_element_name = value
        end
    end
end
