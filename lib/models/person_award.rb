require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PersonAward < MicrosoftGraphBeta::Models::ItemFacet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Descpription of the award or honor.
            @description
            ## 
            # Name of the award or honor.
            @display_name
            ## 
            # The date that the award or honor was granted.
            @issued_date
            ## 
            # Authority which granted the award or honor.
            @issuing_authority
            ## 
            # URL referencing a thumbnail of the award or honor.
            @thumbnail_url
            ## 
            # URL referencing the award or honor.
            @web_url
            ## 
            ## Instantiates a new personAward and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.personAward"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a person_award
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PersonAward.new
            end
            ## 
            ## Gets the description property value. Descpription of the award or honor.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Descpription of the award or honor.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Name of the award or honor.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the award or honor.
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
                    "issuedDate" => lambda {|n| @issued_date = n.get_date_value() },
                    "issuingAuthority" => lambda {|n| @issuing_authority = n.get_string_value() },
                    "thumbnailUrl" => lambda {|n| @thumbnail_url = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the issuedDate property value. The date that the award or honor was granted.
            ## @return a date
            ## 
            def issued_date
                return @issued_date
            end
            ## 
            ## Sets the issuedDate property value. The date that the award or honor was granted.
            ## @param value Value to set for the issued_date property.
            ## @return a void
            ## 
            def issued_date=(value)
                @issued_date = value
            end
            ## 
            ## Gets the issuingAuthority property value. Authority which granted the award or honor.
            ## @return a string
            ## 
            def issuing_authority
                return @issuing_authority
            end
            ## 
            ## Sets the issuingAuthority property value. Authority which granted the award or honor.
            ## @param value Value to set for the issuing_authority property.
            ## @return a void
            ## 
            def issuing_authority=(value)
                @issuing_authority = value
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
                writer.write_date_value("issuedDate", @issued_date)
                writer.write_string_value("issuingAuthority", @issuing_authority)
                writer.write_string_value("thumbnailUrl", @thumbnail_url)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the thumbnailUrl property value. URL referencing a thumbnail of the award or honor.
            ## @return a string
            ## 
            def thumbnail_url
                return @thumbnail_url
            end
            ## 
            ## Sets the thumbnailUrl property value. URL referencing a thumbnail of the award or honor.
            ## @param value Value to set for the thumbnail_url property.
            ## @return a void
            ## 
            def thumbnail_url=(value)
                @thumbnail_url = value
            end
            ## 
            ## Gets the webUrl property value. URL referencing the award or honor.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. URL referencing the award or honor.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
