require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class IosWebContentFilterAutoFilter < MicrosoftGraphBeta::Models::IosWebContentFilterBase
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Additional URLs allowed for access
        @allowed_urls
        ## 
        # Additional URLs blocked for access
        @blocked_urls
        ## 
        ## Gets the allowedUrls property value. Additional URLs allowed for access
        ## @return a string
        ## 
        def allowed_urls
            return @allowed_urls
        end
        ## 
        ## Sets the allowedUrls property value. Additional URLs allowed for access
        ## @param value Value to set for the allowedUrls property.
        ## @return a void
        ## 
        def allowed_urls=(value)
            @allowed_urls = value
        end
        ## 
        ## Gets the blockedUrls property value. Additional URLs blocked for access
        ## @return a string
        ## 
        def blocked_urls
            return @blocked_urls
        end
        ## 
        ## Sets the blockedUrls property value. Additional URLs blocked for access
        ## @param value Value to set for the blockedUrls property.
        ## @return a void
        ## 
        def blocked_urls=(value)
            @blocked_urls = value
        end
        ## 
        ## Instantiates a new IosWebContentFilterAutoFilter and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.iosWebContentFilterAutoFilter"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a ios_web_content_filter_auto_filter
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return IosWebContentFilterAutoFilter.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "allowedUrls" => lambda {|n| @allowed_urls = n.get_collection_of_primitive_values(String) },
                "blockedUrls" => lambda {|n| @blocked_urls = n.get_collection_of_primitive_values(String) },
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
            writer.write_collection_of_primitive_values("allowedUrls", @allowed_urls)
            writer.write_collection_of_primitive_values("blockedUrls", @blocked_urls)
        end
    end
end
