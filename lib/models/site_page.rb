require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class SitePage < MicrosoftGraphBeta::Models::BaseItem
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates the layout of the content in a given SharePoint page, including horizontal sections and vertical section
        @canvas_layout
        ## 
        # Inherited from baseItem.
        @content_type
        ## 
        # The name of the page layout of the page. The possible values are: microsoftReserved, article, home, unknownFutureValue.
        @page_layout
        ## 
        # Indicates the promotion kind of the sitePage. The possible values are: microsoftReserved, page, newsPost, unknownFutureValue.
        @promotion_kind
        ## 
        # The publishing status and the MM.mm version of the page.
        @publishing_state
        ## 
        # Reactions information for the page.
        @reactions
        ## 
        # Determines whether or not to show comments at the bottom of the page.
        @show_comments
        ## 
        # Determines whether or not to show recommended pages at the bottom of the page.
        @show_recommended_pages
        ## 
        # Url of the sitePage's thumbnail image
        @thumbnail_web_url
        ## 
        # Title of the sitePage.
        @title
        ## 
        # Title area on the SharePoint page.
        @title_area
        ## 
        # Collection of webparts on the SharePoint page
        @web_parts
        ## 
        ## Gets the canvasLayout property value. Indicates the layout of the content in a given SharePoint page, including horizontal sections and vertical section
        ## @return a canvas_layout
        ## 
        def canvas_layout
            return @canvas_layout
        end
        ## 
        ## Sets the canvasLayout property value. Indicates the layout of the content in a given SharePoint page, including horizontal sections and vertical section
        ## @param value Value to set for the canvasLayout property.
        ## @return a void
        ## 
        def canvas_layout=(value)
            @canvas_layout = value
        end
        ## 
        ## Instantiates a new SitePage and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.sitePage"
        end
        ## 
        ## Gets the contentType property value. Inherited from baseItem.
        ## @return a content_type_info
        ## 
        def content_type
            return @content_type
        end
        ## 
        ## Sets the contentType property value. Inherited from baseItem.
        ## @param value Value to set for the contentType property.
        ## @return a void
        ## 
        def content_type=(value)
            @content_type = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a site_page
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SitePage.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "canvasLayout" => lambda {|n| @canvas_layout = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CanvasLayout.create_from_discriminator_value(pn) }) },
                "contentType" => lambda {|n| @content_type = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ContentTypeInfo.create_from_discriminator_value(pn) }) },
                "pageLayout" => lambda {|n| @page_layout = n.get_enum_value(MicrosoftGraphBeta::Models::PageLayoutType) },
                "promotionKind" => lambda {|n| @promotion_kind = n.get_enum_value(MicrosoftGraphBeta::Models::PagePromotionType) },
                "publishingState" => lambda {|n| @publishing_state = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PublicationFacet.create_from_discriminator_value(pn) }) },
                "reactions" => lambda {|n| @reactions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ReactionsFacet.create_from_discriminator_value(pn) }) },
                "showComments" => lambda {|n| @show_comments = n.get_boolean_value() },
                "showRecommendedPages" => lambda {|n| @show_recommended_pages = n.get_boolean_value() },
                "thumbnailWebUrl" => lambda {|n| @thumbnail_web_url = n.get_string_value() },
                "title" => lambda {|n| @title = n.get_string_value() },
                "titleArea" => lambda {|n| @title_area = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TitleArea.create_from_discriminator_value(pn) }) },
                "webParts" => lambda {|n| @web_parts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WebPart.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the pageLayout property value. The name of the page layout of the page. The possible values are: microsoftReserved, article, home, unknownFutureValue.
        ## @return a page_layout_type
        ## 
        def page_layout
            return @page_layout
        end
        ## 
        ## Sets the pageLayout property value. The name of the page layout of the page. The possible values are: microsoftReserved, article, home, unknownFutureValue.
        ## @param value Value to set for the pageLayout property.
        ## @return a void
        ## 
        def page_layout=(value)
            @page_layout = value
        end
        ## 
        ## Gets the promotionKind property value. Indicates the promotion kind of the sitePage. The possible values are: microsoftReserved, page, newsPost, unknownFutureValue.
        ## @return a page_promotion_type
        ## 
        def promotion_kind
            return @promotion_kind
        end
        ## 
        ## Sets the promotionKind property value. Indicates the promotion kind of the sitePage. The possible values are: microsoftReserved, page, newsPost, unknownFutureValue.
        ## @param value Value to set for the promotionKind property.
        ## @return a void
        ## 
        def promotion_kind=(value)
            @promotion_kind = value
        end
        ## 
        ## Gets the publishingState property value. The publishing status and the MM.mm version of the page.
        ## @return a publication_facet
        ## 
        def publishing_state
            return @publishing_state
        end
        ## 
        ## Sets the publishingState property value. The publishing status and the MM.mm version of the page.
        ## @param value Value to set for the publishingState property.
        ## @return a void
        ## 
        def publishing_state=(value)
            @publishing_state = value
        end
        ## 
        ## Gets the reactions property value. Reactions information for the page.
        ## @return a reactions_facet
        ## 
        def reactions
            return @reactions
        end
        ## 
        ## Sets the reactions property value. Reactions information for the page.
        ## @param value Value to set for the reactions property.
        ## @return a void
        ## 
        def reactions=(value)
            @reactions = value
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
            writer.write_object_value("contentType", @content_type)
            writer.write_enum_value("pageLayout", @page_layout)
            writer.write_enum_value("promotionKind", @promotion_kind)
            writer.write_object_value("publishingState", @publishing_state)
            writer.write_object_value("reactions", @reactions)
            writer.write_boolean_value("showComments", @show_comments)
            writer.write_boolean_value("showRecommendedPages", @show_recommended_pages)
            writer.write_string_value("thumbnailWebUrl", @thumbnail_web_url)
            writer.write_string_value("title", @title)
            writer.write_object_value("titleArea", @title_area)
            writer.write_collection_of_object_values("webParts", @web_parts)
        end
        ## 
        ## Gets the showComments property value. Determines whether or not to show comments at the bottom of the page.
        ## @return a boolean
        ## 
        def show_comments
            return @show_comments
        end
        ## 
        ## Sets the showComments property value. Determines whether or not to show comments at the bottom of the page.
        ## @param value Value to set for the showComments property.
        ## @return a void
        ## 
        def show_comments=(value)
            @show_comments = value
        end
        ## 
        ## Gets the showRecommendedPages property value. Determines whether or not to show recommended pages at the bottom of the page.
        ## @return a boolean
        ## 
        def show_recommended_pages
            return @show_recommended_pages
        end
        ## 
        ## Sets the showRecommendedPages property value. Determines whether or not to show recommended pages at the bottom of the page.
        ## @param value Value to set for the showRecommendedPages property.
        ## @return a void
        ## 
        def show_recommended_pages=(value)
            @show_recommended_pages = value
        end
        ## 
        ## Gets the thumbnailWebUrl property value. Url of the sitePage's thumbnail image
        ## @return a string
        ## 
        def thumbnail_web_url
            return @thumbnail_web_url
        end
        ## 
        ## Sets the thumbnailWebUrl property value. Url of the sitePage's thumbnail image
        ## @param value Value to set for the thumbnailWebUrl property.
        ## @return a void
        ## 
        def thumbnail_web_url=(value)
            @thumbnail_web_url = value
        end
        ## 
        ## Gets the title property value. Title of the sitePage.
        ## @return a string
        ## 
        def title
            return @title
        end
        ## 
        ## Sets the title property value. Title of the sitePage.
        ## @param value Value to set for the title property.
        ## @return a void
        ## 
        def title=(value)
            @title = value
        end
        ## 
        ## Gets the titleArea property value. Title area on the SharePoint page.
        ## @return a title_area
        ## 
        def title_area
            return @title_area
        end
        ## 
        ## Sets the titleArea property value. Title area on the SharePoint page.
        ## @param value Value to set for the titleArea property.
        ## @return a void
        ## 
        def title_area=(value)
            @title_area = value
        end
        ## 
        ## Gets the webParts property value. Collection of webparts on the SharePoint page
        ## @return a web_part
        ## 
        def web_parts
            return @web_parts
        end
        ## 
        ## Sets the webParts property value. Collection of webparts on the SharePoint page
        ## @param value Value to set for the webParts property.
        ## @return a void
        ## 
        def web_parts=(value)
            @web_parts = value
        end
    end
end
