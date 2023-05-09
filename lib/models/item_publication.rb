require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ItemPublication < MicrosoftGraphBeta::Models::ItemFacet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Description of the publication.
            @description
            ## 
            # Title of the publication.
            @display_name
            ## 
            # The date that the publication was published.
            @published_date
            ## 
            # Publication or publisher for the publication.
            @publisher
            ## 
            # URL referencing a thumbnail of the publication.
            @thumbnail_url
            ## 
            # URL referencing the publication.
            @web_url
            ## 
            ## Instantiates a new ItemPublication and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.itemPublication"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a item_publication
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemPublication.new
            end
            ## 
            ## Gets the description property value. Description of the publication.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the publication.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Title of the publication.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Title of the publication.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "publishedDate" => lambda {|n| @published_date = n.get_date_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "thumbnailUrl" => lambda {|n| @thumbnail_url = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the publishedDate property value. The date that the publication was published.
            ## @return a date
            ## 
            def published_date
                return @published_date
            end
            ## 
            ## Sets the publishedDate property value. The date that the publication was published.
            ## @param value Value to set for the published_date property.
            ## @return a void
            ## 
            def published_date=(value)
                @published_date = value
            end
            ## 
            ## Gets the publisher property value. Publication or publisher for the publication.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. Publication or publisher for the publication.
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_value("publishedDate", @published_date)
                writer.write_string_value("publisher", @publisher)
                writer.write_string_value("thumbnailUrl", @thumbnail_url)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the thumbnailUrl property value. URL referencing a thumbnail of the publication.
            ## @return a string
            ## 
            def thumbnail_url
                return @thumbnail_url
            end
            ## 
            ## Sets the thumbnailUrl property value. URL referencing a thumbnail of the publication.
            ## @param value Value to set for the thumbnail_url property.
            ## @return a void
            ## 
            def thumbnail_url=(value)
                @thumbnail_url = value
            end
            ## 
            ## Gets the webUrl property value. URL referencing the publication.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. URL referencing the publication.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
