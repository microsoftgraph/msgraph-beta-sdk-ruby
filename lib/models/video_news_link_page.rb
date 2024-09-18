require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VideoNewsLinkPage < MicrosoftGraphBeta::Models::BaseSitePage
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The bannerImageWebUrl property
            @banner_image_web_url
            ## 
            # The newsSharepointIds property
            @news_sharepoint_ids
            ## 
            # The newsWebUrl property
            @news_web_url
            ## 
            # The videoDuration property
            @video_duration
            ## 
            ## Gets the bannerImageWebUrl property value. The bannerImageWebUrl property
            ## @return a string
            ## 
            def banner_image_web_url
                return @banner_image_web_url
            end
            ## 
            ## Sets the bannerImageWebUrl property value. The bannerImageWebUrl property
            ## @param value Value to set for the bannerImageWebUrl property.
            ## @return a void
            ## 
            def banner_image_web_url=(value)
                @banner_image_web_url = value
            end
            ## 
            ## Instantiates a new VideoNewsLinkPage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a video_news_link_page
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VideoNewsLinkPage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bannerImageWebUrl" => lambda {|n| @banner_image_web_url = n.get_string_value() },
                    "newsSharepointIds" => lambda {|n| @news_sharepoint_ids = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharepointIds.create_from_discriminator_value(pn) }) },
                    "newsWebUrl" => lambda {|n| @news_web_url = n.get_string_value() },
                    "videoDuration" => lambda {|n| @video_duration = n.get_duration_value() },
                })
            end
            ## 
            ## Gets the newsSharepointIds property value. The newsSharepointIds property
            ## @return a sharepoint_ids
            ## 
            def news_sharepoint_ids
                return @news_sharepoint_ids
            end
            ## 
            ## Sets the newsSharepointIds property value. The newsSharepointIds property
            ## @param value Value to set for the newsSharepointIds property.
            ## @return a void
            ## 
            def news_sharepoint_ids=(value)
                @news_sharepoint_ids = value
            end
            ## 
            ## Gets the newsWebUrl property value. The newsWebUrl property
            ## @return a string
            ## 
            def news_web_url
                return @news_web_url
            end
            ## 
            ## Sets the newsWebUrl property value. The newsWebUrl property
            ## @param value Value to set for the newsWebUrl property.
            ## @return a void
            ## 
            def news_web_url=(value)
                @news_web_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("bannerImageWebUrl", @banner_image_web_url)
                writer.write_object_value("newsSharepointIds", @news_sharepoint_ids)
                writer.write_string_value("newsWebUrl", @news_web_url)
                writer.write_duration_value("videoDuration", @video_duration)
            end
            ## 
            ## Gets the videoDuration property value. The videoDuration property
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def video_duration
                return @video_duration
            end
            ## 
            ## Sets the videoDuration property value. The videoDuration property
            ## @param value Value to set for the videoDuration property.
            ## @return a void
            ## 
            def video_duration=(value)
                @video_duration = value
            end
        end
    end
end
