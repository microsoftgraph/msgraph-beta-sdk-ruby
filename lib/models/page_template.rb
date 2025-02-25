require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PageTemplate < MicrosoftGraphBeta::Models::BaseSitePage
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The layout of the content in a given SharePoint page template, including horizontal sections and vertical sections.
            @canvas_layout
            ## 
            # The title area on the SharePoint page template.
            @title_area
            ## 
            # The collection of web parts on the SharePoint page.
            @web_parts
            ## 
            ## Gets the canvasLayout property value. The layout of the content in a given SharePoint page template, including horizontal sections and vertical sections.
            ## @return a canvas_layout
            ## 
            def canvas_layout
                return @canvas_layout
            end
            ## 
            ## Sets the canvasLayout property value. The layout of the content in a given SharePoint page template, including horizontal sections and vertical sections.
            ## @param value Value to set for the canvasLayout property.
            ## @return a void
            ## 
            def canvas_layout=(value)
                @canvas_layout = value
            end
            ## 
            ## Instantiates a new PageTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a page_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PageTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "canvasLayout" => lambda {|n| @canvas_layout = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CanvasLayout.create_from_discriminator_value(pn) }) },
                    "titleArea" => lambda {|n| @title_area = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TitleArea.create_from_discriminator_value(pn) }) },
                    "webParts" => lambda {|n| @web_parts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WebPart.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("canvasLayout", @canvas_layout)
                writer.write_object_value("titleArea", @title_area)
                writer.write_collection_of_object_values("webParts", @web_parts)
            end
            ## 
            ## Gets the titleArea property value. The title area on the SharePoint page template.
            ## @return a title_area
            ## 
            def title_area
                return @title_area
            end
            ## 
            ## Sets the titleArea property value. The title area on the SharePoint page template.
            ## @param value Value to set for the titleArea property.
            ## @return a void
            ## 
            def title_area=(value)
                @title_area = value
            end
            ## 
            ## Gets the webParts property value. The collection of web parts on the SharePoint page.
            ## @return a web_part
            ## 
            def web_parts
                return @web_parts
            end
            ## 
            ## Sets the webParts property value. The collection of web parts on the SharePoint page.
            ## @param value Value to set for the webParts property.
            ## @return a void
            ## 
            def web_parts=(value)
                @web_parts = value
            end
        end
    end
end
