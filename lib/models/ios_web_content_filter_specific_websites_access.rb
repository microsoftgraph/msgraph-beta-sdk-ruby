require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IosWebContentFilterSpecificWebsitesAccess < MicrosoftGraphBeta::Models::IosWebContentFilterBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # URL bookmarks which will be installed into built-in browser and user is only allowed to access websites through bookmarks. This collection can contain a maximum of 500 elements.
            @specific_websites_only
            ## 
            # URL bookmarks which will be installed into built-in browser and user is only allowed to access websites through bookmarks. This collection can contain a maximum of 500 elements.
            @website_list
            ## 
            ## Instantiates a new IosWebContentFilterSpecificWebsitesAccess and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosWebContentFilterSpecificWebsitesAccess"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_web_content_filter_specific_websites_access
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosWebContentFilterSpecificWebsitesAccess.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "specificWebsitesOnly" => lambda {|n| @specific_websites_only = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IosBookmark.create_from_discriminator_value(pn) }) },
                    "websiteList" => lambda {|n| @website_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IosBookmark.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("specificWebsitesOnly", @specific_websites_only)
                writer.write_collection_of_object_values("websiteList", @website_list)
            end
            ## 
            ## Gets the specificWebsitesOnly property value. URL bookmarks which will be installed into built-in browser and user is only allowed to access websites through bookmarks. This collection can contain a maximum of 500 elements.
            ## @return a ios_bookmark
            ## 
            def specific_websites_only
                return @specific_websites_only
            end
            ## 
            ## Sets the specificWebsitesOnly property value. URL bookmarks which will be installed into built-in browser and user is only allowed to access websites through bookmarks. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the specific_websites_only property.
            ## @return a void
            ## 
            def specific_websites_only=(value)
                @specific_websites_only = value
            end
            ## 
            ## Gets the websiteList property value. URL bookmarks which will be installed into built-in browser and user is only allowed to access websites through bookmarks. This collection can contain a maximum of 500 elements.
            ## @return a ios_bookmark
            ## 
            def website_list
                return @website_list
            end
            ## 
            ## Sets the websiteList property value. URL bookmarks which will be installed into built-in browser and user is only allowed to access websites through bookmarks. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the website_list property.
            ## @return a void
            ## 
            def website_list=(value)
                @website_list = value
            end
        end
    end
end
