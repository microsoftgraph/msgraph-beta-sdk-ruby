require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PersonWebsite < MicrosoftGraphBeta::Models::ItemFacet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains categories a user has associated with the website (for example, personal, recipes).
            @categories
            ## 
            # Contains a description of the website.
            @description
            ## 
            # Contains a friendly name for the website.
            @display_name
            ## 
            # The thumbnailUrl property
            @thumbnail_url
            ## 
            # Contains a link to the website itself.
            @web_url
            ## 
            ## Gets the categories property value. Contains categories a user has associated with the website (for example, personal, recipes).
            ## @return a string
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. Contains categories a user has associated with the website (for example, personal, recipes).
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Instantiates a new PersonWebsite and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.personWebsite"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a person_website
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PersonWebsite.new
            end
            ## 
            ## Gets the description property value. Contains a description of the website.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Contains a description of the website.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Contains a friendly name for the website.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Contains a friendly name for the website.
            ## @param value Value to set for the displayName property.
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
                    "categories" => lambda {|n| @categories = n.get_collection_of_primitive_values(String) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "thumbnailUrl" => lambda {|n| @thumbnail_url = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
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
                writer.write_collection_of_primitive_values("categories", @categories)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("thumbnailUrl", @thumbnail_url)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the thumbnailUrl property value. The thumbnailUrl property
            ## @return a string
            ## 
            def thumbnail_url
                return @thumbnail_url
            end
            ## 
            ## Sets the thumbnailUrl property value. The thumbnailUrl property
            ## @param value Value to set for the thumbnailUrl property.
            ## @return a void
            ## 
            def thumbnail_url=(value)
                @thumbnail_url = value
            end
            ## 
            ## Gets the webUrl property value. Contains a link to the website itself.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. Contains a link to the website itself.
            ## @param value Value to set for the webUrl property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
